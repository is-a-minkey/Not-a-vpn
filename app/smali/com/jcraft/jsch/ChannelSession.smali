.class Lcom/jcraft/jsch/ChannelSession;
.super Lcom/jcraft/jsch/Channel;
.source "ChannelSession.java"


# static fields
.field private static _session:[B


# instance fields
.field protected agent_forwarding:Z

.field protected env:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "[B[B>;"
        }
    .end annotation
.end field

.field protected pty:Z

.field protected tcol:I

.field protected terminal_mode:[B

.field protected thp:I

.field protected trow:I

.field protected ttype:Ljava/lang/String;

.field protected twp:I

.field protected xforwading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "session"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelSession;->_session:[B

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->agent_forwarding:Z

    .line 36
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->xforwading:Z

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    .line 39
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    .line 41
    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    .line 42
    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->tcol:I

    .line 43
    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->trow:I

    .line 44
    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->twp:I

    .line 45
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->thp:I

    .line 46
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    .line 50
    sget-object v0, Lcom/jcraft/jsch/ChannelSession;->_session:[B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->type:[B

    .line 51
    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    .line 52
    return-void
.end method

.method private getEnv()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "[B[B>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    return-object v0
.end method

.method private toByteArray(Ljava/lang/Object;)[B
    .locals 1

    .line 219
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    check-cast p1, [B

    return-object p1
.end method


# virtual methods
.method run()V
    .locals 8

    .line 229
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSession;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 230
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 231
    nop

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    .line 234
    nop

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 252
    goto :goto_1

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v5, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v5, v5

    const/16 v6, 0xe

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getBufferMargin()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 236
    if-nez v3, :cond_1

    .line 237
    goto :goto_0

    .line 238
    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->eof()V

    .line 240
    goto :goto_1

    .line 242
    :cond_2
    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelSession;->close:Z

    if-eqz v4, :cond_3

    .line 243
    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 246
    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 247
    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->recipient:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 248
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 249
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 250
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->thread:Ljava/lang/Thread;

    .line 257
    if-eqz v0, :cond_5

    .line 258
    monitor-enter v0

    .line 259
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 258
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 262
    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->thread:Ljava/lang/Thread;

    .line 264
    return-void
.end method

.method protected sendRequests()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    .line 187
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->agent_forwarding:Z

    if-eqz v1, :cond_0

    .line 188
    new-instance v1, Lcom/jcraft/jsch/RequestAgentForwarding;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestAgentForwarding;-><init>()V

    .line 189
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 192
    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->xforwading:Z

    if-eqz v1, :cond_1

    .line 193
    new-instance v1, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    .line 194
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 197
    :cond_1
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    if-eqz v1, :cond_3

    .line 198
    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    .line 199
    move-object v2, v1

    check-cast v2, Lcom/jcraft/jsch/RequestPtyReq;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/RequestPtyReq;->setTType(Ljava/lang/String;)V

    .line 200
    iget v3, p0, Lcom/jcraft/jsch/ChannelSession;->tcol:I

    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->trow:I

    iget v5, p0, Lcom/jcraft/jsch/ChannelSession;->twp:I

    iget v6, p0, Lcom/jcraft/jsch/ChannelSession;->thp:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/jcraft/jsch/RequestPtyReq;->setTSize(IIII)V

    .line 201
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    if-eqz v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/RequestPtyReq;->setTerminalMode([B)V

    .line 204
    :cond_2
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    if-eqz v1, :cond_5

    .line 208
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 208
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 209
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 210
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 211
    new-instance v4, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {v4}, Lcom/jcraft/jsch/RequestEnv;-><init>()V

    .line 212
    move-object v5, v4

    check-cast v5, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSession;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSession;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/jcraft/jsch/RequestEnv;->setEnv([B[B)V

    .line 213
    invoke-virtual {v4, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    goto :goto_0

    .line 216
    :cond_5
    return-void
.end method

.method public setAgentForwarding(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->agent_forwarding:Z

    .line 61
    return-void
.end method

.method public setEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv([B[B)V

    .line 95
    return-void
.end method

.method public setEnv(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "[B[B>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    .line 80
    monitor-exit p0

    .line 83
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEnv([B[B)V
    .locals 1

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;->getEnv()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit p0

    .line 108
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPty(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    .line 123
    return-void
.end method

.method public setPtySize(IIII)V
    .locals 6

    .line 144
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    .line 145
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/RequestWindowChange;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestWindowChange;-><init>()V

    .line 150
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jcraft/jsch/RequestWindowChange;->setSize(IIII)V

    .line 151
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/jcraft/jsch/RequestWindowChange;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 152
    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_1
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public setPtyType(Ljava/lang/String;)V
    .locals 6

    .line 164
    const/16 v2, 0x50

    const/16 v3, 0x18

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    .line 165
    return-void
.end method

.method public setPtyType(Ljava/lang/String;IIII)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    .line 178
    iput p2, p0, Lcom/jcraft/jsch/ChannelSession;->tcol:I

    .line 179
    iput p3, p0, Lcom/jcraft/jsch/ChannelSession;->trow:I

    .line 180
    iput p4, p0, Lcom/jcraft/jsch/ChannelSession;->twp:I

    .line 181
    iput p5, p0, Lcom/jcraft/jsch/ChannelSession;->thp:I

    .line 182
    return-void
.end method

.method public setTerminalMode([B)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    .line 132
    return-void
.end method

.method public setXForwarding(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->xforwading:Z

    .line 71
    return-void
.end method
