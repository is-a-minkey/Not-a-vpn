package com.vpnapp.scraper

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import org.jsoup.Jsoup
import java.util.concurrent.TimeUnit
import java.util.zip.ZipInputStream
import javax.inject.Inject
import javax.inject.Singleton

data class PptpCredentials(
    val server: String,
    val username: String,
    val password: String,
    val country: String
)

data class WireGuardConfig(
    val configName: String,
    val country: String,
    val rawConfig: String,
    val parsedInterface: WgInterface,
    val parsedPeer: WgPeer
)

data class WgInterface(
    val privateKey: String,   // Will be replaced with device-generated key
    val address: String,
    val dns: String
)

data class WgPeer(
    val publicKey: String,
    val endpoint: String,
    val allowedIPs: String,
    val persistentKeepalive: Int = 25
)

data class ScrapedVpnData(
    val pptpServers: List<PptpCredentials>,
    val wireGuardConfigs: List<WireGuardConfig>,
    val scrapedAt: Long = System.currentTimeMillis()
)

@Singleton
class VpnBookScraper @Inject constructor() {

    private val BASE_URL = "https://www.vpnbook.com"
    private val PPTP_URL = "$BASE_URL/freevpn"
    private val WIREGUARD_URL = "$BASE_URL/freevpn#wireguard-vpn-tab"

    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .followRedirects(true)
        .build()

    /**
     * Main entry point — scrapes both PPTP credentials and WireGuard configs.
     */
    suspend fun scrapeAll(): Result<ScrapedVpnData> = withContext(Dispatchers.IO) {
        runCatching {
            val html = fetchPage(PPTP_URL)
            val doc = Jsoup.parse(html)

            val pptp = parsePptpCredentials(doc)
            val wg = scrapeWireGuardConfigs(doc)

            ScrapedVpnData(
                pptpServers = pptp,
                wireGuardConfigs = wg
            )
        }
    }

    // ─────────────────────────────────────────────────────────
    //  PPTP Parsing
    // ─────────────────────────────────────────────────────────

    private fun parsePptpCredentials(doc: org.jsoup.nodes.Document): List<PptpCredentials> {
        val results = mutableListOf<PptpCredentials>()

        // VPNBook exposes credentials in a table with labels "Username" / "Password"
        val credBlock = doc.select("div#free-pptp-vpn, div.vpnbook-credentials").firstOrNull()
            ?: doc.select("div.col-md-6").firstOrNull { it.text().contains("Username") }

        val username = credBlock
            ?.select("td:contains(Username) + td, span.username")
            ?.firstOrNull()?.text()?.trim() ?: ""

        val password = credBlock
            ?.select("td:contains(Password) + td, span.password")
            ?.firstOrNull()?.text()?.trim() ?: ""

        // Server list — typically listed as USXX.vpnbook.com etc.
        val serverPattern = Regex("""([a-z]{2}\d{1,3}\.vpnbook\.com)""", RegexOption.IGNORE_CASE)
        val bodyText = doc.body().text()
        val servers = serverPattern.findAll(bodyText).map { it.value }.distinct().toList()

        // Country inference from server prefix
        servers.forEach { server ->
            val countryCode = server.take(2).uppercase()
            results.add(
                PptpCredentials(
                    server = server,
                    username = username,
                    password = password,
                    country = countryCodeToName(countryCode)
                )
            )
        }

        // Fallback: known VPNBook PPTP servers
        if (results.isEmpty()) {
            listOf("us1.vpnbook.com", "us2.vpnbook.com", "euro1.vpnbook.com",
                "euro2.vpnbook.com", "ca198.vpnbook.com", "de233.vpnbook.com")
                .forEach { server ->
                    results.add(PptpCredentials(server, username, password,
                        guessCountryFromServer(server)))
                }
        }

        return results
    }

    // ─────────────────────────────────────────────────────────
    //  WireGuard Scraping
    // ─────────────────────────────────────────────────────────

    private suspend fun scrapeWireGuardConfigs(
        doc: org.jsoup.nodes.Document
    ): List<WireGuardConfig> = withContext(Dispatchers.IO) {
        val configs = mutableListOf<WireGuardConfig>()

        // Strategy 1: Look for direct .conf download links
        val confLinks = doc.select("a[href$=.conf], a[href*=wireguard], a[href*=WireGuard]")
        for (link in confLinks) {
            val href = link.absUrl("href").ifEmpty { BASE_URL + link.attr("href") }
            try {
                val raw = fetchRaw(href)
                val parsed = parseWgConf(raw) ?: continue
                val country = guessCountryFromUrl(href)
                configs.add(
                    WireGuardConfig(
                        configName = link.text().ifEmpty { href.substringAfterLast("/") },
                        country = country,
                        rawConfig = raw,
                        parsedInterface = parsed.first,
                        parsedPeer = parsed.second
                    )
                )
            } catch (_: Exception) { /* skip broken links */ }
        }

        // Strategy 2: Look for .zip bundles containing .conf files
        val zipLinks = doc.select("a[href$=.zip]")
            .filter { it.attr("href").contains("wireguard", ignoreCase = true) }
        for (link in zipLinks) {
            val href = link.absUrl("href").ifEmpty { BASE_URL + link.attr("href") }
            try {
                val zipBytes = fetchBytes(href)
                configs += extractConfsFromZip(zipBytes)
            } catch (_: Exception) { /* skip */ }
        }

        // Strategy 3: Inline config blocks in <pre> or <code> tags
        val preTags = doc.select("pre, code, textarea")
        for (pre in preTags) {
            val text = pre.text()
            if (text.contains("[Interface]") && text.contains("[Peer]")) {
                val parsed = parseWgConf(text) ?: continue
                val idx = configs.size + 1
                configs.add(
                    WireGuardConfig(
                        configName = "VPNBook-WG-$idx",
                        country = "Unknown",
                        rawConfig = text,
                        parsedInterface = parsed.first,
                        parsedPeer = parsed.second
                    )
                )
            }
        }

        configs
    }

