.class public Lcom/vpnapp/VpnTunnelService;
.super Landroid/net/VpnService;
.source "VpnTunnelService.java"


# static fields
.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.vpnapp.CONNECT"

.field public static final ACTION_DISCONNECT:Ljava/lang/String; = "com.vpnapp.DISCONNECT"

.field public static final ACTION_STATE:Ljava/lang/String; = "com.vpnapp.STATE"

.field public static final ACTION_SUBSTATUS:Ljava/lang/String; = "com.vpnapp.SUBSTATUS"

.field private static final CHANNEL_ID:Ljava/lang/String; = "notavpn_status"

.field public static final EXTRA_COUNTRY:Ljava/lang/String; = "country"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_HOST:Ljava/lang/String; = "host"

.field public static final EXTRA_PASS:Ljava/lang/String; = "pass"

.field public static final EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final EXTRA_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_SUBSTATUS:Ljava/lang/String; = "substatus"

.field public static final EXTRA_USER:Ljava/lang/String; = "user"

.field public static final EXTRA_WG_CONF:Ljava/lang/String; = "wg_conf"

.field private static final NOTIF_ID:I = 0x3e9

.field public static final PROTO_PPTP:Ljava/lang/String; = "pptp"

.field public static final PROTO_SSH:Ljava/lang/String; = "ssh"

.field public static final PROTO_WIREGUARD:Ljava/lang/String; = "wireguard"

.field public static final STATE_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field public static final STATE_CONNECTING:Ljava/lang/String; = "CONNECTING"

.field public static final STATE_DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field public static final STATE_ERROR:Ljava/lang/String; = "ERROR"

.field private static final TAG:Ljava/lang/String; = "notavpn/Service"

.field public static volatile bytesRx:J

.field public static volatile bytesTx:J

.field public static volatile connectedSince:J

.field public static volatile currentCountry:Ljava/lang/String;

.field public static volatile currentProtocol:Ljava/lang/String;

.field public static volatile currentState:Ljava/lang/String;

.field public static volatile lastHandshakeSec:J


# instance fields
.field private country:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private keepaliveThread:Ljava/lang/Thread;

.field private killSwitch:Lcom/vpnapp/KillSwitch;

.field private notifThread:Ljava/lang/Thread;

.field private pass:Ljava/lang/String;

.field private port:I

.field private pptpSession:Lcom/vpnapp/PptpSession;

.field private protocol:Ljava/lang/String;

.field private proxy:Lcom/vpnapp/TunProxy;

.field private proxyThread:Ljava/lang/Thread;

.field private volatile running:Z

.field private sshManager:Lcom/vpnapp/SshTunnelManager;

.field private store:Lcom/vpnapp/ServerStore;

.field private tunFd:Landroid/os/ParcelFileDescriptor;

.field private user:Ljava/lang/String;

.field private wgConf:Ljava/lang/String;

.field private wgService:Lcom/vpnapp/WireGuardService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "DISCONNECTED"

    sput-object v0, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/vpnapp/VpnTunnelService;->currentCountry:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/vpnapp/VpnTunnelService;->currentProtocol:Ljava/lang/String;

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->connectedSince:J

    .line 58
    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->bytesRx:J

    .line 59
    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->bytesTx:J

    .line 60
    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->lastHandshakeSec:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    .line 20
    return-void
.end method

