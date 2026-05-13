# VPNApp — WireGuard + PPTP Android & iOS VPN

A fully-featured, open-protocol VPN client that scrapes live credentials from
VPNBook and supports both **WireGuard** (default, high-performance) and **PPTP**
(legacy fallback), with an iOS companion extension.

---

## Architecture Overview

```
com.vpnapp/
├── scraper/              VpnBookScraper — PPTP credentials + WireGuard .conf files
├── wireguard/            WireGuardManager, WireGuardKeyStore (EncryptedSharedPrefs)
├── connection/           VpnConnectionManager, PptpVpnService, VpnPreferences
├── service/              VpnTunnelService (foreground, Always-on, battery-aware)
├── killswitch/           KillSwitchManager — blocks traffic on tunnel drop
├── monitor/              NetworkMonitor — ping, speed, data usage (2 s poll)
├── speedtest/            ServerSpeedTester — parallel TCP latency ranking
├── reconnect/            AutoReconnectManager — exponential back-off with jitter
├── battery/              BatteryOptimizer — pauses polling on screen-off / Doze
├── tile/                 VpnQuickTileService — Android Quick Settings tile
├── log/                  ConnectionLogger — circular 500-entry in-memory log
├── receiver/             BootReceiver — auto-connect after reboot
├── di/                   AppModule (Hilt SingletonComponent)
├── ui/
│   ├── MainActivity       Splash → Onboarding (first-run) → NavGraph
│   ├── OnboardingScreen   5-page HorizontalPager with animated dots
│   ├── Navigation         Bottom nav (5 tabs) + animated transitions
│   ├── MainViewModel / VpnScreen     Connect button, stats, protocol toggle
│   ├── ServerListScreen   Latency-ranked WireGuard + PPTP server lists
│   ├── ImportConfigScreen .conf file picker + paste parser + preview
│   ├── SettingsScreen     Kill switch, country, always-on deep-link, key regen
│   ├── LogViewerScreen    Filtered live log with copy + clear
│   └── SettingsViewModel / LogViewModel / ServerListViewModel / ImportViewModel
└── ios/
    ├── VpnTunnelProvider.swift   NEPacketTunnelProvider (WireGuard + IKEv2)
    └── VpnManager.swift          App-side NETunnelProviderManager + IKEv2 config
```

---

## Key Technical Decisions

| Concern | Choice | Reason |
|---|---|---|
| WireGuard backend | `wireguard-android` GoBackend | No root, pure Kotlin/Go JNI |
| Key storage | `EncryptedSharedPreferences` (AES-256-GCM) | Android Keystore-backed |
| DI | Hilt | Compile-time safe, lifecycle-aware |
| Prefs persistence | DataStore Preferences | Coroutine-friendly, no ANR risk |
| UI | Jetpack Compose + Material 3 | Declarative, state-driven |
| PPTP native binary | pppd + pptp bundled in `jniLibs/` | Android 12+ removed system PPTP |
| Kill switch | `ConnectivityManager.NetworkCallback` + `VpnService.Builder.setBlocking` | OS-level, no root |
| Stats polling | 2 s on screen-on, paused on screen-off | Battery-friendly |
| Reconnect | Truncated exponential back-off (base 2 s, cap 120 s, max 7 attempts) | Standard resilience pattern |

---

## Build Instructions

### Android

```bash
# 1. Clone and open in Android Studio Hedgehog (2023.1.1+)
git clone https://github.com/yourorg/vpnapp

# 2. Sync Gradle — all dependencies download automatically

# 3. Place native binaries (pppd + pptp) into:
#    app/src/main/jniLibs/arm64-v8a/libpppd.so
#    app/src/main/jniLibs/arm64-v8a/libpptp.so
#    (armeabi-v7a, x86_64 as needed)
#    Pre-built binaries: https://github.com/kfkefkef/android-ppp

# 4. Build
./gradlew assembleDebug
./gradlew assembleRelease    # requires keystore config in gradle.properties
```

### iOS

```bash
# 1. Open ios/VPNApp.xcworkspace in Xcode 15+
# 2. Add WireGuardKit via Swift Package Manager:
#    https://github.com/WireGuard/wireguard-apple  (tag 1.0.15-26)
# 3. Add the Network Extension entitlement to the extension target
# 4. Set CFBundleIdentifier for the extension:  com.vpnapp.tunnel
# 5. Build & run on a physical device (VPN requires real hardware)
```

---

## Permissions Required

| Permission | Reason |
|---|---|
| `BIND_VPN_SERVICE` | Open the TUN interface |
| `FOREGROUND_SERVICE` | Keep tunnel alive while app is backgrounded |
| `INTERNET` | Scrape VPNBook + tunnel traffic |
| `ACCESS_NETWORK_STATE` | Kill-switch network callback |
| `RECEIVE_BOOT_COMPLETED` | Auto-connect after reboot |

---

## Protocol Details

### WireGuard
- Cryptography: **ChaCha20-Poly1305** (data), **Curve25519** (key exchange), **BLAKE2s** (hash)
- Key generation: on-device Curve25519 via `com.wireguard.crypto.KeyPair`
- Config source: scraped `.conf` from VPNBook (private key replaced with device key)
- Keepalive: 25 s (NAT traversal)

### PPTP (Android only)
- Driven by bundled `pppd` + `pptp` native binaries via `VpnService`
- Credentials fetched live from VPNBook HTML scraper
- Fallback when WireGuard configs are unavailable or blocked

### IKEv2 (iOS only — PPTP equivalent)
- Uses `NEVPNProtocolIKEv2` with AES-256-GCM + SHA-256 + DH Group 20
- Credentials stored in iOS Keychain via persistent reference
- On-demand rules for auto-connect on WiFi + cellular

---

## Kill Switch

When enabled (default: **on**):
1. `VpnService.Builder.setBlocking(true)` — blocks TUN reads until packets arrive
2. `ConnectivityManager.NetworkCallback` — blocks non-VPN network binding on API 29+
3. On tunnel drop → `ConnectionState.Error` → banner shown + internet blocked
4. Traffic resumes only after successful reconnect

For full lockdown, enable **"Block connections without VPN"** in
`Settings → Network → VPN → VPNApp → Always-on VPN`.

---

## Battery Optimisation

- Stats polling runs every **2 seconds** while screen is on
- Polling is **paused** on `ACTION_SCREEN_OFF` and resumed on `ACTION_SCREEN_ON`
- WireGuard keepalive (25 s) maintains the tunnel with no userspace wake-lock
- `START_STICKY` ensures the service restarts without a wake-lock in Always-on mode

---

## Scraper Resilience

`VpnBookScraper` uses three strategies in order:
1. Direct `.conf` download links in page HTML
2. `.zip` bundles containing `.conf` files (extracted in-memory)
3. Inline `<pre>`/`<code>` blocks containing `[Interface]` + `[Peer]` sections

Scraped data is cached for **6 hours** to avoid redundant network requests.

---

## Licence

MIT — see `LICENSE`.
