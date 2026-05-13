package com.vpnapp.tile

import android.app.PendingIntent
import android.content.ComponentName
import android.content.Intent
import android.os.Build
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import androidx.annotation.RequiresApi
import com.vpnapp.R
import com.vpnapp.connection.ConnectionState
import com.vpnapp.connection.VpnConnectionManager
import com.vpnapp.connection.VpnProtocol
import com.vpnapp.service.VpnTunnelService
import com.vpnapp.ui.MainActivity
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.collect
import javax.inject.Inject

/**
 * Quick Settings tile — shows current protocol and connection status.
 * Tapping the tile toggles the VPN connection without opening the app.
 *
 * Registration in AndroidManifest.xml:
 * <service
 *     android:name=".tile.VpnQuickTileService"
 *     android:exported="true"
 *     android:icon="@drawable/ic_vpn_key"
 *     android:label="VPNApp"
 *     android:permission="android.permission.BIND_QUICK_SETTINGS_TILE">
 *     <intent-filter>
 *         <action android:name="android.service.quicksettings.action.QS_TILE" />
 *     </intent-filter>
 * </service>
 */
@RequiresApi(Build.VERSION_CODES.N)
@AndroidEntryPoint
class VpnQuickTileService : TileService() {

    @Inject lateinit var connectionManager: VpnConnectionManager

    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
    private var observeJob: Job? = null

    // ─────────────────────────────────────────────────────────────────────
    //  Tile lifecycle
    // ─────────────────────────────────────────────────────────────────────

    override fun onStartListening() {
        super.onStartListening()
        observeJob = scope.launch {
            connectionManager.connectionState.collect { state ->
                updateTile(state)
            }
        }
    }

    override fun onStopListening() {
        observeJob?.cancel()
        observeJob = null
        super.onStopListening()
    }

    override fun onTileAdded() {
        super.onTileAdded()
        updateTile(connectionManager.connectionState.value)
    }

    // ─────────────────────────────────────────────────────────────────────
    //  Tap handler
    // ─────────────────────────────────────────────────────────────────────

    override fun onClick() {
        super.onClick()

        // If locked, unlock before acting
        if (isLocked && Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
                // Android 14+: use startActivityAndCollapse with PendingIntent
                val pi = PendingIntent.getActivity(
                    this, 0,
                    Intent(this, MainActivity::class.java).apply {
                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                    },
                    PendingIntent.FLAG_IMMUTABLE
                )
                startActivityAndCollapse(pi)
            } else {
                @Suppress("DEPRECATION")
                unlockAndRun { toggleConnection() }
            }
            return
        }

        toggleConnection()
    }

    // ─────────────────────────────────────────────────────────────────────
    //  Toggle
    // ─────────────────────────────────────────────────────────────────────

    private fun toggleConnection() {
        val isConnected = connectionManager.connectionState.value is ConnectionState.Connected
        if (isConnected) {
            VpnTunnelService.stop(applicationContext)
        } else {
            VpnTunnelService.start(applicationContext)
        }
    }

    // ─────────────────────────────────────────────────────────────────────
    //  Tile appearance
    // ─────────────────────────────────────────────────────────────────────

    private fun updateTile(state: ConnectionState) {
        val tile = qsTile ?: return

        when (state) {
            is ConnectionState.Connected -> {
                val proto = if (state.protocol == VpnProtocol.WIREGUARD) "WG" else "PPTP"
                tile.state    = Tile.STATE_ACTIVE
                tile.label    = "VPNApp"
                tile.subtitle = "$proto · ${state.country}"
            }
            is ConnectionState.Connecting,
            is ConnectionState.Scraping -> {
                tile.state    = Tile.STATE_ACTIVE
                tile.label    = "VPNApp"
                tile.subtitle = "Connecting…"
            }
            is ConnectionState.Error -> {
                tile.state    = Tile.STATE_UNAVAILABLE
                tile.label    = "VPNApp"
                tile.subtitle = "Error"
            }
            else -> {
                tile.state    = Tile.STATE_INACTIVE
                tile.label    = "VPNApp"
                tile.subtitle = "Tap to connect"
            }
        }

        tile.updateTile()
    }

    companion object {
        /** Request a tile update from outside the service. */
        fun requestUpdate(context: android.content.Context) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                requestListeningState(
                    context,
                    ComponentName(context, VpnQuickTileService::class.java)
                )
            }
        }
    }
}
