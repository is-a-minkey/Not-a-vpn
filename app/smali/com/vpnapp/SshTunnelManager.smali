.class public Lcom/vpnapp/SshTunnelManager;
.super Ljava/lang/Object;
.source "SshTunnelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/SshTunnelManager$Link;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SshTunnelManager"


# instance fields
.field private volatile connected:Z

.field private jsch:Lcom/jcraft/jsch/JSch;

.field private session:Lcom/jcraft/jsch/Session;

.field private final vpnService:Landroid/net/VpnService;


# direct methods
.method public constructor <init>(Landroid/net/VpnService;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/SshTunnelManager;->connected:Z

    .line 36
    iput-object p1, p0, Lcom/vpnapp/SshTunnelManager;->vpnService:Landroid/net/VpnService;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/vpnapp/SshTunnelManager;)Landroid/net/VpnService;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/vpnapp/SshTunnelManager;->vpnService:Landroid/net/VpnService;

    return-object p0
.end method


# virtual methods
.method public connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 45
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/JSch;

    invoke-direct {v1}, Lcom/jcraft/jsch/JSch;-><init>()V

    iput-object v1, p0, Lcom/vpnapp/SshTunnelManager;->jsch:Lcom/jcraft/jsch/JSch;

    .line 46
    iget-object v1, p0, Lcom/vpnapp/SshTunnelManager;->jsch:Lcom/jcraft/jsch/JSch;

    const/16 v2, 0x16

    if-lez p2, :cond_0

    move v2, p2

    :cond_0
    invoke-virtual {v1, p3, p1, v2}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p3

    iput-object p3, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    .line 47
    iget-object p3, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Session;->setPassword(Ljava/lang/String;)V

    .line 52
    new-instance p3, Ljava/util/Properties;

    invoke-direct {p3}, Ljava/util/Properties;-><init>()V

    .line 53
    const-string p4, "StrictHostKeyChecking"

    const-string v1, "no"

    invoke-virtual {p3, p4, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p4, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p4, p3}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/util/Properties;)V

    .line 58
    iget-object p3, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    new-instance p4, Lcom/vpnapp/SshTunnelManager$1;

    invoke-direct {p4, p0}, Lcom/vpnapp/SshTunnelManager$1;-><init>(Lcom/vpnapp/SshTunnelManager;)V

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Session;->setSocketFactory(Lcom/jcraft/jsch/SocketFactory;)V

    .line 70
    iget-object p3, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    const/16 p4, 0x3a98

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Session;->connect(I)V

    .line 71
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/vpnapp/SshTunnelManager;->connected:Z

    .line 72
    const-string p3, "SshTunnelManager"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "SSH session established to "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v0

    .line 75
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 76
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/vpnapp/SshTunnelManager;->connected:Z

    .line 77
    const-string p2, "SshTunnelManager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "SSH connect failed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    return-object v0

    :cond_1
    const-string p1, "SSH connection failed"

    goto :goto_0

    return-object v0
.end method

.method public disconnect()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/SshTunnelManager;->connected:Z

    .line 88
    iget-object v0, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    .line 92
    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/vpnapp/SshTunnelManager;->connected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public openDirectTcpIp(Ljava/lang/String;II)Lcom/vpnapp/SshTunnelManager$Link;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/vpnapp/SshTunnelManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "SSH session not connected"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/vpnapp/SshTunnelManager;->session:Lcom/jcraft/jsch/Session;

    const-string v1, "direct-tcpip"

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    .line 101
    check-cast v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    .line 102
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setHost(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setPort(I)V

    .line 104
    invoke-virtual {v0, p3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->connect(I)V

    .line 105
    new-instance p1, Lcom/vpnapp/SshTunnelManager$Link;

    invoke-direct {p1, v0}, Lcom/vpnapp/SshTunnelManager$Link;-><init>(Lcom/jcraft/jsch/Channel;)V

    return-object p1
.end method
