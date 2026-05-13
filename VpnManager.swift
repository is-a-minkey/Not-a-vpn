// VpnManager.swift
// App target — orchestrates NEVPNManager / NETunnelProviderManager for both protocols.

import Foundation
import NetworkExtension
import Combine
import WireGuardKit

// MARK: - State

enum VpnConnectionState {
    case disconnected
    case connecting
    case connected(protocol: String, server: String)
    case error(String)
}

// MARK: - Manager

@MainActor
final class VpnManager: ObservableObject {

    static let shared = VpnManager()

    @Published var state: VpnConnectionState = .disconnected
    @Published var selectedProtocol: ProtocolOption = .wireGuard

    private var tunnelManager: NETunnelProviderManager?
    private var observation:   NSKeyValueObservation?

    enum ProtocolOption { case wireGuard, ikeV2 }

    // ── Lifecycle ──────────────────────────────────────────────────────────

    func loadOrCreate() async throws {
        let managers = try await NETunnelProviderManager.loadAllFromPreferences()
        tunnelManager = managers.first ?? NETunnelProviderManager()
        observeStatus()
    }

    // ── Connect ────────────────────────────────────────────────────────────

    func connect(wgConfig: String? = nil, ikeCredentials: IkeCredentials? = nil) async throws {
        guard let manager = tunnelManager else {
            throw VpnError.notLoaded
        }

        switch selectedProtocol {
        case .wireGuard:
            guard let conf = wgConfig else { throw VpnError.missingConfig }
            try await configureWireGuard(manager: manager, wgConfigString: conf)
        case .ikeV2:
            guard let creds = ikeCredentials else { throw VpnError.missingConfig }
            try await configureIkeV2(manager: manager, creds: creds)
        }

        state = .connecting
        try manager.connection.startVPNTunnel()
    }

    func disconnect() {
        tunnelManager?.connection.stopVPNTunnel()
    }

    // ── WireGuard config ────────────────────────────────────────────────────

    private func configureWireGuard(
        manager:        NETunnelProviderManager,
        wgConfigString: String
    ) async throws {
        let proto = NETunnelProviderProtocol()
        proto.providerBundleIdentifier = "com.vpnapp.tunnel"    // Extension bundle ID
        proto.serverAddress            = extractEndpoint(from: wgConfigString) ?? "VPNBook"
        proto.providerConfiguration    = [
            "protocol": "WireGuard",
            "wgConfig": wgConfigString
        ]

        manager.protocolConfiguration          = proto
        manager.localizedDescription           = "VPNApp (WireGuard)"
        manager.isEnabled                      = true
        manager.isOnDemandEnabled              = UserDefaults.standard.bool(forKey: "autoConnect")

        // On-demand rules — connect on any WiFi/cellular when not already connected
        let wifiRule      = NEOnDemandRuleConnect()
        wifiRule.interfaceTypeMatch = .wiFi
        let cellRule      = NEOnDemandRuleConnect()
        cellRule.interfaceTypeMatch = .cellular
        manager.onDemandRules = [wifiRule, cellRule]

        try await manager.saveToPreferences()
        try await manager.loadFromPreferences()
    }

    // ── IKEv2 config ────────────────────────────────────────────────────────

    private func configureIkeV2(
        manager: NETunnelProviderManager,
        creds:   IkeCredentials
    ) async throws {
        let proto                  = NEVPNProtocolIKEv2()
        proto.serverAddress        = creds.server
        proto.remoteIdentifier     = creds.server
        proto.authenticationMethod = .none
        proto.username             = creds.username
        proto.passwordReference    = try saveToKeychain(password: creds.password,
                                                        account: "vpnapp.ikev2.password")
        proto.useExtendedAuthentication = true
        proto.disconnectOnSleep         = false

        // IKEv2 security parameters (modern defaults)
        proto.ikeSecurityAssociationParameters.encryptionAlgorithm  = .algorithmAES256GCM
        proto.ikeSecurityAssociationParameters.integrityAlgorithm   = .SHA256
        proto.ikeSecurityAssociationParameters.diffieHellmanGroup    = .group20
        proto.childSecurityAssociationParameters.encryptionAlgorithm = .algorithmAES256GCM
        proto.childSecurityAssociationParameters.integrityAlgorithm  = .SHA256
        proto.childSecurityAssociationParameters.diffieHellmanGroup  = .group20

        manager.protocolConfiguration = proto
        manager.localizedDescription  = "VPNApp (IKEv2)"
        manager.isEnabled             = true

        try await manager.saveToPreferences()
        try await manager.loadFromPreferences()
    }

    // ── Status observation ──────────────────────────────────────────────────

    private func observeStatus() {
        observation = tunnelManager?.connection.observe(\.status, options: [.new]) {
            [weak self] conn, _ in
            Task { @MainActor [weak self] in
                self?.handleStatusChange(conn.status)
            }
        }
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(vpnStatusChanged),
            name: .NEVPNStatusDidChange,
            object: nil
        )
    }

    @objc private func vpnStatusChanged(_ n: Notification) {
        guard let conn = n.object as? NEVPNConnection else { return }
        handleStatusChange(conn.status)
    }

    private func handleStatusChange(_ status: NEVPNStatus) {
        switch status {
        case .connected:
            let proto  = selectedProtocol == .wireGuard ? "WireGuard ⚡" : "IKEv2 🔒"
            let server = (tunnelManager?.protocolConfiguration as? NETunnelProviderProtocol)?
                             .serverAddress ?? "Unknown"
            state = .connected(protocol: proto, server: server)
        case .connecting, .reasserting:
            state = .connecting
        case .disconnected:
            state = .disconnected
        case .disconnecting:
            break
        case .invalid:
            state = .error("Invalid VPN configuration")
        @unknown default:
            break
        }
    }

    // ── Helpers ────────────────────────────────────────────────────────────

    private func extractEndpoint(from conf: String) -> String? {
        conf.components(separatedBy: "\n")
            .first { $0.hasPrefix("Endpoint") }
            .flatMap { $0.components(separatedBy: "=").last?.trimmingCharacters(in: .whitespaces) }
            .map { $0.components(separatedBy: ":").dropLast().joined(separator: ":") }
    }

    private func saveToKeychain(password: String, account: String) throws -> Data {
        let data = Data(password.utf8)
        let query: [CFString: Any] = [
            kSecClass:            kSecClassGenericPassword,
            kSecAttrAccount:      account,
            kSecAttrAccessible:   kSecAttrAccessibleAfterFirstUnlock,
            kSecValueData:        data,
            kSecReturnPersistentRef: true
        ]
        SecItemDelete(query as CFDictionary)
        var ref: AnyObject?
        let status = SecItemAdd(query as CFDictionary, &ref)
        guard status == errSecSuccess, let persistRef = ref as? Data else {
            throw VpnError.keychainFailure
        }
        return persistRef
    }
}

// MARK: - Supporting Types

struct IkeCredentials {
    let server:   String
    let username: String
    let password: String
}

enum VpnError: LocalizedError {
    case notLoaded, missingConfig, keychainFailure

    var errorDescription: String? {
        switch self {
        case .notLoaded:        return "VPN manager not loaded"
        case .missingConfig:    return "Configuration is missing"
        case .keychainFailure:  return "Could not save credentials to Keychain"
        }
    }
}
