package com.vpnapp.battery

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.PowerManager
import android.util.Log
import com.vpnapp.monitor.NetworkMonitor
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Responds to Android power-management events and adjusts the network
 * monitor's polling cadence to minimise background battery drain.
 *
 * Strategy:
 *  • Screen ON  / Interactive  → normal 2 s polling
 *  • Screen OFF / Non-interactive → pause stats polling entirely;
 *    WireGuard's PersistentKeepalive (25 s) keeps the tunnel alive on its own.
 *  • Doze idle → polling already paused; no extra action needed.
 *
 * The VPN tunnel itself (GoBackend) runs inside the WireGuard kernel module
 * and requires no userspace wake-lock for keepalive.
 */
@Singleton
class BatteryOptimizer @Inject constructor(
    @ApplicationContext private val context: Context,
    private val networkMonitor: NetworkMonitor
) {

    companion object { private const val TAG = "BatteryOptimizer" }

    private var registered = false

    private val receiver = object : BroadcastReceiver() {
        override fun onReceive(ctx: Context, intent: Intent) {
            when (intent.action) {
                Intent.ACTION_SCREEN_ON, Intent.ACTION_USER_PRESENT -> {
                    Log.d(TAG, "Screen on — resuming stats polling")
                    networkMonitor.start()
                }
                Intent.ACTION_SCREEN_OFF -> {
                    Log.d(TAG, "Screen off — pausing stats polling to save battery")
                    networkMonitor.stop()
                }
                PowerManager.ACTION_DEVICE_IDLE_MODE_CHANGED -> {
                    val pm     = ctx.getSystemService(Context.POWER_SERVICE) as PowerManager
                    val dozing = pm.isDeviceIdleMode
                    Log.d(TAG, "Doze mode changed: isIdle=$dozing")
                    if (!dozing) networkMonitor.start()   // Exiting Doze → resume
                }
            }
        }
    }

    // ─────────────────────────────────────────────────────────────────────
    //  Lifecycle
    // ─────────────────────────────────────────────────────────────────────

    fun register() {
        if (registered) return
        val filter = IntentFilter().apply {
            addAction(Intent.ACTION_SCREEN_ON)
            addAction(Intent.ACTION_SCREEN_OFF)
            addAction(Intent.ACTION_USER_PRESENT)
            addAction(PowerManager.ACTION_DEVICE_IDLE_MODE_CHANGED)
        }
        context.registerReceiver(receiver, filter)
        registered = true
        Log.i(TAG, "Battery optimizer registered")
    }

    fun unregister() {
        if (!registered) return
        try { context.unregisterReceiver(receiver) } catch (_: Exception) {}
        registered = false
        Log.i(TAG, "Battery optimizer unregistered")
    }
}
