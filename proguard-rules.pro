# ──────────────────────────────────────────────────────────────────────────────
# VPNApp ProGuard / R8 rules
# ──────────────────────────────────────────────────────────────────────────────

# ── WireGuard ──────────────────────────────────────────────────────────────────
# GoBackend uses JNI — keep everything under com.wireguard
-keep class com.wireguard.** { *; }
-keepclassmembers class com.wireguard.** { *; }
-dontwarn com.wireguard.**

# ── Hilt / Dagger ──────────────────────────────────────────────────────────────
-keep class dagger.hilt.** { *; }
-keep @dagger.hilt.android.lifecycle.HiltViewModel class * { *; }
-keep @dagger.hilt.android.AndroidEntryPoint class * { *; }
-keep @javax.inject.Singleton class * { *; }
-keepclasseswithmembers class * {
    @javax.inject.Inject <init>(...);
}
-dontwarn dagger.hilt.**

# ── Kotlin coroutines ──────────────────────────────────────────────────────────
-keep class kotlinx.coroutines.** { *; }
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-dontwarn kotlinx.coroutines.**

# ── OkHttp & Okio ─────────────────────────────────────────────────────────────
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

# ── Jsoup ─────────────────────────────────────────────────────────────────────
-keep class org.jsoup.** { *; }

# ── DataStore / Protobuf ───────────────────────────────────────────────────────
-keep class androidx.datastore.** { *; }
-keep class com.google.protobuf.** { *; }
-dontwarn com.google.protobuf.**

# ── Security Crypto ────────────────────────────────────────────────────────────
-keep class androidx.security.crypto.** { *; }

# ── VpnService subclasses must survive ────────────────────────────────────────
-keep public class * extends android.net.VpnService
-keep public class * extends android.service.quicksettings.TileService

# ── BroadcastReceivers & Services registered in Manifest ──────────────────────
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.app.Service

# ── App models (serialised / reflected) ──────────────────────────────────────
-keep class com.vpnapp.scraper.** { *; }
-keep class com.vpnapp.connection.** { *; }
-keep class com.vpnapp.monitor.** { *; }

# ── Compose ────────────────────────────────────────────────────────────────────
-keep class androidx.compose.** { *; }
-dontwarn androidx.compose.**

# ── General Android ────────────────────────────────────────────────────────────
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod
-keepattributes Exceptions

# Preserve line numbers for crash reports
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
