.class public Lcom/vpnapp/TunProxy;
.super Ljava/lang/Object;
.source "TunProxy.java"


# static fields
.field private static final MAX_SESS:I = 0x200

.field private static final MTU:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "TunProxy"


# instance fields
.field private volatile running:Z

.field private final sessLock:Ljava/lang/Object;

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vpnapp/TcpSession;",
            ">;"
        }
    .end annotation
.end field

.field private final sshManager:Lcom/vpnapp/SshTunnelManager;

.field private final tcpPool:Ljava/util/concurrent/ExecutorService;

.field private final tunIn:Ljava/io/FileInputStream;

.field private final tunOut:Ljava/io/FileOutputStream;

.field private final vpnService:Landroid/net/VpnService;


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;Landroid/net/VpnService;)V
    .locals 1

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vpnapp/TunProxy;-><init>(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;Landroid/net/VpnService;Lcom/vpnapp/SshTunnelManager;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;Landroid/net/VpnService;Lcom/vpnapp/SshTunnelManager;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpnapp/TunProxy;->running:Z

    .line 28
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/TunProxy;->tcpPool:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/vpnapp/TunProxy;->tunIn:Ljava/io/FileInputStream;

    iput-object p2, p0, Lcom/vpnapp/TunProxy;->tunOut:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lcom/vpnapp/TunProxy;->vpnService:Landroid/net/VpnService;

    .line 39
    iput-object p4, p0, Lcom/vpnapp/TunProxy;->sshManager:Lcom/vpnapp/SshTunnelManager;

    .line 40
    return-void
.end method

.method private buildNxdomain([BI)[B
    .locals 2

    .line 231
    new-array v0, p2, [B

    .line 232
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    const/4 p1, 0x2

    const/16 p2, -0x7f

    aput-byte p2, v0, p1

    const/4 p1, 0x3

    const/16 p2, -0x7d

    aput-byte p2, v0, p1

    const/4 p1, 0x6

    aput-byte v1, v0, p1

    const/4 p1, 0x7

    aput-byte v1, v0, p1

    .line 234
    return-object v0
.end method

.method private cleanupSessions()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    nop

    .line 240
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    monitor-exit v0

    .line 245
    return-void

    .line 241
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vpnapp/TcpSession;

    .line 242
    invoke-virtual {v2}, Lcom/vpnapp/TcpSession;->isExpired()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    sget-object v4, Lcom/vpnapp/TcpSession$State;->CLOSED:Lcom/vpnapp/TcpSession$State;

    if-ne v3, v4, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/vpnapp/TcpSession;->close()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private forwardToServer(Lcom/vpnapp/TcpSession;[B)V
    .locals 4

    .line 142
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p1, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    iget-object v1, v1, Lcom/vpnapp/SshTunnelManager$Link;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 144
    iget-object p2, p1, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    iget-object p2, p2, Lcom/vpnapp/SshTunnelManager$Link;->out:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 145
    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/vpnapp/TcpSession;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/vpnapp/TcpSession;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 147
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    nop

    .line 149
    :goto_1
    new-array p2, v0, [B

    const/16 v1, 0x10

    invoke-direct {p0, p1, v1, p2}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 150
    return-void

    :cond_1
    iget-object v1, p1, Lcom/vpnapp/TcpSession;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 151
    const-string v1, "TunProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Forward to server error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p2, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter p2

    .line 153
    :try_start_1
    new-array v0, v0, [B

    const/16 v1, 0x11

    invoke-direct {p0, p1, v1, v0}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 154
    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->close()V

    iget-object v0, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit p2

    .line 157
    :cond_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleDns([BIIIIII)V
    .locals 8

    .line 217
    new-array v2, p7, [B

    .line 218
    const/4 v0, 0x0

    invoke-static {p1, p6, v2, v0, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object p1, p0, Lcom/vpnapp/TunProxy;->tcpPool:Ljava/util/concurrent/ExecutorService;

    new-instance p6, Lcom/vpnapp/-$$Lambda$TunProxy$A0CHBl2845ffGRKw8l-TkqkrEV4;

    move-object v0, p6

    move-object v1, p0

    move v3, p7

    move v4, p3

    move v5, p2

    move v6, p5

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/vpnapp/-$$Lambda$TunProxy$A0CHBl2845ffGRKw8l-TkqkrEV4;-><init>(Lcom/vpnapp/TunProxy;[BIIIII)V

    invoke-interface {p1, p6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 228
    return-void
.end method

.method private handleTcp([BI)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 66
    const/16 v4, 0x28

    if-ge v3, v4, :cond_0

    return-void

    .line 67
    :cond_0
    const/16 v4, 0xc

    invoke-static {v2, v4}, Lcom/vpnapp/IpPacketBuilder;->getInt([BI)I

    move-result v5

    .line 68
    const/16 v6, 0x10

    invoke-static {v2, v6}, Lcom/vpnapp/IpPacketBuilder;->getInt([BI)I

    move-result v7

    .line 69
    const/16 v8, 0x14

    invoke-static {v2, v8}, Lcom/vpnapp/IpPacketBuilder;->getShortU([BI)I

    move-result v8

    .line 70
    const/16 v9, 0x16

    invoke-static {v2, v9}, Lcom/vpnapp/IpPacketBuilder;->getShortU([BI)I

    move-result v9

    .line 71
    const/16 v10, 0x18

    invoke-static {v2, v10}, Lcom/vpnapp/IpPacketBuilder;->getInt([BI)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 72
    const/16 v12, 0x21

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    .line 73
    const/4 v13, 0x0

    aget-byte v14, v2, v13

    and-int/lit8 v14, v14, 0xf

    mul-int/lit8 v14, v14, 0x4

    .line 74
    add-int/2addr v4, v14

    aget-byte v4, v2, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    mul-int/lit8 v4, v4, 0x4

    .line 75
    add-int/2addr v4, v14

    .line 76
    sub-int/2addr v3, v4

    .line 77
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "->"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 79
    iget-object v15, v1, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter v15

    .line 80
    :try_start_0
    iget-object v6, v1, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vpnapp/TcpSession;

    .line 81
    and-int/lit8 v16, v12, 0x2

    const-wide/16 v17, 0x1

    if-eqz v16, :cond_1

    if-nez v6, :cond_1

    .line 82
    new-instance v2, Lcom/vpnapp/TcpSession;

    int-to-short v3, v8

    int-to-short v4, v9

    invoke-direct {v2, v5, v3, v7, v4}, Lcom/vpnapp/TcpSession;-><init>(ISIS)V

    .line 83
    add-long v3, v10, v17

    iput-wide v3, v2, Lcom/vpnapp/TcpSession;->clientSeq:J

    .line 84
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x41efffffffe00000L    # 4.294967295E9

    mul-double/2addr v3, v5

    double-to-long v3, v3

    iput-wide v3, v2, Lcom/vpnapp/TcpSession;->serverSeq:J

    .line 85
    iget-object v3, v1, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-interface {v3, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    nop

    .line 87
    iget-object v3, v1, Lcom/vpnapp/TunProxy;->tcpPool:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/vpnapp/-$$Lambda$TunProxy$cDMMh9YPDmt8n1QCk_ghBTx7qD0;

    invoke-direct {v4, v1, v2}, Lcom/vpnapp/-$$Lambda$TunProxy$cDMMh9YPDmt8n1QCk_ghBTx7qD0;-><init>(Lcom/vpnapp/TunProxy;Lcom/vpnapp/TcpSession;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 88
    goto :goto_0

    :cond_1
    if-eqz v6, :cond_4

    .line 89
    invoke-virtual {v6}, Lcom/vpnapp/TcpSession;->touch()V

    .line 90
    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_2

    .line 91
    iget-wide v2, v6, Lcom/vpnapp/TcpSession;->clientSeq:J

    add-long v2, v2, v17

    iput-wide v2, v6, Lcom/vpnapp/TcpSession;->clientSeq:J

    .line 92
    new-array v2, v13, [B

    const/16 v3, 0x11

    invoke-direct {v1, v6, v3, v2}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 93
    invoke-virtual {v6}, Lcom/vpnapp/TcpSession;->close()V

    iget-object v1, v1, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    goto :goto_0

    :cond_2
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_3

    .line 95
    invoke-virtual {v6}, Lcom/vpnapp/TcpSession;->close()V

    iget-object v1, v1, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto :goto_0

    :cond_3
    const/16 v5, 0x10

    and-int/2addr v5, v12

    if-eqz v5, :cond_4

    if-lez v3, :cond_4

    .line 97
    iget-wide v7, v6, Lcom/vpnapp/TcpSession;->clientSeq:J

    int-to-long v9, v3

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/vpnapp/TcpSession;->clientSeq:J

    .line 98
    new-array v5, v3, [B

    .line 99
    invoke-static {v2, v4, v5, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    invoke-direct {v1, v6, v5}, Lcom/vpnapp/TunProxy;->forwardToServer(Lcom/vpnapp/TcpSession;[B)V

    .line 79
    :cond_4
    :goto_0
    monitor-exit v15

    .line 104
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleUdp([BI)V
    .locals 10

    .line 206
    const/16 v0, 0x1c

    if-ge p2, v0, :cond_0

    return-void

    .line 207
    :cond_0
    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/vpnapp/IpPacketBuilder;->getInt([BI)I

    move-result v4

    .line 208
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/vpnapp/IpPacketBuilder;->getInt([BI)I

    move-result v5

    .line 209
    const/16 v2, 0x14

    invoke-static {p1, v2}, Lcom/vpnapp/IpPacketBuilder;->getShortU([BI)I

    move-result v6

    .line 210
    const/16 v2, 0x16

    invoke-static {p1, v2}, Lcom/vpnapp/IpPacketBuilder;->getShortU([BI)I

    move-result v7

    .line 211
    nop

    .line 212
    sub-int v9, p2, v0

    .line 213
    const/16 p2, 0x35

    if-ne v7, p2, :cond_1

    if-le v9, v1, :cond_1

    const/16 v8, 0x1c

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/vpnapp/TunProxy;->handleDns([BIIIIII)V

    .line 214
    :cond_1
    return-void
.end method

.method static synthetic lambda$0(Lcom/vpnapp/TunProxy;Lcom/vpnapp/TcpSession;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/vpnapp/TunProxy;->openOutbound(Lcom/vpnapp/TcpSession;)V

    return-void
.end method

.method static synthetic lambda$1(Lcom/vpnapp/TunProxy;Lcom/vpnapp/TcpSession;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/vpnapp/TunProxy;->relayFromServer(Lcom/vpnapp/TcpSession;)V

    return-void
.end method

.method static synthetic lambda$2(Lcom/vpnapp/TunProxy;[BIIIII)V
    .locals 1

    .line 220
    invoke-static {p1, p2}, Lcom/vpnapp/DnsResolver;->resolve([BI)[B

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-static {p1, p2, v0}, Lcom/vpnapp/IpPacketBuilder;->buildDnsResponse([BI[B)[B

    move-result-object p1

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vpnapp/TunProxy;->buildNxdomain([BI)[B

    move-result-object p1

    .line 221
    :goto_0
    nop

    .line 224
    invoke-static {p3, p4, p5, p6, p1}, Lcom/vpnapp/IpPacketBuilder;->buildUdpPacket(IIII[B)[B

    move-result-object p1

    .line 225
    :try_start_0
    iget-object p2, p0, Lcom/vpnapp/TunProxy;->tunOut:Ljava/io/FileOutputStream;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p3, p0, Lcom/vpnapp/TunProxy;->tunOut:Ljava/io/FileOutputStream;

    invoke-virtual {p3, p1}, Ljava/io/FileOutputStream;->write([B)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-wide p2, Lcom/vpnapp/VpnTunnelService;->bytesRx:J

    array-length p1, p1

    int-to-long p4, p1

    add-long p1, p2, p4

    sput-wide p1, Lcom/vpnapp/VpnTunnelService;->bytesRx:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 226
    :catch_0
    move-exception p1

    .line 226
    const-string p2, "TunProxy"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "DNS inject error: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private openOutbound(Lcom/vpnapp/TcpSession;)V
    .locals 8

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B

    .line 109
    iget v2, p1, Lcom/vpnapp/TcpSession;->dstIp:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    iget v2, p1, Lcom/vpnapp/TcpSession;->dstIp:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    iget v2, p1, Lcom/vpnapp/TcpSession;->dstIp:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    iget v2, p1, Lcom/vpnapp/TcpSession;->dstIp:I

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 108
    nop

    .line 111
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-short v2, p1, Lcom/vpnapp/TcpSession;->dstPort:S

    const v4, 0xffff

    and-int/2addr v2, v4

    .line 114
    iget-object v4, p0, Lcom/vpnapp/TunProxy;->sshManager:Lcom/vpnapp/SshTunnelManager;

    const/16 v5, 0x2710

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vpnapp/TunProxy;->sshManager:Lcom/vpnapp/SshTunnelManager;

    invoke-virtual {v4}, Lcom/vpnapp/SshTunnelManager;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    iget-object v3, p0, Lcom/vpnapp/TunProxy;->sshManager:Lcom/vpnapp/SshTunnelManager;

    invoke-virtual {v3, v1, v2, v5}, Lcom/vpnapp/SshTunnelManager;->openDirectTcpIp(Ljava/lang/String;II)Lcom/vpnapp/SshTunnelManager$Link;

    move-result-object v1

    iput-object v1, p1, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    .line 117
    sget-object v1, Lcom/vpnapp/TcpSession$State;->ESTABLISHED:Lcom/vpnapp/TcpSession$State;

    iput-object v1, p1, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 120
    iget-object v6, p0, Lcom/vpnapp/TunProxy;->vpnService:Landroid/net/VpnService;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    .line 121
    invoke-virtual {v4, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 122
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 123
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 124
    iput-object v4, p1, Lcom/vpnapp/TcpSession;->channel:Ljava/nio/channels/SocketChannel;

    .line 125
    sget-object v1, Lcom/vpnapp/TcpSession$State;->ESTABLISHED:Lcom/vpnapp/TcpSession$State;

    iput-object v1, p1, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    .line 128
    :goto_0
    new-array v1, v0, [B

    const/16 v2, 0x12

    invoke-direct {p0, p1, v2, v1}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 129
    iget-wide v1, p1, Lcom/vpnapp/TcpSession;->serverSeq:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/vpnapp/TcpSession;->serverSeq:J

    .line 130
    iget-object v1, p0, Lcom/vpnapp/TunProxy;->tcpPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vpnapp/-$$Lambda$TunProxy$LlqGqD_EYcjPZRdhkcgtx9W5j0Q;

    invoke-direct {v2, p0, p1}, Lcom/vpnapp/-$$Lambda$TunProxy$LlqGqD_EYcjPZRdhkcgtx9W5j0Q;-><init>(Lcom/vpnapp/TunProxy;Lcom/vpnapp/TcpSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-void

    :catch_0
    move-exception v1

    .line 132
    const-string v2, "TunProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot open "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->key()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_1
    new-array v0, v0, [B

    const/16 v2, 0x14

    invoke-direct {p0, p1, v2, v0}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 135
    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->close()V

    iget-object v0, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v1

    .line 138
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private relayFromServer(Lcom/vpnapp/TcpSession;)V
    .locals 9

    .line 160
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 161
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    nop

    .line 163
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x11

    :try_start_0
    iget-boolean v4, p0, Lcom/vpnapp/TunProxy;->running:Z

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    sget-object v5, Lcom/vpnapp/TcpSession$State;->ESTABLISHED:Lcom/vpnapp/TcpSession$State;

    if-eq v4, v5, :cond_0

    .line 185
    goto :goto_2

    .line 165
    :cond_0
    iget-object v4, p1, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    const/16 v5, 0x18

    if-eqz v4, :cond_3

    .line 166
    iget-object v4, p1, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    iget-object v4, v4, Lcom/vpnapp/SshTunnelManager$Link;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 167
    if-gez v4, :cond_1

    goto :goto_2

    .line 168
    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    new-array v6, v4, [B

    .line 170
    invoke-static {v1, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    invoke-direct {p0, p1, v5, v6}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 172
    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/ByteBuffer;

    .line 174
    iget-object v4, p1, Lcom/vpnapp/TcpSession;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 175
    if-gez v4, :cond_4

    goto :goto_2

    .line 176
    :cond_4
    if-nez v4, :cond_5

    goto :goto_0

    .line 177
    :cond_5
    new-array v6, v4, [B

    .line 178
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-direct {p0, p1, v5, v6}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 181
    :goto_1
    iget-wide v5, p1, Lcom/vpnapp/TcpSession;->serverSeq:J

    int-to-long v7, v4

    add-long v4, v5, v7

    iput-wide v4, p1, Lcom/vpnapp/TcpSession;->serverSeq:J

    .line 182
    sget-wide v4, Lcom/vpnapp/VpnTunnelService;->bytesRx:J

    add-long/2addr v4, v7

    sput-wide v4, Lcom/vpnapp/VpnTunnelService;->bytesRx:J

    .line 183
    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->touch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 188
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_1
    iget-object v1, p1, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    sget-object v4, Lcom/vpnapp/TcpSession$State;->CLOSED:Lcom/vpnapp/TcpSession$State;

    if-eq v1, v4, :cond_7

    .line 190
    new-array v1, v2, [B

    invoke-direct {p0, p1, v3, v1}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 191
    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->close()V

    iget-object v1, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 187
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 186
    :try_start_2
    iget-boolean v1, p0, Lcom/vpnapp/TunProxy;->running:Z

    if-eqz v1, :cond_8

    const-string v1, "TunProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server relay error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    :cond_8
    iget-object v0, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p1, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    sget-object v4, Lcom/vpnapp/TcpSession$State;->CLOSED:Lcom/vpnapp/TcpSession$State;

    if-eq v1, v4, :cond_9

    .line 190
    new-array v1, v2, [B

    invoke-direct {p0, p1, v3, v1}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 191
    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->close()V

    iget-object v1, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_9
    monitor-exit v0

    .line 195
    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 187
    :goto_3
    nop

    .line 188
    iget-object v1, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_4
    iget-object v4, p1, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    sget-object v5, Lcom/vpnapp/TcpSession$State;->CLOSED:Lcom/vpnapp/TcpSession$State;

    if-eq v4, v5, :cond_a

    .line 190
    new-array v2, v2, [B

    invoke-direct {p0, p1, v3, v2}, Lcom/vpnapp/TunProxy;->sendTcp(Lcom/vpnapp/TcpSession;I[B)V

    .line 191
    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->close()V

    iget-object v2, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vpnapp/TcpSession;->key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_a
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 194
    throw v0

    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method private sendTcp(Lcom/vpnapp/TcpSession;I[B)V
    .locals 10

    .line 199
    :try_start_0
    iget v0, p1, Lcom/vpnapp/TcpSession;->dstIp:I

    iget v1, p1, Lcom/vpnapp/TcpSession;->srcIp:I

    .line 200
    iget-short v2, p1, Lcom/vpnapp/TcpSession;->dstPort:S

    const v3, 0xffff

    and-int/2addr v2, v3

    iget-short v4, p1, Lcom/vpnapp/TcpSession;->srcPort:S

    and-int/2addr v3, v4

    iget-wide v4, p1, Lcom/vpnapp/TcpSession;->serverSeq:J

    iget-wide v6, p1, Lcom/vpnapp/TcpSession;->clientSeq:J

    .line 199
    move v8, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lcom/vpnapp/IpPacketBuilder;->buildTcpPacket(IIIIJJI[B)[B

    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/vpnapp/TunProxy;->tunOut:Ljava/io/FileOutputStream;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p3, p0, Lcom/vpnapp/TunProxy;->tunOut:Ljava/io/FileOutputStream;

    invoke-virtual {p3, p1}, Ljava/io/FileOutputStream;->write([B)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    :catch_0
    move-exception p1

    .line 202
    const-string p2, "TunProxy"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendTcp error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 49
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 52
    nop

    .line 52
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/vpnapp/TunProxy;->running:Z

    if-nez v3, :cond_1

    .line 62
    return-void

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/vpnapp/TunProxy;->tunIn:Ljava/io/FileInputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 54
    const/16 v4, 0x14

    if-ge v3, v4, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    sget-wide v4, Lcom/vpnapp/VpnTunnelService;->bytesTx:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    sput-wide v4, Lcom/vpnapp/VpnTunnelService;->bytesTx:J

    .line 56
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 57
    :cond_3
    const/16 v4, 0x9

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 58
    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    invoke-direct {p0, v0, v3}, Lcom/vpnapp/TunProxy;->handleTcp([BI)V

    goto :goto_1

    .line 59
    :cond_4
    const/16 v5, 0x11

    if-ne v4, v5, :cond_5

    invoke-direct {p0, v0, v3}, Lcom/vpnapp/TunProxy;->handleUdp([BI)V

    .line 60
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/vpnapp/TunProxy;->cleanupSessions()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lcom/vpnapp/TunProxy;->running:Z

    if-eqz v1, :cond_6

    const-string v1, "TunProxy"

    const-string v2, "TUN read error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_6
    return-void
.end method

.method public stop()V
    .locals 3

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/TunProxy;->running:Z

    .line 44
    iget-object v0, p0, Lcom/vpnapp/TunProxy;->tcpPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/vpnapp/TunProxy;->sessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/vpnapp/TunProxy;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    .line 46
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vpnapp/TcpSession;

    invoke-virtual {v2}, Lcom/vpnapp/TcpSession;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
