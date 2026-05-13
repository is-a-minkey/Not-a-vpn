// VpnTunnelProvider.swift
// iOS counterpart — WireGuard (via wireguard-apple) + IKEv2 fallback
// (PPTP is unsupported on iOS 10+; IKEv2 is the closest supported legacy alternative)
//
// Add to your iOS extension target alongside WireGuardKit.

import NetworkExtension
import WireGuardKit
import os.log

// MARK: - Protocol selection

enum ActiveProtocol: String {
    case wireGuard = "WireGuard"
    case ikeV2     = "IKEv2"
}

// MARK: - Tunnel Provider

class VpnTunnelProvider: NEPacketTunnelProvider {

    // Resolved at start() from the NEVPNProtocol providerConfiguration dictionary
    private var activeProtocol: ActiveProtocol = .wireGuard
    private var wgAdapter: WireGuardAdapter?

    private let log = OSLog(subsystem: "com.vpnapp.tunnel", category: "Provider")

    // ── NEPacketTunnelProvider ────────────────────────────────────────────

    override func startTunnel(
        options: [String: NSObject]?,
        completionHandler: @escaping (Error?) -> Void
    ) {
        guard let config = (protocolConfiguration as? NETunnelProviderProtocol)?
                               .providerConfiguration else {
            completionHandler(TunnelError.missingConfiguration)
            return
        }

        let protocolRaw = config["protocol"] as? String ?? ActiveProtocol.wireGuard.rawValue
        activeProtocol  = ActiveProtocol(rawValue: protocolRaw) ?? .wireGuard

        os_log("Starting tunnel with protocol: %{public}@", log: log, type: .info,
               activeProtocol.rawValue)

        switch activeProtocol {
        case .wireGuard: startWireGuard(config: config, completion: completionHandler)
        case .ikeV2:     startIkeV2    (config: config, completion: completionHandler)
        }
    }

    override func stopTunnel(
        with reason: NEProviderStopReason,
        completionHandler: @escaping () -> Void
    ) {
        os_log("Stopping tunnel. Reason: %d", log: log, type: .info, reason.rawValue)
        wgAdapter?.stop { completionHandler() }
        wgAdapter = nil
    }

    override func handleAppMessage(_ messageData: Data, completionHandler: ((Data?) -> Void)?) {
        // Simple status ping from the app
        if let request = try? JSONDecoder().decode(TunnelMessage.self, from: messageData) {
            switch request.type {
            case "stats":
                let stats = collectStats()
                let data  = try? JSONEncoder().encode(stats)
                completionHandler?(data)
            default:
                completionHandler?(nil)
            }
        }
    }

    // ── WireGuard ─────────────────────────────────────────────────────────

    private func startWireGuard(
        config:     [String: Any],
        completion: @escaping (Error?) -> Void
    ) {
        guard let wgConfString = config["wgConfig"] as? String else {
            completion(TunnelError.missingWgConfig)
            return
        }

        // Inject device-generated private key (stored in Keychain by the app)
        let privateKey: String
        if let storedKey = KeychainHelper.loadPrivateKey() {
            privateKey = storedKey
        } else {
            // Generate a new Curve25519 key pair and persist it
            let kp = PrivateKey()
            KeychainHelper.savePrivateKey(kp.base64Key)
            privateKey = kp.base64Key
            os_log("Generated new WireGuard key pair. Public: %{public}@",
                   log: log, type: .info, kp.publicKey.base64Key)
        }

        // Replace the placeholder private key in the conf string
        let finalConf = wgConfString.replacingOccurrences(
            of:   #"PrivateKey\s*=.*"#,
            with: "PrivateKey = \(privateKey)",
            options: .regularExpression
        )

        guard let tunnelConfig = try? TunnelConfiguration(fromWgQuickConfig: finalConf,
                                                          called: "VPNApp-WG") else {
            completion(TunnelError.parseError)
            return
        }

        let adapter = WireGuardAdapter(with: self) { logLevel, message in
            os_log("%{public}@", log: self.log, type: .debug, message)
        }
        self.wgAdapter = adapter

        adapter.start(tunnelConfiguration: tunnelConfig) { [weak self] adapterError in
            if let err = adapterError {
                os_log("WireGuard start error: %{public}@", log: self?.log ?? .default,
                       type: .error, err.localizedDescription)
                completion(err)
            } else {
                os_log("WireGuard tunnel up", log: self?.log ?? .default, type: .info)
                self?.setTunnelNetworkSettings(from: tunnelConfig, completion: completion)
            }
        }
    }

