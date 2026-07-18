.class public Lcom/vpnapp/WireGuardService;
.super Ljava/lang/Object;
.source "WireGuardService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "notavpn/WireGuard"


# instance fields
.field private final excludedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile lastHandshakeSec:J

.field private volatile running:Z

.field public volatile rxBytes:J

.field private statsThread:Ljava/lang/Thread;

.field private tunFd:Landroid/os/ParcelFileDescriptor;

.field public volatile txBytes:J

.field private final vpnService:Landroid/net/VpnService;

.field private wgHandle:I


# direct methods
.method public constructor <init>(Landroid/net/VpnService;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/VpnService;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/WireGuardService;->running:Z

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vpnapp/WireGuardService;->rxBytes:J

    iput-wide v0, p0, Lcom/vpnapp/WireGuardService;->txBytes:J

    iput-wide v0, p0, Lcom/vpnapp/WireGuardService;->lastHandshakeSec:J

    .line 24
    iput-object p1, p0, Lcom/vpnapp/WireGuardService;->vpnService:Landroid/net/VpnService;

    .line 25
    iput-object p2, p0, Lcom/vpnapp/WireGuardService;->excludedPackages:Ljava/util/Set;

    .line 26
    return-void
.end method

.method static synthetic lambda$0(Lcom/vpnapp/WireGuardService;)V
    .locals 2

    .line 70
    nop

    .line 70
    :goto_0
    iget-boolean v0, p0, Lcom/vpnapp/WireGuardService;->running:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    if-gez v0, :cond_0

    return-void

    .line 71
    :cond_0
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-direct {p0}, Lcom/vpnapp/WireGuardService;->pollStats()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    :cond_1
    return-void
.end method

.method private pollStats()V
    .locals 6

    .line 82
    :try_start_0
    iget v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    invoke-static {v0}, Lcom/wireguard/android/backend/GoBackend;->wgGetConfig(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 90
    return-void

    :cond_1
    aget-object v3, v0, v2

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "rx_bytes="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x9

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vpnapp/WireGuardService;->rxBytes:J

    goto :goto_1

    .line 87
    :cond_2
    const-string v4, "tx_bytes="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vpnapp/WireGuardService;->txBytes:J

    goto :goto_1

    .line 88
    :cond_3
    const-string v4, "last_handshake_time_sec="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vpnapp/WireGuardService;->lastHandshakeSec:J

    .line 84
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 29
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v1, "WireGuard library not loaded"

    return-object v1

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/wireguard/android/backend/GoBackend$WgConfig;->parse(Ljava/lang/String;)Lcom/wireguard/android/backend/GoBackend$WgConfig;

    move-result-object p1

    .line 32
    iget-object v0, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->privateKeyHex:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->privateKeyHex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    .line 33
    :cond_1
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->generateKeyPair()[Ljava/lang/String;

    move-result-object v0

    .line 34
    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->privateKeyHex:Ljava/lang/String;

    .line 38
    :cond_2
    :try_start_0
    new-instance v0, Landroid/net/VpnService$Builder;

    iget-object v3, p0, Lcom/vpnapp/WireGuardService;->vpnService:Landroid/net/VpnService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    const-string v3, "not a vpn \u2013 WireGuard"

    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    const/16 v3, 0x58c

    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 39
    iget-object v3, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->address:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->address:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "10.8.0.2/32"

    .line 40
    :goto_0
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 41
    aget-object v4, v3, v2

    array-length v5, v3

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-le v5, v7, :cond_4

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_4
    invoke-virtual {v0, v4, v6}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 42
    iget-object v3, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->dns:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 43
    iget-object v3, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->dns:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-lt v5, v4, :cond_5

    .line 44
    goto :goto_3

    :cond_5
    aget-object v6, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :try_start_2
    const-string v3, "1.1.1.1"

    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v3

    const-string v4, "8.8.8.8"

    invoke-virtual {v3, v4}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 45
    :goto_3
    iget-object v3, p1, Lcom/wireguard/android/backend/GoBackend$WgConfig;->allowedIps:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_4
    if-lt v5, v4, :cond_d

    .line 50
    iget-object v2, p0, Lcom/vpnapp/WireGuardService;->excludedPackages:Ljava/util/Set;

    if-eqz v2, :cond_8

    .line 51
    iget-object v2, p0, Lcom/vpnapp/WireGuardService;->excludedPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 51
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 52
    :try_start_3
    invoke-virtual {v0, v3}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_5

    .line 55
    :cond_8
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/WireGuardService;->tunFd:Landroid/os/ParcelFileDescriptor;

    .line 56
    iget-object v0, p0, Lcom/vpnapp/WireGuardService;->tunFd:Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v0, :cond_9

    const-string v1, "VPN permission denied"

    return-object v1

    .line 59
    :cond_9
    invoke-static {p1}, Lcom/wireguard/android/backend/GoBackend;->buildConfig(Lcom/wireguard/android/backend/GoBackend$WgConfig;)Ljava/lang/String;

    move-result-object p1

    .line 60
    const-string v0, "wg0"

    iget-object v2, p0, Lcom/vpnapp/WireGuardService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v0, v2, p1}, Lcom/wireguard/android/backend/GoBackend;->wgTurnOn(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    .line 61
    iget p1, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    if-gez p1, :cond_a

    :try_start_5
    iget-object p1, p0, Lcom/vpnapp/WireGuardService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    :goto_7
    const-string v1, "wgTurnOn failed"

    return-object v1

    .line 63
    :cond_a
    iget p1, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    invoke-static {p1}, Lcom/wireguard/android/backend/GoBackend;->wgGetSocketV4(I)I

    move-result p1

    .line 64
    iget v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    invoke-static {v0}, Lcom/wireguard/android/backend/GoBackend;->wgGetSocketV6(I)I

    move-result v0

    .line 65
    if-ltz p1, :cond_b

    iget-object v2, p0, Lcom/vpnapp/WireGuardService;->vpnService:Landroid/net/VpnService;

    invoke-virtual {v2, p1}, Landroid/net/VpnService;->protect(I)Z

    .line 66
    :cond_b
    if-ltz v0, :cond_c

    iget-object p1, p0, Lcom/vpnapp/WireGuardService;->vpnService:Landroid/net/VpnService;

    invoke-virtual {p1, v0}, Landroid/net/VpnService;->protect(I)Z

    .line 68
    :cond_c
    iput-boolean v7, p0, Lcom/vpnapp/WireGuardService;->running:Z

    .line 69
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/vpnapp/-$$Lambda$WireGuardService$RuD1ua_g0mFnSoUo27uyO3-dgTM;

    invoke-direct {v0, p0}, Lcom/vpnapp/-$$Lambda$WireGuardService$RuD1ua_g0mFnSoUo27uyO3-dgTM;-><init>(Lcom/vpnapp/WireGuardService;)V

    .line 74
    const-string v2, "wg-stats"

    invoke-direct {p1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/vpnapp/WireGuardService;->statsThread:Ljava/lang/Thread;

    .line 75
    iget-object p1, p0, Lcom/vpnapp/WireGuardService;->statsThread:Ljava/lang/Thread;

    invoke-virtual {p1, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Lcom/vpnapp/WireGuardService;->statsThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 76
    const-string p1, "notavpn/WireGuard"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WireGuard up. Handle="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->wgVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v1

    :cond_d
    :try_start_6
    aget-object v6, v3, v5

    .line 46
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 47
    array-length v8, v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    :try_start_7
    aget-object v8, v6, v2

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v8, v6}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_8

    :catch_3
    move-exception v6

    .line 45
    :cond_e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 57
    :catch_4
    move-exception p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TUN setup failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public disconnect()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/WireGuardService;->running:Z

    .line 95
    iget-object v0, p0, Lcom/vpnapp/WireGuardService;->statsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/WireGuardService;->statsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 96
    :cond_0
    iget v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    invoke-static {v0}, Lcom/wireguard/android/backend/GoBackend;->wgTurnOff(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    .line 97
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/WireGuardService;->tunFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vpnapp/WireGuardService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :catch_0
    move-exception v0

    .line 98
    :cond_2
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public getLastHandshake()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/vpnapp/WireGuardService;->lastHandshakeSec:J

    return-wide v0
.end method

.method public getRxBytes()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/vpnapp/WireGuardService;->rxBytes:J

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/vpnapp/WireGuardService;->txBytes:J

    return-wide v0
.end method

.method public isConnected()Z
    .locals 3

    .line 100
    iget v0, p0, Lcom/vpnapp/WireGuardService;->wgHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/vpnapp/WireGuardService;->running:Z

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method
