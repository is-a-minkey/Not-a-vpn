.class public Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.super Lcom/jcraft/jsch/Channel;
.source "ChannelForwardedTCPIP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;,
        Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;
    }
.end annotation


# static fields
.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x4000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x20000

.field private static final TIMEOUT:I = 0x2710

.field private static pool:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

.field private daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    .line 41
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    .line 44
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 45
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 49
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lwsize_max:I

    .line 50
    iput v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lwsize:I

    .line 51
    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->lmpsize:I

    .line 52
    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->io:Lcom/jcraft/jsch/IO;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->connected:Z

    .line 54
    return-void
.end method

.method static addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 205
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 207
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "PortForwardingR: remote port "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_0
    new-instance v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    invoke-direct {v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;-><init>()V

    .line 211
    iput-object p0, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->session:Lcom/jcraft/jsch/Session;

    .line 212
    iput p2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->rport:I

    .line 213
    iput p3, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->allocated_rport:I

    .line 214
    iput-object p4, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->target:Ljava/lang/String;

    .line 215
    iput p5, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    .line 216
    iput-object p1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->address_to_bind:Ljava/lang/String;

    .line 217
    iput-object p6, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->factory:Lcom/jcraft/jsch/SocketFactory;

    .line 218
    sget-object p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 206
    monitor-exit v0

    .line 220
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 225
    sget-object p3, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter p3

    .line 226
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "PortForwardingR: remote port "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;-><init>()V

    .line 230
    iput-object p0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->session:Lcom/jcraft/jsch/Session;

    .line 231
    iput p2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->rport:I

    .line 232
    iput p2, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->allocated_rport:I

    .line 233
    iput-object p4, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->target:Ljava/lang/String;

    .line 234
    iput-object p5, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->arg:[Ljava/lang/Object;

    .line 235
    iput-object p1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->address_to_bind:Ljava/lang/String;

    .line 236
    sget-object p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 225
    monitor-exit p3

    .line 238
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static delPort(Lcom/jcraft/jsch/ChannelForwardedTCPIP;)V
    .locals 2

    .line 241
    nop

    .line 243
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 247
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    iget p0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    invoke-static {v1, p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;I)V

    .line 249
    :cond_0
    return-void
.end method

.method static delPort(Lcom/jcraft/jsch/Session;)V
    .locals 7

    .line 293
    nop

    .line 294
    nop

    .line 295
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 296
    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 297
    const/4 v2, 0x0

    move v4, v2

    move v3, v4

    :goto_0
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :goto_1
    if-lt v2, v3, :cond_0

    .line 307
    return-void

    .line 305
    :cond_0
    aget v0, v1, v2

    invoke-static {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;I)V

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :cond_1
    :try_start_1
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 299
    iget-object v6, v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->session:Lcom/jcraft/jsch/Session;

    if-ne v6, p0, :cond_2

    .line 300
    add-int/lit8 v6, v3, 0x1

    iget v5, v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    aput v5, v1, v3

    move v3, v6

    .line 297
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static delPort(Lcom/jcraft/jsch/Session;I)V
    .locals 1

    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method static delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V
    .locals 3

    .line 256
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 257
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    .line 258
    if-nez v1, :cond_0

    .line 259
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v1

    .line 260
    :cond_0
    if-nez v1, :cond_1

    .line 261
    monitor-exit v0

    return-void

    .line 262
    :cond_1
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 263
    if-nez p1, :cond_2

    .line 264
    iget-object p1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->address_to_bind:Ljava/lang/String;

    .line 266
    :cond_2
    if-nez p1, :cond_3

    .line 267
    const-string p1, "0.0.0.0"

    .line 256
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 272
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 280
    :try_start_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 281
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 282
    const-string v2, "cancel-tcpip-forward"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 283
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 284
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 285
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 286
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    return-void

    :catch_0
    move-exception p0

    .line 290
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;
    .locals 4

    .line 155
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 156
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 168
    monitor-exit v0

    return-object v3

    .line 157
    :cond_0
    sget-object v2, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 158
    iget-object v2, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->session:Lcom/jcraft/jsch/Session;

    if-eq v2, p0, :cond_1

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    iget v2, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    if-eq v2, p2, :cond_2

    .line 161
    iget v2, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    if-nez v2, :cond_3

    iget v2, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    if-eq v2, p2, :cond_2

    .line 162
    goto :goto_1

    .line 164
    :cond_2
    if-eqz p1, :cond_4

    iget-object v2, v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->address_to_bind:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 165
    nop

    .line 156
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_4
    monitor-exit v0

    return-object v3

    .line 155
    :catchall_0
    move-exception p0

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;
    .locals 7

    .line 173
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 174
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    monitor-enter v1

    .line 175
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    sget-object v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 187
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    .line 190
    return-object p0

    .line 188
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p0, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    :cond_1
    :try_start_1
    sget-object v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->pool:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 177
    iget-object v5, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->session:Lcom/jcraft/jsch/Session;

    if-ne v5, p0, :cond_3

    .line 178
    instance-of v5, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    if-eqz v5, :cond_2

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 181
    :cond_2
    nop

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->allocated_rport:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->target:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    iget v4, v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 175
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 194
    if-nez p0, :cond_0

    .line 195
    const-string p0, "localhost"

    return-object p0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    return-object p0

    .line 197
    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private setSocketFactory(Lcom/jcraft/jsch/SocketFactory;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    instance-of v0, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    check-cast v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    iput-object p1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->factory:Lcom/jcraft/jsch/SocketFactory;

    .line 316
    :cond_0
    return-void
.end method


# virtual methods
.method getData(Lcom/jcraft/jsch/Buffer;)V
    .locals 5

    .line 121
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->setRecipient(I)V

    .line 122
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->setRemoteWindowSize(J)V

    .line 123
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->setRemotePacketSize(I)V

    .line 124
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 126
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 127
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 135
    nop

    .line 137
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, p1

    .line 142
    :goto_0
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 143
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez v3, :cond_0

    .line 144
    invoke-static {v2, p1, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    if-nez p1, :cond_1

    .line 147
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ChannelForwardedTCPIP: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not registered."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-interface {p1, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 152
    :cond_1
    return-void
.end method

.method public getRemotePort()I
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    iget v1, v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;->rport:I

    :cond_0
    return v1
.end method

.method public run()V
    .locals 8

    .line 59
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    instance-of v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;

    .line 62
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->target:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 61
    nop

    .line 63
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    .line 65
    new-instance v2, Ljava/io/PipedOutputStream;

    invoke-direct {v2}, Ljava/io/PipedOutputStream;-><init>()V

    .line 66
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->io:Lcom/jcraft/jsch/IO;

    new-instance v5, Lcom/jcraft/jsch/Channel$PassiveInputStream;

    const v6, 0x8000

    invoke-direct {v5, v2, v6}, Lcom/jcraft/jsch/Channel$PassiveInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    invoke-virtual {v4, v5, v3}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;Z)V

    .line 68
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, p0, v4, v2}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->setChannel(Lcom/jcraft/jsch/ChannelForwardedTCPIP;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 69
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iget-object v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigDaemon;->arg:[Ljava/lang/Object;

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->setArg([Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->daemon:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->config:Lcom/jcraft/jsch/ChannelForwardedTCPIP$Config;

    check-cast v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;

    .line 73
    nop

    .line 74
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->factory:Lcom/jcraft/jsch/SocketFactory;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->target:Ljava/lang/String;

    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    const/16 v3, 0x2710

    invoke-static {v2, v1, v3}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->target:Ljava/lang/String;

    iget v1, v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP$ConfigLHost;->lport:I

    invoke-interface {v2, v3, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    .line 73
    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    .line 76
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 77
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 78
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 80
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->sendOpenConfirmation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    nop

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->thread:Ljava/lang/Thread;

    .line 89
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 90
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 91
    nop

    .line 93
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    .line 94
    nop

    .line 94
    :goto_2
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->io:Lcom/jcraft/jsch/IO;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->io:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-nez v3, :cond_2

    .line 111
    goto :goto_3

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->io:Lcom/jcraft/jsch/IO;

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

    .line 96
    if-gtz v3, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->eof()V

    .line 98
    goto :goto_3

    .line 100
    :cond_3
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 101
    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 102
    iget v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->recipient:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 103
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 104
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 105
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :try_start_2
    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->close:Z

    if-eqz v4, :cond_4

    .line 107
    monitor-exit p0

    goto :goto_3

    .line 108
    :cond_4
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 105
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 116
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->disconnect()V

    .line 117
    return-void

    :catch_1
    move-exception v1

    .line 82
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->sendOpenFailure(I)V

    .line 83
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->close:Z

    .line 84
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->disconnect()V

    .line 85
    return-void
.end method