    // Configure NEPacketTunnelNetworkSettings from the parsed WireGuard config
    private func setTunnelNetworkSettings(
        from config:   TunnelConfiguration,
        completion:    @escaping (Error?) -> Void
    ) {
        let iface      = config.interface
        let settings   = NEPacketTunnelNetworkSettings(tunnelRemoteAddress: "0.0.0.0")

        // IPv4
        let ipv4Addrs  = iface.addresses.filter { $0.address is IPv4Address }
        if !ipv4Addrs.isEmpty {
            settings.ipv4Settings = NEIPv4Settings(
                addresses:    ipv4Addrs.map { "\($0.address)" },
                subnetMasks:  ipv4Addrs.map { subnetMask(for: $0.networkPrefixLength) }
            )
            settings.ipv4Settings?.includedRoutes = [NEIPv4Route.default()]
        }

        // DNS
        settings.dnsSettings = NEDNSSettings(servers: iface.dns.map { "\($0)" })

        // MTU
        settings.mtu = NSNumber(value: iface.mtu ?? 1420)

        setTunnelNetworkSettings(settings) { error in
            completion(error)
        }
    }

    // ── IKEv2 (iOS fallback for PPTP networks) ────────────────────────────

    private func startIkeV2(
        config:     [String: Any],
        completion: @escaping (Error?) -> Void
    ) {
        // IKEv2 on iOS uses NEVPNManager — the tunnel extension just signals
        // back to the app so it can configure NEVPNManager directly.
        // This pattern avoids duplicating IKEv2 credential handling in the extension.
        os_log("IKEv2 delegation to NEVPNManager", log: log, type: .info)

        // Signal the app process to configure NEVPNManager for IKEv2
        let msg = TunnelMessage(type: "start_ikev2", payload: config)
        if let data = try? JSONEncoder().encode(msg) {
            // Extension → app IPC via notifyApp (custom Darwin notification)
            CFNotificationCenterPostNotification(
                CFNotificationCenterGetDarwinNotifyCenter(),
                CFNotificationName("com.vpnapp.start_ikev2" as CFString),
                nil, nil, true
            )
        }
        completion(nil)
    }

    // ── Stats ──────────────────────────────────────────────────────────────

    private func collectStats() -> TunnelStats {
        var rx: UInt64 = 0; var tx: UInt64 = 0
        wgAdapter?.getRuntimeConfiguration { config in
            if let conf = config {
                // Parse rx/tx from WireGuard runtime config string
                for line in conf.components(separatedBy: "\n") {
                    if line.hasPrefix("rx_bytes="), let v = UInt64(line.dropFirst(9)) { rx = v }
                    if line.hasPrefix("tx_bytes="), let v = UInt64(line.dropFirst(9)) { tx = v }
                }
            }
        }
        return TunnelStats(rxBytes: rx, txBytes: tx, protocol: activeProtocol.rawValue)
    }

    // ── Helpers ────────────────────────────────────────────────────────────

    private func subnetMask(for prefixLen: UInt8) -> String {
        let mask: UInt32 = prefixLen > 0 ? ~UInt32(0) << (32 - prefixLen) : 0
        return [24, 16, 8, 0].map { String((mask >> $0) & 0xFF) }.joined(separator: ".")
    }
}

// MARK: - Supporting Types

struct TunnelMessage: Codable {
    let type:    String
    let payload: [String: String]?
    init(type: String, payload: [String: Any]? = nil) {
        self.type    = type
        self.payload = payload?.compactMapValues { "\($0)" }
    }
}

struct TunnelStats: Codable {
    let rxBytes:  UInt64
    let txBytes:  UInt64
    let `protocol`: String
}

enum TunnelError: LocalizedError {
    case missingConfiguration
    case missingWgConfig
    case parseError

    var errorDescription: String? {
        switch self {
        case .missingConfiguration: return "Missing provider configuration"
        case .missingWgConfig:      return "Missing WireGuard config string"
        case .parseError:           return "Failed to parse WireGuard config"
        }
    }
}

// MARK: - Keychain Helper (extension target scope)

private struct KeychainHelper {
    private static let key = "com.vpnapp.wg.privatekey"

    static func savePrivateKey(_ base64: String) {
        let data = Data(base64.utf8)
        let query: [CFString: Any] = [
            kSecClass:       kSecClassGenericPassword,
            kSecAttrAccount: key,
            kSecValueData:   data
        ]
        SecItemDelete(query as CFDictionary)
        SecItemAdd(query as CFDictionary, nil)
    }

    static func loadPrivateKey() -> String? {
        let query: [CFString: Any] = [
            kSecClass:            kSecClassGenericPassword,
            kSecAttrAccount:      key,
            kSecReturnData:       true,
            kSecMatchLimit:       kSecMatchLimitOne
        ]
        var result: AnyObject?
        guard SecItemCopyMatching(query as CFDictionary, &result) == errSecSuccess,
              let data = result as? Data else { return nil }
        return String(data: data, encoding: .utf8)
    }
}
