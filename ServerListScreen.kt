package com.vpnapp.ui

import androidx.compose.animation.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.*
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.vpnapp.connection.VpnConnectionManager
import com.vpnapp.connection.VpnPreferences
import com.vpnapp.connection.VpnProtocol
import com.vpnapp.scraper.PptpCredentials
import com.vpnapp.scraper.VpnBookScraper
import com.vpnapp.scraper.WireGuardConfig
import com.vpnapp.speedtest.RankedServer
import com.vpnapp.speedtest.ServerSpeedTester
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import javax.inject.Inject

// ─────────────────────────────────────────────────────────────────────────────
//  ViewModel
// ─────────────────────────────────────────────────────────────────────────────

sealed class ServerListState {
    object Loading                                          : ServerListState()
    object Testing                                          : ServerListState()
    data class Ready(
        val wgServers:   List<RankedServer>,
        val pptpServers: List<PptpCredentials>
    )                                                       : ServerListState()
    data class Error(val message: String)                   : ServerListState()
}

@HiltViewModel
class ServerListViewModel @Inject constructor(
    private val scraper:           VpnBookScraper,
    private val speedTester:       ServerSpeedTester,
    private val connectionManager: VpnConnectionManager,
    private val prefs:             VpnPreferences
) : ViewModel() {

    private val _state = MutableStateFlow<ServerListState>(ServerListState.Loading)
    val state: StateFlow<ServerListState> = _state.asStateFlow()

    val activeProtocol get() = prefs.preferredProtocol

    init { load() }

    fun load() {
        viewModelScope.launch {
            _state.value = ServerListState.Loading
            runCatching {
                val data = scraper.scrapeAll().getOrThrow()
                _state.value = ServerListState.Testing

                val ranked = if (data.wireGuardConfigs.isNotEmpty()) {
                    speedTester.rankServers(data.wireGuardConfigs)
                } else emptyList()

                _state.value = ServerListState.Ready(
                    wgServers   = ranked,
                    pptpServers = data.pptpServers
                )
            }.onFailure { e ->
                _state.value = ServerListState.Error(e.message ?: "Failed to load servers")
            }
        }
    }

    fun connectToWireGuard(config: WireGuardConfig) {
        prefs.preferredProtocol = VpnProtocol.WIREGUARD
        connectionManager.connect()
    }

    fun connectToPptp(creds: PptpCredentials) {
        prefs.preferredProtocol = VpnProtocol.PPTP
        prefs.preferredCountry  = creds.country
        connectionManager.connect()
    }
}

// ─────────────────────────────────────────────────────────────────────────────
//  Screen
// ─────────────────────────────────────────────────────────────────────────────

