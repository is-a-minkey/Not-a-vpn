.class public Lcom/vpnapp/TcpSession;
.super Ljava/lang/Object;
.source "TcpSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/TcpSession$State;
    }
.end annotation


# instance fields
.field public channel:Ljava/nio/channels/SocketChannel;

.field public clientAck:J

.field public clientSeq:J

.field public final dstIp:I

.field public final dstPort:S

.field public final inBuffer:Ljava/nio/ByteBuffer;

.field public lastActivity:J

.field public final outBuffer:Ljava/nio/ByteBuffer;

.field public serverSeq:J

.field public final srcIp:I

.field public final srcPort:S

.field public sshLink:Lcom/vpnapp/SshTunnelManager$Link;

.field public state:Lcom/vpnapp/TcpSession$State;


# direct methods
.method public constructor <init>(ISIS)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/vpnapp/TcpSession$State;->SYN_RECEIVED:Lcom/vpnapp/TcpSession$State;

    iput-object v0, p0, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    .line 23
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/vpnapp/TcpSession;->inBuffer:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/TcpSession;->outBuffer:Ljava/nio/ByteBuffer;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vpnapp/TcpSession;->lastActivity:J

    .line 29
    iput p1, p0, Lcom/vpnapp/TcpSession;->srcIp:I

    iput-short p2, p0, Lcom/vpnapp/TcpSession;->srcPort:S

    .line 30
    iput p3, p0, Lcom/vpnapp/TcpSession;->dstIp:I

    iput-short p4, p0, Lcom/vpnapp/TcpSession;->dstPort:S

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 45
    sget-object v0, Lcom/vpnapp/TcpSession$State;->CLOSED:Lcom/vpnapp/TcpSession$State;

    iput-object v0, p0, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    .line 46
    iget-object v0, p0, Lcom/vpnapp/TcpSession;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/TcpSession;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/vpnapp/TcpSession;->sshLink:Lcom/vpnapp/SshTunnelManager$Link;

    invoke-virtual {v0}, Lcom/vpnapp/SshTunnelManager$Link;->close()V

    return-void

    :catch_1
    move-exception v0

    .line 48
    :cond_1
    return-void
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
.end method

.method public isExpired()Z
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/vpnapp/TcpSession;->state:Lcom/vpnapp/TcpSession$State;

    sget-object v1, Lcom/vpnapp/TcpSession$State;->ESTABLISHED:Lcom/vpnapp/TcpSession$State;

    const-wide/16 v2, 0x3a98

    const-wide/32 v4, 0x1d4c0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 39
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vpnapp/TcpSession;->lastActivity:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    :cond_1
    move v2, v1

    return v2
.end method

.method public key()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vpnapp/TcpSession;->srcIp:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/vpnapp/TcpSession;->srcPort:S

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vpnapp/TcpSession;->dstIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/vpnapp/TcpSession;->dstPort:S

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touch()V
    .locals 2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vpnapp/TcpSession;->lastActivity:J

    return-void
.end method
