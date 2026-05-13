package com.vpnapp.ui

import android.net.VpnService
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.*
import androidx.compose.foundation.shape.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.draw.*
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.*
import kotlinx.coroutines.launch

// ─────────────────────────────────────────────────────────────────────────────
//  Data
// ─────────────────────────────────────────────────────────────────────────────

data class OnboardPage(
    val emoji:    String,
    val title:    String,
    val body:     String,
    val accent:   Color,
    val bullets:  List<String> = emptyList()
)

private val pages = listOf(
    OnboardPage(
        emoji  = "🛡️",
        title  = "Private & Secure",
        body   = "VPNApp encrypts all your traffic and routes it through secure servers, hiding your IP and protecting you on any network.",
        accent = Color(0xFF00D4FF),
        bullets = listOf("No-log policy", "Open-source protocols", "AES-256 + ChaCha20")
    ),
    OnboardPage(
        emoji  = "⚡",
        title  = "WireGuard — Blazing Fast",
        body   = "The default protocol is WireGuard: a modern, lean VPN that's up to 3× faster than legacy options.",
        accent = Color(0xFF34D399),
        bullets = listOf("~3 000 lines of code (vs 100 000+ for IPSec)", "Sub-100 ms handshake", "Battery-friendly keepalive")
    ),
    OnboardPage(
        emoji  = "🔒",
        title  = "PPTP as Fallback",
        body   = "If WireGuard is blocked on your network, switch to PPTP with one tap. Compatible with every firewall.",
        accent = Color(0xFF8A8FA8),
        bullets = listOf("Maximum compatibility", "Automatically fetched credentials", "One-tap switch")
    ),
    OnboardPage(
        emoji  = "🗡️",
        title  = "Kill Switch",
        body   = "If the tunnel ever drops, the Kill Switch instantly blocks all internet traffic to prevent any data leaking outside the VPN.",
        accent = Color(0xFFF87171),
        bullets = listOf("OS-level traffic block", "Enabled by default", "Disable anytime in Settings")
    ),
    OnboardPage(
        emoji  = "🚀",
        title  = "Ready to Connect",
        body   = "Grant the VPN permission below. The app never sells your data and all credentials are fetched directly from VPNBook.",
        accent = Color(0xFF818CF8)
    )
)

// ─────────────────────────────────────────────────────────────────────────────
//  Screen
// ─────────────────────────────────────────────────────────────────────────────

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun OnboardingScreen(onFinished: () -> Unit) {
    val pagerState = rememberPagerState { pages.size }
    val scope      = rememberCoroutineScope()
    val context    = LocalContext.current
    val isLast     = pagerState.currentPage == pages.lastIndex
    val accent     = pages[pagerState.currentPage].accent

    // VPN permission
    val vpnLauncher = rememberLauncherForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { onFinished() }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(
                Brush.verticalGradient(
                    listOf(Color(0xFF080D1A), Color(0xFF0A1628))
                )
            )
    ) {
        // ── Pager ─────────────────────────────────────────────────────────
        HorizontalPager(
            state    = pagerState,
            modifier = Modifier
                .fillMaxSize()
                .padding(bottom = 140.dp)
        ) { idx ->
            OnboardPageContent(page = pages[idx])
        }

        // ── Bottom controls ───────────────────────────────────────────────
        Column(
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .fillMaxWidth()
                .padding(horizontal = 28.dp, vertical = 36.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(20.dp)
        ) {
            // Page dots
            PageIndicator(
                count   = pages.size,
                current = pagerState.currentPage,
                accent  = accent
            )

            // CTA button
            Button(
                onClick = {
                    if (isLast) {
                        val intent = VpnService.prepare(context)
                        if (intent != null) vpnLauncher.launch(intent)
                        else onFinished()
                    } else {
                        scope.launch {
                            pagerState.animateScrollToPage(pagerState.currentPage + 1)
                        }
                    }
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(54.dp),
                shape  = RoundedCornerShape(16.dp),
                colors = ButtonDefaults.buttonColors(containerColor = accent)
            ) {
                Text(
                    if (isLast) "Grant Permission & Start" else "Continue",
                    fontWeight = FontWeight.Bold,
                    fontSize   = 16.sp,
                    color      = if (accent == Color(0xFF8A8FA8)) Color.White else Color(0xFF080D1A)
                )
            }

            // Skip (only visible before last page)
            if (!isLast) {
                TextButton(onClick = {
                    scope.launch { pagerState.animateScrollToPage(pages.lastIndex) }
                }) {
                    Text("Skip", color = Color(0xFF4B5563), fontSize = 13.sp)
                }
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
//  Page content
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun OnboardPageContent(page: OnboardPage) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(horizontal = 32.dp)
            .padding(top = 80.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(20.dp)
    ) {
        // Big emoji in glowing circle
        Box(contentAlignment = Alignment.Center) {
            // Glow
            Box(
                modifier = Modifier
                    .size(120.dp)
                    .background(
                        Brush.radialGradient(
                            listOf(page.accent.copy(0.25f), Color.Transparent)
                        ),
                        CircleShape
                    )
            )
            Text(page.emoji, fontSize = 56.sp)
        }

        Spacer(Modifier.height(8.dp))

        Text(
            page.title,
            color      = Color.White,
            fontSize   = 26.sp,
            fontWeight = FontWeight.ExtraBold,
            textAlign  = TextAlign.Center
        )

        Text(
            page.body,
            color     = Color(0xFF9CA3AF),
            fontSize  = 15.sp,
            textAlign = TextAlign.Center,
            lineHeight = 22.sp
        )

        if (page.bullets.isNotEmpty()) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color(0xFF111928), RoundedCornerShape(16.dp))
                    .padding(20.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                page.bullets.forEach { bullet ->
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                        verticalAlignment     = Alignment.CenterVertically
                    ) {
                        Box(
                            modifier = Modifier
                                .size(8.dp)
                                .background(page.accent, CircleShape)
                        )
                        Text(bullet, color = Color(0xFFD1D5DB), fontSize = 14.sp)
                    }
                }
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
//  Page indicator dots
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun PageIndicator(count: Int, current: Int, accent: Color) {
    Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
        repeat(count) { i ->
            val width by animateDpAsState(
                targetValue = if (i == current) 24.dp else 6.dp,
                animationSpec = spring(stiffness = Spring.StiffnessMedium),
                label = "dot_w"
            )
            Box(
                modifier = Modifier
                    .height(6.dp)
                    .width(width)
                    .clip(CircleShape)
                    .background(
                        if (i == current) accent else Color(0xFF2D3748)
                    )
            )
        }
    }
}