@Composable
fun ServerListScreen(
    onNavigateBack: () -> Unit,
    viewModel: ServerListViewModel = hiltViewModel()
) {
    val state by viewModel.state.collectAsState()
    var selectedTab by remember { mutableStateOf(0) }   // 0=WireGuard, 1=PPTP

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color(0xFF080D1A))
    ) {
        // ── Top Bar ──────────────────────────────────────────────────────
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(Color(0xFF0A0F1E))
                .padding(horizontal = 16.dp, vertical = 10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            IconButton(onClick = onNavigateBack) {
                Icon(Icons.Default.ArrowBack, null, tint = Color.White)
            }
            Text(
                "VPN Servers",
                color = Color.White,
                fontWeight = FontWeight.SemiBold,
                fontSize = 17.sp,
                modifier = Modifier.weight(1f).padding(start = 4.dp)
            )
            IconButton(onClick = viewModel::load) {
                Icon(Icons.Default.Refresh, null, tint = Color(0xFF6B7280))
            }
        }

        // ── Protocol Tabs ─────────────────────────────────────────────────
        TabRow(
            selectedTabIndex = selectedTab,
            containerColor   = Color(0xFF0A0F1E),
            contentColor     = Color(0xFF00D4FF),
            indicator        = { tabPositions ->
                TabRowDefaults.Indicator(
                    modifier = Modifier.tabIndicatorOffset(tabPositions[selectedTab]),
                    color    = Color(0xFF00D4FF),
                    height   = 2.dp
                )
            }
        ) {
            Tab(
                selected = selectedTab == 0,
                onClick  = { selectedTab = 0 },
                text     = {
                    Text("⚡ WireGuard",
                        color = if (selectedTab == 0) Color(0xFF00D4FF) else Color(0xFF6B7280),
                        fontWeight = FontWeight.SemiBold, fontSize = 13.sp)
                }
            )
            Tab(
                selected = selectedTab == 1,
                onClick  = { selectedTab = 1 },
                text     = {
                    Text("🔒 PPTP",
                        color = if (selectedTab == 1) Color(0xFF00D4FF) else Color(0xFF6B7280),
                        fontWeight = FontWeight.SemiBold, fontSize = 13.sp)
                }
            )
        }

        // ── Content ───────────────────────────────────────────────────────
        when (val s = state) {
            is ServerListState.Loading -> ServerLoadingState("Fetching servers…")
            is ServerListState.Testing -> ServerLoadingState("Testing latency…")
            is ServerListState.Error   -> ServerErrorState(s.message) { viewModel.load() }
            is ServerListState.Ready   -> {
                if (selectedTab == 0) {
                    WireGuardServerList(s.wgServers) { viewModel.connectToWireGuard(it.config) }
                } else {
                    PptpServerList(s.pptpServers) { viewModel.connectToPptp(it) }
                }
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
//  WireGuard list
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun WireGuardServerList(
    servers:  List<RankedServer>,
    onSelect: (RankedServer) -> Unit
) {
    if (servers.isEmpty()) {
        EmptyState("No WireGuard servers found.\nTry refreshing.")
        return
    }
    LazyColumn(
        contentPadding      = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        itemsIndexed(servers, key = { _, s -> s.config.configName }) { index, server ->
            WireGuardServerCard(
                server   = server,
                rank     = index + 1,
                onSelect = { onSelect(server) }
            )
        }
    }
}

@Composable
private fun WireGuardServerCard(
    server:   RankedServer,
    rank:     Int,
    onSelect: () -> Unit
) {
    val latencyColor = when {
        !server.reachable          -> Color(0xFF6B7280)
        server.latencyMs < 80      -> Color(0xFF34D399)
        server.latencyMs < 200     -> Color(0xFFFBBF24)
        else                       -> Color(0xFFF87171)
    }
    val latencyText = if (server.reachable) "${server.latencyMs}ms" else "Offline"

    Card(
        modifier  = Modifier
            .fillMaxWidth()
            .clickable(enabled = server.reachable, onClick = onSelect),
        colors    = CardDefaults.cardColors(containerColor = Color(0xFF111928)),
        shape     = RoundedCornerShape(14.dp),
        border    = BorderStroke(1.dp, Color(0x18FFFFFF))
    ) {
        Row(
            modifier  = Modifier.padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            // Rank badge
            Box(
                contentAlignment = Alignment.Center,
                modifier = Modifier
                    .size(32.dp)
                    .clip(CircleShape)
                    .background(if (rank == 1) Color(0x3300D4FF) else Color(0x11FFFFFF))
            ) {
                Text(
                    "#$rank",
                    color      = if (rank == 1) Color(0xFF00D4FF) else Color(0xFF6B7280),
                    fontSize   = 11.sp,
                    fontWeight = FontWeight.Bold
                )
            }

            // Server info
            Column(modifier = Modifier.weight(1f)) {
                Row(
                    horizontalArrangement = Arrangement.spacedBy(6.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        countryFlag(server.config.country),
                        fontSize = 16.sp
                    )
                    Text(
                        server.config.country,
                        color = Color.White,
                        fontWeight = FontWeight.SemiBold,
                        fontSize = 14.sp
                    )
                }
                Text(
                    server.config.parsedPeer.endpoint,
                    color    = Color(0xFF6B7280),
                    fontSize = 11.sp,
                    maxLines = 1
                )
            }

            // Latency badge
            Surface(
                color  = latencyColor.copy(alpha = 0.15f),
                shape  = RoundedCornerShape(20.dp),
                border = BorderStroke(1.dp, latencyColor.copy(0.4f))
            ) {
                Text(
                    latencyText,
                    modifier   = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                    color      = latencyColor,
                    fontSize   = 11.sp,
                    fontWeight = FontWeight.Bold
                )
            }

            // Connect arrow
            Icon(
                Icons.Default.ChevronRight, null,
                tint = if (server.reachable) Color(0xFF4B5563) else Color(0xFF2D3748)
            )
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
//  PPTP list
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun PptpServerList(
    servers:  List<PptpCredentials>,
    onSelect: (PptpCredentials) -> Unit
) {
    if (servers.isEmpty()) {
        EmptyState("No PPTP servers found.\nTry refreshing.")
        return
    }
    LazyColumn(
        contentPadding      = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        items(servers, key = { it.server }) { creds ->
            PptpServerCard(creds = creds, onSelect = { onSelect(creds) })
        }
    }
}

@Composable
private fun PptpServerCard(creds: PptpCredentials, onSelect: () -> Unit) {
    Card(
        modifier = Modifier.fillMaxWidth().clickable(onClick = onSelect),
        colors   = CardDefaults.cardColors(containerColor = Color(0xFF111928)),
        shape    = RoundedCornerShape(14.dp),
        border   = BorderStroke(1.dp, Color(0x18FFFFFF))
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            Text(countryFlag(creds.country), fontSize = 26.sp)
            Column(modifier = Modifier.weight(1f)) {
                Text(creds.country, color = Color.White,
                    fontWeight = FontWeight.SemiBold, fontSize = 14.sp)
                Text(creds.server, color = Color(0xFF6B7280), fontSize = 11.sp)
            }
            Surface(
                color  = Color(0x118A8FA8),
                shape  = RoundedCornerShape(20.dp),
                border = BorderStroke(1.dp, Color(0x228A8FA8))
            ) {
                Text("PPTP",
                    modifier   = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                    color      = Color(0xFF8A8FA8),
                    fontSize   = 11.sp,
                    fontWeight = FontWeight.Bold)
            }
            Icon(Icons.Default.ChevronRight, null, tint = Color(0xFF4B5563))
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
//  Helper states
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun ServerLoadingState(message: String) {
    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            CircularProgressIndicator(color = Color(0xFF00D4FF))
            Spacer(Modifier.height(16.dp))
            Text(message, color = Color(0xFF6B7280), fontSize = 14.sp)
        }
    }
}

@Composable
private fun ServerErrorState(message: String, onRetry: () -> Unit) {
    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text("⚠️", fontSize = 32.sp)
            Spacer(Modifier.height(12.dp))
            Text(message, color = Color(0xFFF87171), fontSize = 14.sp)
            Spacer(Modifier.height(16.dp))
            Button(
                onClick = onRetry,
                colors  = ButtonDefaults.buttonColors(containerColor = Color(0xFF2563EB))
            ) { Text("Retry") }
        }
    }
}

@Composable
private fun EmptyState(message: String) {
    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Text(message, color = Color(0xFF4B5563), fontSize = 14.sp)
    }
}

private fun countryFlag(name: String) = when (name) {
    "United States" -> "🇺🇸"; "Germany" -> "🇩🇪"; "Canada" -> "🇨🇦"
    "France" -> "🇫🇷"; "Netherlands" -> "🇳🇱"; "Japan" -> "🇯🇵"
    "Australia" -> "🇦🇺"; "United Kingdom" -> "🇬🇧"; "Europe" -> "🇪🇺"
    else -> "🌍"
}

// Extension needed for Tab indicator
@Composable
private fun Modifier.tabIndicatorOffset(tabPosition: TabPosition): Modifier =
    this.fillMaxWidth()
        .wrapContentSize(Alignment.BottomStart)
        .offset(x = tabPosition.left)
        .width(tabPosition.width)
