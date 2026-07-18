.class public Lcom/vpnapp/PptpControlChannel;
.super Ljava/lang/Object;
.source "PptpControlChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/PptpControlChannel$NegotiatedParams;
    }
.end annotation


# static fields
.field private static final MSG_CALL_REPLY:S = 0x8s

.field private static final MSG_CALL_REQ:S = 0x7s

.field private static final MSG_CLEAR_REQ:S = 0x9s

.field private static final MSG_ECHO_REQ:S = 0xfs

.field private static final MSG_START_REPLY:S = 0x2s

.field private static final MSG_START_REQ:S = 0x1s

.field public static final PPTP_PORT:I = 0x6bb

.field private static final TAG:Ljava/lang/String; = "PptpControl"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private volatile alive:Z

.field private echoThread:Ljava/lang/Thread;

.field private in:Ljava/io/DataInputStream;

.field public localCallId:I

.field private out:Ljava/io/DataOutputStream;

.field public peerCallId:I

.field public sendWindowSize:I

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/PptpControlChannel;->alive:Z

    .line 30
    const/4 v1, 0x1

    iput v1, p0, Lcom/vpnapp/PptpControlChannel;->localCallId:I

    .line 31
    iput v0, p0, Lcom/vpnapp/PptpControlChannel;->peerCallId:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/vpnapp/PptpControlChannel;->sendWindowSize:I

    .line 12
    return-void
.end method

