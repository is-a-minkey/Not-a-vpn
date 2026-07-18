.class public Lcom/vpnapp/KillSwitch;
.super Ljava/lang/Object;
.source "KillSwitch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KillSwitch"


# instance fields
.field private armed:Z

.field private callback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final cm:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/KillSwitch;->armed:Z

    .line 18
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/vpnapp/KillSwitch;->cm:Landroid/net/ConnectivityManager;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/vpnapp/KillSwitch;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/vpnapp/KillSwitch;->cm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$1(Lcom/vpnapp/KillSwitch;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/vpnapp/KillSwitch;->armed:Z

    return p0
.end method


# virtual methods
.method public arm()V
    .locals 3

    .line 22
    iget-boolean v0, p0, Lcom/vpnapp/KillSwitch;->armed:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpnapp/KillSwitch;->armed:Z

    .line 24
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 25
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 24
    nop

    .line 26
    new-instance v1, Lcom/vpnapp/KillSwitch$1;

    invoke-direct {v1, p0}, Lcom/vpnapp/KillSwitch$1;-><init>(Lcom/vpnapp/KillSwitch;)V

    iput-object v1, p0, Lcom/vpnapp/KillSwitch;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/vpnapp/KillSwitch;->cm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/vpnapp/KillSwitch;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string v0, "KillSwitch"

    const-string v1, "Kill switch armed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const-string v1, "KillSwitch"

    const-string v2, "register failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_1
    return-void
.end method

.method public disarm()V
    .locals 3

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/KillSwitch;->armed:Z

    .line 43
    iget-object v0, p0, Lcom/vpnapp/KillSwitch;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vpnapp/KillSwitch;->cm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/vpnapp/KillSwitch;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v1, p0, Lcom/vpnapp/KillSwitch;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 45
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    iput-object v0, p0, Lcom/vpnapp/KillSwitch;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 48
    :cond_0
    const-string v0, "KillSwitch"

    const-string v1, "Kill switch disarmed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public isArmed()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/vpnapp/KillSwitch;->armed:Z

    return v0
.end method
