package com.vpnapp.reconnect

import android.util.Log
import com.vpnapp.connection.ConnectionState
import com.vpnapp.connection.VpnConnectionManager
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.collect
import javax.inject.Inject
import javax.inject.Singleton
import kotlin.math.min
import kotlin.random.Random

/**
 * Watches for unexpected tunnel drops and automatically reconnects using
 * truncated exponential back-off with full jitter.
 *
 * Back-off schedule (base 2s, cap 120s):
 *   attempt 1 →  0–2 s
 *   attempt 2 →  0–4 s
 *   attempt 3 →  0–8 s
 *   …
 *   attempt 7 →  0–120 s  (cap)
 *
 * After [MAX_ATTEMPTS] consecutive failures the manager gives up and leaves
 * the VPN disconnected, letting the user retry manually.
 */
@Singleton
class AutoReconnectManager @Inject constructor(
    private val connectionManager: VpnConnectionManager
) {

    companion object {
        private const val TAG          = "AutoReconnect"
        private const val BASE_DELAY   = 2_000L     // ms
        private const val CAP_DELAY    = 120_000L   // ms
        private const val MAX_ATTEMPTS = 7
    }

    private val scope           = CoroutineScope(SupervisorJob() + Dispatchers.Main)
    private var reconnectJob:   Job? = null
    private var attemptCount    = 0
    private var isWatcherActive = false

    // ─────────────────────────────────────────────────────────────────────
    //  Public API
    // ─────────────────────────────────────────────────────────────────────

    /**
     * Start watching connection state. Call once (e.g. from Application.onCreate
     * or VpnTunnelService.onStartCommand).
     */
    fun startWatching() {
        if (isWatcherActive) return
        isWatcherActive = true

        scope.launch {
            connectionManager.connectionState.collect { state ->
                when (state) {
                    is ConnectionState.Connected -> {
                        // Successful connection — reset counter
                        cancelPendingReconnect()
                        attemptCount = 0
                        Log.d(TAG, "Connected — back-off counter reset")
                    }

                    is ConnectionState.Error -> {
                        // Unexpected drop — schedule a reconnect
                        scheduleReconnect()
                    }

                    ConnectionState.Disconnected -> {
                        // Explicit user disconnect — stop trying
                        cancelPendingReconnect()
                        attemptCount = 0
                    }

                    else -> { /* Connecting / Scraping — wait */ }
                }
            }
        }
    }

    fun stopWatching() {
        isWatcherActive = false
        cancelPendingReconnect()
        scope.cancel()
    }

    // ─────────────────────────────────────────────────────────────────────
    //  Reconnect scheduling
    // ─────────────────────────────────────────────────────────────────────

    private fun scheduleReconnect() {
        if (attemptCount >= MAX_ATTEMPTS) {
            Log.w(TAG, "Max reconnect attempts ($MAX_ATTEMPTS) reached — giving up")
            return
        }
        if (reconnectJob?.isActive == true) return   // Already scheduled

        val delayMs = computeBackoff(attemptCount)
        attemptCount++

        Log.i(TAG, "Scheduling reconnect #$attemptCount in ${delayMs}ms")

        reconnectJob = scope.launch {
            delay(delayMs)
            if (isActive) {
                Log.i(TAG, "Reconnecting (attempt $attemptCount)…")
                connectionManager.connect()
            }
        }
    }

    private fun cancelPendingReconnect() {
        reconnectJob?.cancel()
        reconnectJob = null
    }

    // ─────────────────────────────────────────────────────────────────────
    //  Back-off formula — truncated exponential with full jitter
    //  delay = random(0, min(cap, base * 2^attempt))
    // ─────────────────────────────────────────────────────────────────────

    private fun computeBackoff(attempt: Int): Long {
        val expCap = min(CAP_DELAY, BASE_DELAY * (1L shl attempt))   // base * 2^attempt, capped
        return Random.nextLong(0, expCap + 1)
    }

    // ─────────────────────────────────────────────────────────────────────
    //  State accessors (for UI)
    // ─────────────────────────────────────────────────────────────────────

    val currentAttempt:   Int     get() = attemptCount
    val willRetry:        Boolean get() = attemptCount < MAX_ATTEMPTS
    val nextRetryDelayMs: Long    get() = computeBackoff(attemptCount)
}
