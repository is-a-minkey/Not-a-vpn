.class public Lcom/vpnapp/PptpSession;
.super Ljava/lang/Object;
.source "PptpSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/PptpSession$ActiveMode;
    }
.end annotation


# static fields
.field private static volatile synthetic $SWITCH_TABLE$com$vpnapp$PptpSession$ActiveMode:[I = null

.field private static final TAG:Ljava/lang/String; = "PptpSession"


# instance fields
.field public volatile activeMode:Lcom/vpnapp/PptpSession$ActiveMode;

.field private controlChannel:Lcom/vpnapp/PptpControlChannel;

.field private mtpdManager:Lcom/vpnapp/PptpMtpdManager;

.field private tunFd:Landroid/os/ParcelFileDescriptor;

.field private tunProxy:Lcom/vpnapp/TunProxy;

.field private final vpnService:Landroid/net/VpnService;


# direct methods
.method static synthetic $SWITCH_TABLE$com$vpnapp$PptpSession$ActiveMode()[I
    .locals 3

    .line 9
    sget-object v0, Lcom/vpnapp/PptpSession;->$SWITCH_TABLE$com$vpnapp$PptpSession$ActiveMode:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/vpnapp/PptpSession$ActiveMode;->values()[Lcom/vpnapp/PptpSession$ActiveMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->CONTROL_PROBE_ONLY:Lcom/vpnapp/PptpSession$ActiveMode;

    invoke-virtual {v1}, Lcom/vpnapp/PptpSession$ActiveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->FAILED:Lcom/vpnapp/PptpSession$ActiveMode;

    invoke-virtual {v1}, Lcom/vpnapp/PptpSession$ActiveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->MTPD_ROOT:Lcom/vpnapp/PptpSession$ActiveMode;

    invoke-virtual {v1}, Lcom/vpnapp/PptpSession$ActiveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->TUN_PROXY:Lcom/vpnapp/PptpSession$ActiveMode;

    invoke-virtual {v1}, Lcom/vpnapp/PptpSession$ActiveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    goto :goto_3

    :catch_3
    move-exception v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    sput-object v0, Lcom/vpnapp/PptpSession;->$SWITCH_TABLE$com$vpnapp$PptpSession$ActiveMode:[I

    return-object v0
.end method

.method public constructor <init>(Landroid/net/VpnService;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/vpnapp/PptpSession$ActiveMode;->TUN_PROXY:Lcom/vpnapp/PptpSession$ActiveMode;

    iput-object v0, p0, Lcom/vpnapp/PptpSession;->activeMode:Lcom/vpnapp/PptpSession$ActiveMode;

    .line 21
    iput-object p1, p0, Lcom/vpnapp/PptpSession;->vpnService:Landroid/net/VpnService;

    return-void
.end method

.method private startTunProxy(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 51
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Landroid/net/VpnService$Builder;

    iget-object v1, p0, Lcom/vpnapp/PptpSession;->vpnService:Landroid/net/VpnService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 52
    const-string v1, "VPNApp-PPTP"

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 53
    const-string v1, "10.8.0.2"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 54
    const-string v1, "8.8.8.8"

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    const-string v1, "1.1.1.1"

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 55
    const-string v1, "0.0.0.0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 56
    const/16 v1, 0x578

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/vpnapp/PptpSession;->tunFd:Landroid/os/ParcelFileDescriptor;

    .line 59
    iget-object v0, p0, Lcom/vpnapp/PptpSession;->tunFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string p1, "VPN permission denied"

    return-object p1

    .line 61
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/vpnapp/PptpSession;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 62
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/vpnapp/PptpSession;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 63
    new-instance v3, Lcom/vpnapp/TunProxy;

    iget-object v4, p0, Lcom/vpnapp/PptpSession;->vpnService:Landroid/net/VpnService;

    invoke-direct {v3, v0, v2, v4}, Lcom/vpnapp/TunProxy;-><init>(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;Landroid/net/VpnService;)V

    iput-object v3, p0, Lcom/vpnapp/PptpSession;->tunProxy:Lcom/vpnapp/TunProxy;

    .line 64
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/vpnapp/PptpSession;->tunProxy:Lcom/vpnapp/TunProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;

    invoke-direct {v3, v2}, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;-><init>(Lcom/vpnapp/TunProxy;)V

    const-string v2, "pptp-tun"

    invoke-direct {v0, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TUN setup failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 25
    invoke-static {}, Lcom/vpnapp/PptpMtpdManager;->isMtpdAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vpnapp/RootManager;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Lcom/vpnapp/PptpMtpdManager;

    invoke-direct {v0}, Lcom/vpnapp/PptpMtpdManager;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/PptpSession;->mtpdManager:Lcom/vpnapp/PptpMtpdManager;

    .line 27
    iget-object v0, p0, Lcom/vpnapp/PptpSession;->mtpdManager:Lcom/vpnapp/PptpMtpdManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vpnapp/PptpMtpdManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vpnapp/PptpMtpdManager$Mode;

    move-result-object p2

    .line 28
    sget-object p3, Lcom/vpnapp/PptpMtpdManager$Mode;->CONNECTED:Lcom/vpnapp/PptpMtpdManager$Mode;

    if-ne p2, p3, :cond_0

    sget-object p1, Lcom/vpnapp/PptpSession$ActiveMode;->MTPD_ROOT:Lcom/vpnapp/PptpSession$ActiveMode;

    iput-object p1, p0, Lcom/vpnapp/PptpSession;->activeMode:Lcom/vpnapp/PptpSession$ActiveMode;

    return-object v1

    .line 30
    :cond_0
    const-string p2, "notavpn/PptpSession"

    const-string p3, "mtpd failed despite root \u2014 falling back"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object v1, p0, Lcom/vpnapp/PptpSession;->mtpdManager:Lcom/vpnapp/PptpMtpdManager;

    .line 35
    :cond_1
    :try_start_0
    new-instance p2, Lcom/vpnapp/PptpControlChannel;

    invoke-direct {p2}, Lcom/vpnapp/PptpControlChannel;-><init>()V

    iput-object p2, p0, Lcom/vpnapp/PptpSession;->controlChannel:Lcom/vpnapp/PptpControlChannel;

    .line 36
    iget-object p2, p0, Lcom/vpnapp/PptpSession;->controlChannel:Lcom/vpnapp/PptpControlChannel;

    invoke-virtual {p2, p1}, Lcom/vpnapp/PptpControlChannel;->connect(Ljava/lang/String;)Lcom/vpnapp/PptpControlChannel$NegotiatedParams;

    move-result-object p2

    .line 37
    const-string p3, "PptpSession"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PPTP control handshake OK \u2014 peerCallId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/vpnapp/PptpControlChannel$NegotiatedParams;->peerCallId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object p2, Lcom/vpnapp/PptpSession$ActiveMode;->CONTROL_PROBE_ONLY:Lcom/vpnapp/PptpSession$ActiveMode;

    iput-object p2, p0, Lcom/vpnapp/PptpSession;->activeMode:Lcom/vpnapp/PptpSession$ActiveMode;

    .line 39
    goto :goto_0

    :catch_0
    move-exception p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const-string p3, "PptpSession"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PPTP control failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    invoke-direct {p0, p1}, Lcom/vpnapp/PptpSession;->startTunProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/vpnapp/PptpSession;->disconnect()V

    move-object v1, p1

    return-object v1

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/vpnapp/PptpSession;->activeMode:Lcom/vpnapp/PptpSession$ActiveMode;

    sget-object p2, Lcom/vpnapp/PptpSession$ActiveMode;->CONTROL_PROBE_ONLY:Lcom/vpnapp/PptpSession$ActiveMode;

    if-eq p1, p2, :cond_3

    sget-object p1, Lcom/vpnapp/PptpSession$ActiveMode;->TUN_PROXY:Lcom/vpnapp/PptpSession$ActiveMode;

    iput-object p1, p0, Lcom/vpnapp/PptpSession;->activeMode:Lcom/vpnapp/PptpSession$ActiveMode;

    .line 46
    :cond_3
    return-object v1
.end method

.method public disconnect()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/vpnapp/PptpSession;->mtpdManager:Lcom/vpnapp/PptpMtpdManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/PptpSession;->mtpdManager:Lcom/vpnapp/PptpMtpdManager;

    invoke-virtual {v0}, Lcom/vpnapp/PptpMtpdManager;->disconnect()V

    iput-object v1, p0, Lcom/vpnapp/PptpSession;->mtpdManager:Lcom/vpnapp/PptpMtpdManager;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/vpnapp/PptpSession;->controlChannel:Lcom/vpnapp/PptpControlChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vpnapp/PptpSession;->controlChannel:Lcom/vpnapp/PptpControlChannel;

    invoke-virtual {v0}, Lcom/vpnapp/PptpControlChannel;->disconnect()V

    iput-object v1, p0, Lcom/vpnapp/PptpSession;->controlChannel:Lcom/vpnapp/PptpControlChannel;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/vpnapp/PptpSession;->tunProxy:Lcom/vpnapp/TunProxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vpnapp/PptpSession;->tunProxy:Lcom/vpnapp/TunProxy;

    invoke-virtual {v0}, Lcom/vpnapp/TunProxy;->stop()V

    iput-object v1, p0, Lcom/vpnapp/PptpSession;->tunProxy:Lcom/vpnapp/TunProxy;

    .line 74
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/PptpSession;->tunFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vpnapp/PptpSession;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/vpnapp/PptpSession;->tunFd:Landroid/os/ParcelFileDescriptor;

    .line 76
    return-void
.end method

.method public getProtocolLabel()Ljava/lang/String;
    .locals 2

    .line 79
    invoke-static {}, Lcom/vpnapp/PptpSession;->$SWITCH_TABLE$com$vpnapp$PptpSession$ActiveMode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/vpnapp/PptpSession;->activeMode:Lcom/vpnapp/PptpSession$ActiveMode;

    invoke-virtual {v1}, Lcom/vpnapp/PptpSession$ActiveMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    const-string v0, "PPTP"

    return-object v0

    .line 82
    :pswitch_0
    const-string v0, "PPTP Proxy"

    return-object v0

    .line 81
    :pswitch_1
    const-string v0, "PPTP+Proxy"

    return-object v0

    .line 80
    :pswitch_2
    const-string v0, "PPTP (GRE)"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isActive()Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/vpnapp/PptpSession;->tunProxy:Lcom/vpnapp/TunProxy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/PptpSession;->mtpdManager:Lcom/vpnapp/PptpMtpdManager;

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method
