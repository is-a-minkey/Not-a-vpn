# not- a-vpn

A VPN client for Android (package `com.vpnapp`) supporting three tunnel
backends side by side: **WireGuard**, **SSH tunneling**, and **PPTP**
(legacy). Server discovery is done by scraping free credentials/configs from
VPNBook at runtime. This repo holds the app's real source in smali form,
decompiled and fixed from the original release APK — not a from-scratch
rewrite.

> This replaces an earlier, unrelated Kotlin/Swift scaffold that used to live
> in this repo under the same name. That project shared this app's general
> purpose (scrape VPNBook, tunnel over WireGuard) but not its codebase.

---

## Why smali, not Kotlin/Java source

The original app's real source was never available — only the compiled
release APK. This repo contains the output of decompiling that APK with
[apktool](https://github.com/iBotPeaches/Apktool), with two verified bug
fixes applied directly to the smali (see below). Smali is textual, near
lossless Dalvik bytecode — it's what apktool actually edits under the hood,
and it's the form that reliably reassembles back into a working APK.

A Java-pseudocode decompile was also attempted early on (via `androguard`)
for readability, but it turned out to contain real reconstruction errors —
it missed an entire working feature (the WireGuard config file-import flow)
and misrepresented a method's control flow as broken when the real smali
showed it was correct. Given that, smali is the form kept here as ground
truth; treat any future Java reconstruction as a reading aid, not a source
of truth, unless it's cross-checked against this.

## Repo layout

```
app/
├── AndroidManifest.xml   Decoded manifest — permissions, activities, services
├── apktool.yml           apktool project metadata (SDK levels, compression, etc.)
├── smali/                Full Dalvik bytecode-as-text, apktool's actual edit target
├── res/                  Resources (layouts, drawables, values)
└── lib/                  Bundled native libraries (WireGuard's libwg-go.so, arm64-v8a + x86_64)
```

To rebuild an installable APK from this tree:

```bash
java -jar apktool.jar b app/ -o rebuilt.apk
# then sign it - a debug-signed rebuild won't cleanly update over
# an existing install signed with a different key
java -jar uber-apk-signer.jar -a rebuilt.apk --ks your-release-key.jks \
  --ksAlias your-alias --ksPass ... --ksKeyPass ... -o out/
```

## Architecture

Three tunnel backends, selected at runtime by `VpnTunnelService`:

- **WireGuard** (`com.vpnapp.WireGuardService`, `com.wireguard.android.backend.GoBackend`)
  — wraps the bundled `libwg-go.so` native library.
- **SSH** (`com.vpnapp.SshTunnelManager`) — full JSch SSH client, vendored under `com/jcraft/jsch`.
- **PPTP** (`com.vpnapp.PptpControlChannel`, `PptpMtpdManager`) — legacy fallback.

Server/config discovery: `VpnBookScraper` and `WireGuardScraper` scrape
`vpnbook.com` HTML for free credentials and `.conf` files at runtime.
`WireGuardUpdater` checks `api.github.com` (unauthenticated) for newer
WireGuard releases.

WireGuard configs can also come from the user directly — the "+ Add
WireGuard" button opens Android's file picker
(`MainActivity.pickWireGuardConfig()`), reads the selected `.conf`
(`handleWgFileResult()`), and connects with it
(`connectWithPendingWgConf()` → `VpnTunnelService.connectWireGuard()`) —
same code path as a scraped config.

## Fixes applied in this source (vs. the original release APK)

### 1. Traffic wasn't actually routing through the WireGuard tunnel

**`app/smali/com/vpnapp/VpnTunnelService.smali`**, inside `connect()`.

Before building the real WireGuard tunnel, the original code created a
throwaway `VpnService.Builder`, called `establish()`, and immediately
`close()`d it — apparently meant as a permission pre-check, though the real
`establish()` a few lines later already handles a denied/null result on its
own. The problem: `establish()` installs OS-level routing for the VPN
interface, and `close()` doesn't synchronously tear that down. The very
next line opened a *second* real `VpnService.Builder` and called
`establish()` again. On some Android versions/OEMs, that second call can
return a valid handle whose routes were never actually committed — the
socket-level WireGuard handshake still completes normally (it's protected
via `vpnService.protect()`, which bypasses the tunnel for that one socket),
so the app shows "connected" with a working handshake, but general traffic
doesn't route through the tunnel.

**Fix:** removed the throwaway probe entirely. The real
`WireGuardService.connect()` is now the only `establish()` call in the
WireGuard path.

### 2. Silent fallback to an invalid key on rare devices

**`app/smali/com/wireguard/android/backend/GoBackend.smali`**,
`derivePublicKey()`.

This method's primary path — deriving an X25519 public key from a private
key via `KeyAgreement` against the curve's fixed basepoint (`u=9`) — was
already correct (verified independently against a real X25519 test vector
before touching anything). But if the device's JCA provider lacked XDH
support, it silently fell back to returning `SHA-256(privateKey)` as the
"public key," which is not a valid X25519 public key and would produce a
keypair that can never complete a handshake. Changed to throw a clear
`RuntimeException` instead of silently returning a broken key. Only affects
the "auto-generate a new keypair" path, not importing an existing config.

## Known non-issues (investigated, found correct)

- `derivePublicKey`'s primary derivation path — see above, initially
  misread from a lossy Java-pseudocode decompile.
- WireGuard config import — already fully implemented in the original app,
  just missed in the same lossy decompile (an entire inner class,
  `WgPickerClickListener`, wasn't reconstructed).

## Permissions

| Permission | Reason |
|---|---|
| `INTERNET` | Scrape VPNBook + tunnel traffic |
| `ACCESS_NETWORK_STATE` | Connectivity checks |
| `FOREGROUND_SERVICE` | Keep the tunnel service alive |
| `RECEIVE_BOOT_COMPLETED` | Auto-reconnect after reboot |
| `VIBRATE` | Connection state haptics |
| `QUERY_ALL_PACKAGES` | Per-app disallowed/split-tunnel list |
| `BIND_VPN_SERVICE` | Open the TUN interface |

`minSdkVersion` 24, `targetSdkVersion` 33.

## Known limitations (not yet fixed here)

- No `armeabi-v7a` native WireGuard library — only `arm64-v8a` and
  `x86_64` are bundled, so WireGuard mode won't load on 32-bit-only
  devices (SSH/PPTP modes are unaffected).
- Server discovery depends on scraping VPNBook's HTML, which breaks
  whenever they change their page layout.
- Unauthenticated GitHub API calls for the WireGuard update check are
  subject to a shared 60-requests/hour rate limit per IP.

## License

Unspecified — no `LICENSE` file is currently present in this repo.