.method private getMessageType([B)S
    .locals 2

    .line 128
    const/16 v0, 0x8

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int v0, v1, v0

    const/16 v1, 0x9

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method static synthetic lambda$0(Lcom/vpnapp/PptpControlChannel;)V
    .locals 4

    .line 132
    nop

    .line 133
    const/4 v0, 0x1

    .line 133
    :goto_0
    iget-boolean v1, p0, Lcom/vpnapp/PptpControlChannel;->alive:Z

    if-nez v1, :cond_0

    return-void

    .line 135
    :cond_0
    const-wide/16 v1, 0x7530

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 136
    iget-boolean v1, p0, Lcom/vpnapp/PptpControlChannel;->alive:Z

    if-nez v1, :cond_1

    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/vpnapp/PptpControlChannel;->sendEchoReq(I)V

    monitor-exit v1

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "PptpControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Echo failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :catch_1
    move-exception v0

    .line 138
    nop

    .line 141
    return-void
.end method

.method private recvMessage()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/vpnapp/PptpControlChannel;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 117
    if-ltz v0, :cond_4

    if-gez v1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    const/16 v2, 0x8

    shl-int v3, v0, v2

    or-int/2addr v3, v1

    .line 119
    if-lt v3, v2, :cond_3

    const/16 v4, 0x1000

    if-le v3, v4, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-array v4, v3, [B

    .line 121
    int-to-byte v0, v0

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    int-to-byte v0, v1

    const/4 v1, 0x1

    aput-byte v0, v4, v1

    .line 122
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->in:Ljava/io/DataInputStream;

    const/4 v1, 0x2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v4, v1, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 123
    const/4 v0, 0x4

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x5

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x6

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 124
    const v1, 0x1a2b3c4d

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad PPTP magic cookie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    return-object v4

    :cond_3
    :goto_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad PPTP message length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendCallReq()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const/16 v0, 0xa8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v2, 0x1a2b3c4d

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 93
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/vpnapp/PptpControlChannel;->localCallId:I

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v3, 0x186a0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v3, 0x5f5e100

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v0, 0x58c

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 97
    move v0, v2

    :goto_0
    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    .line 98
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 99
    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendClearReq()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v0, 0x1a2b3c4d

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 104
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/vpnapp/PptpControlChannel;->peerCallId:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 105
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 106
    return-void
.end method

.method private sendEchoReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v0, 0x1a2b3c4d

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 111
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 112
    iget-object p1, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 113
    return-void
.end method

.method private sendStartReq()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/16 v0, 0x9c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v2, 0x1a2b3c4d

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 81
    const-string v0, "android"

    const-string v3, "US-ASCII"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    array-length v3, v0

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 83
    array-length v0, v0

    :goto_0
    if-lt v0, v4, :cond_1

    .line 84
    const-string v0, "vpnapp"

    const-string v3, "US-ASCII"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 85
    array-length v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 86
    array-length v0, v0

    :goto_1
    if-lt v0, v4, :cond_0

    .line 87
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 88
    return-void

    :cond_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startEchoKeepalive()V
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$PptpControlChannel$TO7kmMiEDqCoVhuix0y0k2tu864;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$PptpControlChannel$TO7kmMiEDqCoVhuix0y0k2tu864;-><init>(Lcom/vpnapp/PptpControlChannel;)V

    .line 141
    const-string v2, "pptp-echo"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 131
    iput-object v0, p0, Lcom/vpnapp/PptpControlChannel;->echoThread:Ljava/lang/Thread;

    .line 142
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->echoThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 143
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->echoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Lcom/vpnapp/PptpControlChannel$NegotiatedParams;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/PptpControlChannel;->socket:Ljava/net/Socket;

    .line 44
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x6bb

    invoke-direct {v1, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 45
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 46
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/vpnapp/PptpControlChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/vpnapp/PptpControlChannel;->in:Ljava/io/DataInputStream;

    .line 47
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/vpnapp/PptpControlChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/vpnapp/PptpControlChannel;->out:Ljava/io/DataOutputStream;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpnapp/PptpControlChannel;->alive:Z

    .line 49
    const-string v1, "PptpControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TCP connected to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/vpnapp/PptpControlChannel;->sendStartReq()V

    .line 52
    invoke-direct {p0}, Lcom/vpnapp/PptpControlChannel;->recvMessage()[B

    move-result-object v1

    .line 53
    invoke-direct {p0, v1}, Lcom/vpnapp/PptpControlChannel;->getMessageType([B)S

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected Start-Reply, got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/vpnapp/PptpControlChannel;->getMessageType([B)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_0
    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v0, :cond_1

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Start-Reply result="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/vpnapp/PptpControlChannel;->sendCallReq()V

    .line 57
    invoke-direct {p0}, Lcom/vpnapp/PptpControlChannel;->recvMessage()[B

    move-result-object v1

    .line 58
    invoke-direct {p0, v1}, Lcom/vpnapp/PptpControlChannel;->getMessageType([B)S

    move-result v3

    if-eq v3, v2, :cond_2

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected Call-Reply, got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/vpnapp/PptpControlChannel;->getMessageType([B)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_2
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    const/16 v4, 0x9

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lcom/vpnapp/PptpControlChannel;->peerCallId:I

    .line 60
    const/16 v3, 0xa

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v0, :cond_3

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Call-Reply result="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_3
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v2

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vpnapp/PptpControlChannel;->sendWindowSize:I

    .line 62
    const-string v0, "PptpControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call established peerCallId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vpnapp/PptpControlChannel;->peerCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vpnapp/PptpControlChannel;->sendWindowSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/vpnapp/PptpControlChannel;->startEchoKeepalive()V

    .line 65
    new-instance v0, Lcom/vpnapp/PptpControlChannel$NegotiatedParams;

    iget v1, p0, Lcom/vpnapp/PptpControlChannel;->peerCallId:I

    iget v2, p0, Lcom/vpnapp/PptpControlChannel;->localCallId:I

    iget v3, p0, Lcom/vpnapp/PptpControlChannel;->sendWindowSize:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/vpnapp/PptpControlChannel$NegotiatedParams;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public disconnect()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/PptpControlChannel;->alive:Z

    .line 70
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->echoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->echoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 71
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/vpnapp/PptpControlChannel;->sendClearReq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vpnapp/PptpControlChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void

    :catch_1
    move-exception v0

    .line 73
    return-void
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
.end method