.method private broadcastState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vpnapp.STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    if-eqz p2, :cond_0

    const-string p1, "error"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vpnapp/VpnTunnelService;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method private buildNotification(Ljava/lang/String;JJ)Landroid/app/Notification;
    .locals 5

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vpnapp/VpnTunnelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    const-string v1, "com.vpnapp.DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x8000000

    const/high16 v3, 0xc000000

    const/16 v4, 0x17

    if-lt v1, v4, :cond_0

    .line 292
    goto :goto_0

    .line 293
    :cond_0
    move v3, v2

    .line 291
    :goto_0
    nop

    .line 294
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 296
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u2193"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/vpnapp/VpnTunnelService;->fmtBytes(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  \u2191"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Lcom/vpnapp/VpnTunnelService;->fmtBytes(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 298
    :cond_1
    move-object p2, p1

    .line 296
    :goto_1
    nop

    .line 300
    new-instance p3, Landroid/app/Notification$Builder;

    invoke-direct {p3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    const-string p4, "not a vpn"

    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 302
    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 303
    const/4 p3, 0x0

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p3

    :goto_2
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 304
    const p2, 0x108002f

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 305
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 306
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 308
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 309
    const-string p3, "Disconnect"

    const p4, 0x108001d

    invoke-virtual {p1, p4, p3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 300
    nop

    .line 310
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1a

    if-lt p3, p4, :cond_3

    .line 311
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "setChannelId"

    new-array p5, p2, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, p5, v1

    invoke-virtual {p3, p4, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    const-string p4, "notavpn_status"

    aput-object p4, p2, v1

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 312
    :catch_0
    move-exception p2

    .line 312
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private connect()V
    .locals 9

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {v0}, Lcom/vpnapp/ServerStore;->loadSplitPackages()Ljava/util/Set;

    move-result-object v0

    .line 107
    const-string v1, "ssh"

    iget-object v2, p0, Lcom/vpnapp/VpnTunnelService;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-eqz v1, :cond_3

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Resolving "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vpnapp/VpnTunnelService;->host:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u2026"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vpnapp/VpnTunnelService;->subStatus(Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/vpnapp/SshTunnelManager;

    invoke-direct {v1, p0}, Lcom/vpnapp/SshTunnelManager;-><init>(Landroid/net/VpnService;)V

    iput-object v1, p0, Lcom/vpnapp/VpnTunnelService;->sshManager:Lcom/vpnapp/SshTunnelManager;

    .line 110
    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->sshManager:Lcom/vpnapp/SshTunnelManager;

    iget-object v5, p0, Lcom/vpnapp/VpnTunnelService;->host:Ljava/lang/String;

    iget v6, p0, Lcom/vpnapp/VpnTunnelService;->port:I

    iget-object v7, p0, Lcom/vpnapp/VpnTunnelService;->user:Ljava/lang/String;

    iget-object v8, p0, Lcom/vpnapp/VpnTunnelService;->pass:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/vpnapp/SshTunnelManager;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SSH: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/vpnapp/VpnTunnelService;->tearDown(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    const-string v1, "Opening tunnel interface\u2026"

    invoke-direct {p0, v1}, Lcom/vpnapp/VpnTunnelService;->subStatus(Ljava/lang/String;)V

    .line 114
    new-instance v1, Landroid/net/VpnService$Builder;

    invoke-direct {v1, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 115
    const-string v5, "not a vpn \u2013 SSH"

    invoke-virtual {v1, v5}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 116
    const-string v5, "10.8.0.2"

    invoke-virtual {v1, v5, v4}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 117
    const-string v4, "1.1.1.1"

    invoke-virtual {v1, v4}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v1

    const-string v4, "8.8.8.8"

    invoke-virtual {v1, v4}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 118
    const-string v4, "0.0.0.0"

    invoke-virtual {v1, v4, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v1

    const/16 v3, 0x578

    invoke-virtual {v1, v3}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 114
    nop

    .line 119
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 122
    invoke-virtual {v1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    .line 123
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    const-string v0, "VPN permission denied"

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "SSH tunnel"

    const-string v1, "ssh"

    invoke-direct {p0, v0, v1}, Lcom/vpnapp/VpnTunnelService;->go(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 127
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 128
    new-instance v3, Lcom/vpnapp/TunProxy;

    iget-object v4, p0, Lcom/vpnapp/VpnTunnelService;->sshManager:Lcom/vpnapp/SshTunnelManager;

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/vpnapp/TunProxy;-><init>(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;Landroid/net/VpnService;Lcom/vpnapp/SshTunnelManager;)V

    iput-object v3, p0, Lcom/vpnapp/VpnTunnelService;->proxy:Lcom/vpnapp/TunProxy;

    .line 129
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->proxy:Lcom/vpnapp/TunProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;

    invoke-direct {v3, v1}, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;-><init>(Lcom/vpnapp/TunProxy;)V

    const-string v1, "tun-ssh"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    .line 130
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->startKeepalive()V

    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->startNotifUpdater()V

    .line 132
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 134
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 120
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v1, "pptp"

    iget-object v5, p0, Lcom/vpnapp/VpnTunnelService;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v5, 0x7d0

    if-eqz v1, :cond_6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connecting PPTP to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vpnapp/VpnTunnelService;->subStatus(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/vpnapp/PptpSession;

    invoke-direct {v0, p0}, Lcom/vpnapp/PptpSession;-><init>(Landroid/net/VpnService;)V

    iput-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pptpSession:Lcom/vpnapp/PptpSession;

    .line 137
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pptpSession:Lcom/vpnapp/PptpSession;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/vpnapp/VpnTunnelService;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/vpnapp/VpnTunnelService;->pass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vpnapp/PptpSession;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PPTP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pptpSession:Lcom/vpnapp/PptpSession;

    invoke-virtual {v0}, Lcom/vpnapp/PptpSession;->getProtocolLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pptp"

    invoke-direct {p0, v0, v1}, Lcom/vpnapp/VpnTunnelService;->go(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->startNotifUpdater()V

    .line 141
    nop

    .line 141
    :goto_2
    iget-boolean v0, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pptpSession:Lcom/vpnapp/PptpSession;

    invoke-virtual {v0}, Lcom/vpnapp/PptpSession;->isActive()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v0, :cond_5

    .line 145
    return-void

    .line 142
    :cond_5
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_1
    move-exception v0

    return-void

    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->wgConf:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->wgConf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 146
    const-string v1, "Configuring WireGuard\u2026"

    invoke-direct {p0, v1}, Lcom/vpnapp/VpnTunnelService;->subStatus(Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/vpnapp/WireGuardService;

    invoke-direct {v1, p0, v0}, Lcom/vpnapp/WireGuardService;-><init>(Landroid/net/VpnService;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    .line 156
    const-string v0, "Starting WireGuard handshake\u2026"

    invoke-direct {p0, v0}, Lcom/vpnapp/VpnTunnelService;->subStatus(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->wgConf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vpnapp/WireGuardService;->connect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WireGuard: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :cond_8
    const-string v0, "WireGuard"

    const-string v1, "wireguard"

    invoke-direct {p0, v0, v1}, Lcom/vpnapp/VpnTunnelService;->go(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->startNotifUpdater()V

    .line 162
    nop

    .line 162
    :goto_4
    iget-boolean v0, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    invoke-virtual {v0}, Lcom/vpnapp/WireGuardService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 169
    return-void

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    invoke-virtual {v0}, Lcom/vpnapp/WireGuardService;->getRxBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->bytesRx:J

    .line 164
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    invoke-virtual {v0}, Lcom/vpnapp/WireGuardService;->getTxBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->bytesTx:J

    .line 165
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    invoke-virtual {v0}, Lcom/vpnapp/WireGuardService;->getLastHandshake()J

    move-result-wide v0

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->lastHandshakeSec:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 166
    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 171
    :cond_b
    :try_start_8
    const-string v1, "Starting proxy tunnel\u2026"

    invoke-direct {p0, v1}, Lcom/vpnapp/VpnTunnelService;->subStatus(Ljava/lang/String;)V

    .line 172
    new-instance v1, Landroid/net/VpnService$Builder;

    invoke-direct {v1, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 173
    const-string v5, "not a vpn"

    invoke-virtual {v1, v5}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 174
    const-string v5, "10.8.0.2"

    invoke-virtual {v1, v5, v4}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 175
    const-string v4, "8.8.8.8"

    invoke-virtual {v1, v4}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v1

    const-string v4, "1.1.1.1"

    invoke-virtual {v1, v4}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 176
    const-string v4, "0.0.0.0"

    invoke-virtual {v1, v4, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v1

    const/16 v3, 0x5dc

    invoke-virtual {v1, v3}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    move-result-object v1

    .line 172
    nop

    .line 177
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    .line 180
    invoke-virtual {v1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    .line 181
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_c

    const-string v0, "VPN permission denied"

    goto/16 :goto_0

    .line 183
    :cond_c
    const-string v0, "Proxy"

    const-string v1, "proxy"

    invoke-direct {p0, v0, v1}, Lcom/vpnapp/VpnTunnelService;->go(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 185
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 186
    new-instance v3, Lcom/vpnapp/TunProxy;

    invoke-direct {v3, v0, v1, p0}, Lcom/vpnapp/TunProxy;-><init>(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;Landroid/net/VpnService;)V

    iput-object v3, p0, Lcom/vpnapp/VpnTunnelService;->proxy:Lcom/vpnapp/TunProxy;

    .line 187
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->proxy:Lcom/vpnapp/TunProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;

    invoke-direct {v3, v1}, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;-><init>(Lcom/vpnapp/TunProxy;)V

    const-string v1, "tun-proxy"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    .line 188
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->startKeepalive()V

    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->startNotifUpdater()V

    .line 190
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 192
    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 178
    :try_start_9
    invoke-virtual {v1, v3}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    goto :goto_5

    :catch_4
    move-exception v0

    .line 193
    const-string v1, "notavpn/Service"

    const-string v2, "connect() exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vpnapp/VpnTunnelService;->tearDown(Ljava/lang/String;)V

    .line 196
    :cond_e
    return-void
.end method

.method public static connect(Landroid/content/Context;Lcom/vpnapp/VpnServer;)V
    .locals 3

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vpnapp/VpnTunnelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-string v1, "com.vpnapp.CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "host"

    iget-object v2, p1, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user"

    iget-object v2, p1, Lcom/vpnapp/VpnServer;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "pass"

    iget-object v2, p1, Lcom/vpnapp/VpnServer;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "country"

    iget-object v2, p1, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v1, "port"

    iget v2, p1, Lcom/vpnapp/VpnServer;->port:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string v1, "SSH"

    iget-object v2, p1, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "protocol"

    const-string v1, "ssh"

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 343
    :cond_0
    const-string v1, "PPTP"

    iget-object p1, p1, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "protocol"

    const-string v1, "pptp"

    goto :goto_0

    .line 344
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lcom/vpnapp/VpnTunnelService;->startCompat(Landroid/content/Context;Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method public static connectWireGuard(Landroid/content/Context;Lcom/vpnapp/VpnServer;Ljava/lang/String;)V
    .locals 3

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vpnapp/VpnTunnelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    const-string v1, "com.vpnapp.CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "host"

    iget-object v2, p1, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "country"

    iget-object p1, p1, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string p1, "wg_conf"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-static {p0, v0}, Lcom/vpnapp/VpnTunnelService;->startCompat(Landroid/content/Context;Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method private createNotificationChannel()V
    .locals 7

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 325
    :try_start_0
    const-string v0, "android.app.NotificationChannel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 326
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    const-string v3, "notavpn_status"

    aput-object v3, v1, v4

    const-string v3, "VPN Status"

    aput-object v3, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 326
    nop

    .line 328
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/vpnapp/VpnTunnelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createNotificationChannel"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 330
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/vpnapp/VpnTunnelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 329
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void

    :catch_0
    move-exception v0

    .line 333
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public static disconnect(Landroid/content/Context;)V
    .locals 2

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vpnapp/VpnTunnelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    const-string v1, "com.vpnapp.DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 359
    return-void
.end method

.method private static fmtBytes(J)Ljava/lang/String;
    .locals 5

    .line 370
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const-string v0, "%.1fG"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    :goto_0
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 371
    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v0, p0, v3

    if-ltz v0, :cond_1

    const-string v0, "%.1fM"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_0

    .line 372
    :cond_1
    const-wide/16 v3, 0x400

    cmp-long v0, p0, v3

    if-ltz v0, :cond_2

    const-string v0, "%dK"

    new-array v2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_0

    .line 373
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private go(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->bytesRx:J

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->bytesTx:J

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->lastHandshakeSec:J

    .line 201
    const-string v0, "CONNECTED"

    sput-object v0, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->country:Ljava/lang/String;

    sput-object v0, Lcom/vpnapp/VpnTunnelService;->currentCountry:Ljava/lang/String;

    .line 203
    sput-object p1, Lcom/vpnapp/VpnTunnelService;->currentProtocol:Ljava/lang/String;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vpnapp/VpnTunnelService;->connectedSince:J

    .line 205
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->killSwitch:Lcom/vpnapp/KillSwitch;

    invoke-virtual {v0}, Lcom/vpnapp/KillSwitch;->arm()V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connected  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v3, v5

    invoke-direct/range {v1 .. v6}, Lcom/vpnapp/VpnTunnelService;->updateNotification(Ljava/lang/String;JJ)V

    .line 207
    const-string p1, "CONNECTED"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vpnapp/VpnTunnelService;->broadcastState(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p1, Lcom/vpnapp/VpnServer;

    iget-object v2, p0, Lcom/vpnapp/VpnTunnelService;->country:Ljava/lang/String;

    const-string v3, "\ud83c\udf10"

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->host:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->user:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->user:Ljava/lang/String;

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_1
    const-string v0, ""

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pass:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pass:Ljava/lang/String;

    :goto_4
    move-object v6, v0

    goto :goto_5

    :cond_2
    const-string v0, ""

    goto :goto_4

    .line 212
    :goto_5
    iget v8, p0, Lcom/vpnapp/VpnTunnelService;->port:I

    .line 210
    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->store:Lcom/vpnapp/ServerStore;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->wgConf:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/vpnapp/ServerStore;->saveLastConnection(Lcom/vpnapp/VpnServer;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_0
    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Lcom/vpnapp/VpnTunnelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    .line 218
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 219
    return-void

    :catch_0
    move-exception p1

    .line 220
    :cond_3
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method static synthetic lambda$3(Lcom/vpnapp/VpnTunnelService;)V
    .locals 4

    .line 224
    nop

    .line 225
    const/4 v0, 0x0

    move v1, v0

    .line 225
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    if-nez v2, :cond_1

    return-void

    .line 226
    :cond_1
    const-wide/16 v2, 0x61a8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :try_start_1
    const-string v2, "1.1.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v2

    .line 229
    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 230
    :goto_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v2, "Network lost"

    invoke-direct {p0, v2}, Lcom/vpnapp/VpnTunnelService;->tearDown(Ljava/lang/String;)V

    return-void

    .line 231
    :catch_0
    move-exception v2

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 233
    return-void
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method static synthetic lambda$4(Lcom/vpnapp/VpnTunnelService;)V
    .locals 8

    .line 239
    nop

    .line 239
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    if-nez v0, :cond_1

    return-void

    .line 240
    :cond_1
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    iget-boolean v0, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/VpnTunnelService;->country:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lcom/vpnapp/VpnTunnelService;->bytesRx:J

    sget-wide v6, Lcom/vpnapp/VpnTunnelService;->bytesTx:J

    .line 241
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/vpnapp/VpnTunnelService;->updateNotification(Ljava/lang/String;JJ)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    return-void
.end method

.method static synthetic lambda$Bltbko_Qw2BnlSR7j5jEW7KkyhQ(Lcom/vpnapp/VpnTunnelService;)V
    .locals 0

    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->connect()V

    return-void
.end method

.method private static startCompat(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 363
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "startForegroundService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 364
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 367
    return-void
.end method

.method private startKeepalive()V
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$VpnTunnelService$hZSuyUuKYoXq1ki0WDDRi2kLFOY;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$VpnTunnelService$hZSuyUuKYoXq1ki0WDDRi2kLFOY;-><init>(Lcom/vpnapp/VpnTunnelService;)V

    .line 233
    const-string v2, "vpn-ka"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 223
    iput-object v0, p0, Lcom/vpnapp/VpnTunnelService;->keepaliveThread:Ljava/lang/Thread;

    .line 234
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->keepaliveThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->keepaliveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    return-void
.end method

.method private startNotifUpdater()V
    .locals 3

    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$VpnTunnelService$15uKc65SpzZvg0kv-CSvWBXV400;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$VpnTunnelService$15uKc65SpzZvg0kv-CSvWBXV400;-><init>(Lcom/vpnapp/VpnTunnelService;)V

    .line 244
    const-string v2, "notif-updater"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 238
    iput-object v0, p0, Lcom/vpnapp/VpnTunnelService;->notifThread:Ljava/lang/Thread;

    .line 245
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->notifThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->notifThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    return-void
.end method

.method private subStatus(Ljava/lang/String;)V
    .locals 3

    .line 281
    const-string v0, "notavpn/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sub: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vpnapp.SUBSTATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v1, "substatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Lcom/vpnapp/VpnTunnelService;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private tearDown(Ljava/lang/String;)V
    .locals 8

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/VpnTunnelService;->running:Z

    .line 250
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->sshManager:Lcom/vpnapp/SshTunnelManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->sshManager:Lcom/vpnapp/SshTunnelManager;

    invoke-virtual {v0}, Lcom/vpnapp/SshTunnelManager;->disconnect()V

    iput-object v1, p0, Lcom/vpnapp/VpnTunnelService;->sshManager:Lcom/vpnapp/SshTunnelManager;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pptpSession:Lcom/vpnapp/PptpSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->pptpSession:Lcom/vpnapp/PptpSession;

    invoke-virtual {v0}, Lcom/vpnapp/PptpSession;->disconnect()V

    iput-object v1, p0, Lcom/vpnapp/VpnTunnelService;->pptpSession:Lcom/vpnapp/PptpSession;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    invoke-virtual {v0}, Lcom/vpnapp/WireGuardService;->disconnect()V

    iput-object v1, p0, Lcom/vpnapp/VpnTunnelService;->wgService:Lcom/vpnapp/WireGuardService;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxy:Lcom/vpnapp/TunProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxy:Lcom/vpnapp/TunProxy;

    invoke-virtual {v0}, Lcom/vpnapp/TunProxy;->stop()V

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->proxyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->keepaliveThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->keepaliveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->notifThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->notifThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->killSwitch:Lcom/vpnapp/KillSwitch;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->killSwitch:Lcom/vpnapp/KillSwitch;

    invoke-virtual {v0}, Lcom/vpnapp/KillSwitch;->disarm()V

    .line 258
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    :cond_8
    :goto_0
    iput-object v1, p0, Lcom/vpnapp/VpnTunnelService;->tunFd:Landroid/os/ParcelFileDescriptor;

    .line 260
    if-eqz p1, :cond_9

    const-string v0, "ERROR"

    goto :goto_1

    :cond_9
    const-string v0, "DISCONNECTED"

    :goto_1
    sput-object v0, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    .line 264
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/vpnapp/VpnTunnelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 265
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    new-array v2, v2, [J

    const-wide/16 v3, 0x28

    aput-wide v3, v2, v0

    const-wide/16 v5, 0x3c

    const/4 v7, 0x2

    aput-wide v5, v2, v7

    const/4 v5, 0x3

    aput-wide v3, v2, v5

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 266
    goto :goto_2

    :catch_1
    move-exception v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_a
    :goto_2
    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/vpnapp/VpnTunnelService;->broadcastState(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/vpnapp/VpnTunnelService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/vpnapp/VpnTunnelService;->stopSelf()V

    .line 270
    return-void
.end method

.method private updateNotification(Ljava/lang/String;JJ)V
    .locals 1

    .line 318
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vpnapp/VpnTunnelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 319
    invoke-direct/range {p0 .. p5}, Lcom/vpnapp/VpnTunnelService;->buildNotification(Ljava/lang/String;JJ)Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 320
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vpnapp/VpnTunnelService;->tearDown(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    return-void
.end method

.method public onRevoke()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vpnapp/VpnTunnelService;->tearDown(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 78
    new-instance p2, Lcom/vpnapp/ServerStore;

    invoke-direct {p2, p0}, Lcom/vpnapp/ServerStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vpnapp/VpnTunnelService;->store:Lcom/vpnapp/ServerStore;

    .line 79
    invoke-static {p0}, Lcom/vpnapp/RootManager;->restoreState(Landroid/content/Context;)V

    .line 80
    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "com.vpnapp.DISCONNECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 83
    :cond_0
    const-string p3, "host"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/vpnapp/VpnTunnelService;->host:Ljava/lang/String;

    .line 84
    const-string p3, "user"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/vpnapp/VpnTunnelService;->user:Ljava/lang/String;

    .line 85
    const-string p3, "pass"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/vpnapp/VpnTunnelService;->pass:Ljava/lang/String;

    .line 86
    const-string p3, "country"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/vpnapp/VpnTunnelService;->country:Ljava/lang/String;

    .line 87
    const-string p3, "wg_conf"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/vpnapp/VpnTunnelService;->wgConf:Ljava/lang/String;

    .line 88
    const-string p3, "protocol"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/vpnapp/VpnTunnelService;->protocol:Ljava/lang/String;

    .line 89
    const-string p3, "port"

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vpnapp/VpnTunnelService;->port:I

    .line 91
    invoke-direct {p0}, Lcom/vpnapp/VpnTunnelService;->createNotificationChannel()V

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Connecting to "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/vpnapp/VpnTunnelService;->country:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u2026"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v3, v5

    invoke-direct/range {v1 .. v6}, Lcom/vpnapp/VpnTunnelService;->buildNotification(Ljava/lang/String;JJ)Landroid/app/Notification;

    move-result-object p1

    const/16 p3, 0x3e9

    invoke-virtual {p0, p3, p1}, Lcom/vpnapp/VpnTunnelService;->startForeground(ILandroid/app/Notification;)V

    .line 93
    const-string p1, "CONNECTING"

    invoke-direct {p0, p1, v0}, Lcom/vpnapp/VpnTunnelService;->broadcastState(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Lcom/vpnapp/KillSwitch;

    invoke-direct {p1, p0}, Lcom/vpnapp/KillSwitch;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vpnapp/VpnTunnelService;->killSwitch:Lcom/vpnapp/KillSwitch;

    .line 95
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/vpnapp/-$$Lambda$VpnTunnelService$Bltbko_Qw2BnlSR7j5jEW7KkyhQ;

    invoke-direct {p3, p0}, Lcom/vpnapp/-$$Lambda$VpnTunnelService$Bltbko_Qw2BnlSR7j5jEW7KkyhQ;-><init>(Lcom/vpnapp/VpnTunnelService;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 96
    move p3, p2

    return p3

    .line 81
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/vpnapp/VpnTunnelService;->tearDown(Ljava/lang/String;)V

    return p3
.end method