    private fun extractConfsFromZip(bytes: ByteArray): List<WireGuardConfig> {
        val results = mutableListOf<WireGuardConfig>()
        ZipInputStream(bytes.inputStream()).use { zis ->
            var entry = zis.nextEntry
            while (entry != null) {
                if (entry.name.endsWith(".conf")) {
                    val raw = zis.readBytes().toString(Charsets.UTF_8)
                    val parsed = parseWgConf(raw)
                    if (parsed != null) {
                        results.add(
                            WireGuardConfig(
                                configName = entry.name.substringAfterLast("/"),
                                country = guessCountryFromUrl(entry.name),
                                rawConfig = raw,
                                parsedInterface = parsed.first,
                                parsedPeer = parsed.second
                            )
                        )
                    }
                }
                entry = zis.nextEntry
            }
        }
        return results
    }

    // ─────────────────────────────────────────────────────────
    //  .conf Parser
    // ─────────────────────────────────────────────────────────

    /**
     * Parses a standard WireGuard .conf file format:
     *
     * [Interface]
     * PrivateKey = ...
     * Address    = ...
     * DNS        = ...
     *
     * [Peer]
     * PublicKey           = ...
     * Endpoint            = ...
     * AllowedIPs          = ...
     * PersistentKeepalive = 25
     */
    fun parseWgConf(raw: String): Pair<WgInterface, WgPeer>? {
        val lines = raw.lines().map { it.trim() }.filter { it.isNotBlank() }
        val sectionMap = mutableMapOf<String, MutableMap<String, String>>()
        var currentSection = ""

        for (line in lines) {
            when {
                line.startsWith("[") -> {
                    currentSection = line.removeSurrounding("[", "]").trim()
                    sectionMap.getOrPut(currentSection) { mutableMapOf() }
                }
                line.contains("=") && currentSection.isNotEmpty() -> {
                    val (key, value) = line.split("=", limit = 2)
                    sectionMap[currentSection]!![key.trim()] = value.trim()
                }
            }
        }

        val iface = sectionMap["Interface"] ?: return null
        val peer  = sectionMap["Peer"]      ?: return null

        return Pair(
            WgInterface(
                privateKey = iface["PrivateKey"] ?: "",
                address    = iface["Address"]    ?: "10.8.0.2/32",
                dns        = iface["DNS"]         ?: "1.1.1.1"
            ),
            WgPeer(
                publicKey           = peer["PublicKey"]           ?: return null,
                endpoint            = peer["Endpoint"]            ?: return null,
                allowedIPs          = peer["AllowedIPs"]          ?: "0.0.0.0/0, ::/0",
                persistentKeepalive = peer["PersistentKeepalive"]?.toIntOrNull() ?: 25
            )
        )
    }

    // ─────────────────────────────────────────────────────────
    //  HTTP Helpers
    // ─────────────────────────────────────────────────────────

    private fun fetchPage(url: String): String {
        val req = Request.Builder().url(url)
            .header("User-Agent", "Mozilla/5.0 (Android 14; Mobile)")
            .build()
        return client.newCall(req).execute().use { it.body!!.string() }
    }

    private fun fetchRaw(url: String): String = fetchPage(url)

    private fun fetchBytes(url: String): ByteArray {
        val req = Request.Builder().url(url)
            .header("User-Agent", "Mozilla/5.0 (Android 14; Mobile)")
            .build()
        return client.newCall(req).execute().use { it.body!!.bytes() }
    }

    // ─────────────────────────────────────────────────────────
    //  Utility
    // ─────────────────────────────────────────────────────────

    private fun countryCodeToName(code: String) = when (code.uppercase()) {
        "US" -> "United States"
        "DE" -> "Germany"
        "CA" -> "Canada"
        "FR" -> "France"
        "GB" -> "United Kingdom"
        "JP" -> "Japan"
        "AU" -> "Australia"
        "NL" -> "Netherlands"
        else -> code
    }

    private fun guessCountryFromServer(server: String) = when {
        server.startsWith("us",   ignoreCase = true) -> "United States"
        server.startsWith("euro", ignoreCase = true) -> "Europe"
        server.startsWith("ca",   ignoreCase = true) -> "Canada"
        server.startsWith("de",   ignoreCase = true) -> "Germany"
        server.startsWith("fr",   ignoreCase = true) -> "France"
        else -> "Unknown"
    }

    private fun guessCountryFromUrl(url: String) = when {
        url.contains("us",      ignoreCase = true) -> "United States"
        url.contains("de",      ignoreCase = true) -> "Germany"
        url.contains("ca",      ignoreCase = true) -> "Canada"
        url.contains("europe",  ignoreCase = true) -> "Europe"
        url.contains("fr",      ignoreCase = true) -> "France"
        else -> "Unknown"
    }
}
