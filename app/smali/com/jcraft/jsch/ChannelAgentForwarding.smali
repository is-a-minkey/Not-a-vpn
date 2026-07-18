.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;
.source "ChannelAgentForwarding.java"


# static fields
.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x4000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x20000

.field private static final SSH2_AGENTC_ADD_IDENTITY:B = 0x11t

.field private static final SSH2_AGENTC_REMOVE_ALL_IDENTITIES:B = 0x13t

.field private static final SSH2_AGENTC_REMOVE_IDENTITY:B = 0x12t

.field private static final SSH2_AGENTC_REQUEST_IDENTITIES:B = 0xbt

.field private static final SSH2_AGENTC_SIGN_REQUEST:B = 0xdt

.field private static final SSH2_AGENT_FAILURE:B = 0x1et

.field private static final SSH2_AGENT_IDENTITIES_ANSWER:B = 0xct

.field private static final SSH2_AGENT_SIGN_RESPONSE:B = 0xet

.field private static final SSH_AGENTC_ADD_RSA_IDENTITY:B = 0x7t

.field private static final SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES:B = 0x9t

.field private static final SSH_AGENTC_REMOVE_RSA_IDENTITY:B = 0x8t

.field private static final SSH_AGENTC_REQUEST_RSA_IDENTITIES:B = 0x1t

.field private static final SSH_AGENTC_RSA_CHALLENGE:B = 0x3t

.field private static final SSH_AGENT_FAILURE:B = 0x5t

.field private static final SSH_AGENT_RSA_IDENTITIES_ANSWER:B = 0x2t

.field private static final SSH_AGENT_RSA_RESPONSE:B = 0x4t

.field private static final SSH_AGENT_RSA_SHA2_256:I = 0x2

.field private static final SSH_AGENT_RSA_SHA2_512:I = 0x4

.field private static final SSH_AGENT_SUCCESS:B = 0x6t


# instance fields
.field private mbuf:Lcom/jcraft/jsch/Buffer;

.field private packet:Lcom/jcraft/jsch/Packet;

.field private rbuf:Lcom/jcraft/jsch/Buffer;

.field private wbuf:Lcom/jcraft/jsch/Buffer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    .line 61
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    .line 62
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    .line 63
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    .line 68
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->lwsize_max:I

    .line 69
    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->lwsize:I

    .line 70
    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->lmpsize:I

    .line 72
    const-string v0, "auth-agent@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->type:[B

    .line 73
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    .line 74
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 77
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->connected:Z

    .line 79
    return-void
.end method

.method private send([B)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 251
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 252
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->recipient:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 253
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    const/4 v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 254
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 258
    return-void

    :catch_0
    move-exception p1

    .line 260
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method


# virtual methods
.method eof_remote()V
    .locals 0

    .line 264
    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->eof_remote()V

    .line 265
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->eof()V

    .line 266
    return-void
.end method

.method run()V
    .locals 1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->sendOpenConfirmation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    :catch_0
    move-exception v0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->close:Z

    .line 87
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->disconnect()V

    .line 89
    return-void
.end method

.method write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    .line 96
    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    .line 101
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iput-object v0, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 107
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 108
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p2

    if-le p1, p2, :cond_2

    .line 109
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget p2, p1, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p1, Lcom/jcraft/jsch/Buffer;->s:I

    .line 110
    return-void

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result p1

    .line 115
    nop

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p2
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    nop

    .line 122
    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object p3

    .line 123
    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getUserInfo()Lcom/jcraft/jsch/UserInfo;

    move-result-object p2

    .line 125
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 127
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    .line 128
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 129
    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v0

    .line 130
    monitor-enter v0

    .line 131
    nop

    .line 132
    move p2, v2

    move p1, p2

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p3

    if-lt p2, p3, :cond_5

    .line 137
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 138
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v2, p1, :cond_3

    .line 130
    monitor-exit v0

    goto/16 :goto_9

    .line 139
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Identity;

    .line 140
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object p1

    .line 141
    if-nez p1, :cond_4

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 144
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    sget-object p2, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 138
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/Identity;

    .line 134
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object p3

    if-eqz p3, :cond_6

    .line 135
    add-int/lit8 p1, p1, 0x1

    .line 132
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 147
    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 148
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 149
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 150
    goto/16 :goto_9

    :cond_8
    const/16 v1, 0xd

    if-ne p1, v1, :cond_17

    .line 151
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 152
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    .line 153
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    .line 159
    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v4

    .line 160
    nop

    .line 161
    monitor-enter v4

    .line 162
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p3

    const/4 v5, 0x0

    if-lt v2, p3, :cond_9

    move-object p3, v5

    goto :goto_5

    .line 163
    :cond_9
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/Identity;

    .line 164
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v6

    if-nez v6, :cond_a

    .line 165
    goto/16 :goto_7

    .line 166
    :cond_a
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v6

    invoke-static {p1, v6}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v6

    if-nez v6, :cond_b

    .line 167
    goto/16 :goto_7

    .line 169
    :cond_b
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 170
    if-nez p2, :cond_c

    .line 171
    goto/16 :goto_7

    .line 172
    :cond_c
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_4

    .line 173
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Passphrase for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/jcraft/jsch/UserInfo;->promptPassphrase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 174
    goto :goto_4

    .line 177
    :cond_e
    invoke-interface {p2}, Lcom/jcraft/jsch/UserInfo;->getPassphrase()Ljava/lang/String;

    move-result-object v6

    .line 178
    if-nez v6, :cond_f

    .line 179
    goto :goto_4

    .line 182
    :cond_f
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    :try_start_3
    invoke-interface {p3, v6}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    move-result v6
    :try_end_3
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_c

    .line 185
    goto :goto_4

    .line 187
    :catch_0
    move-exception v6

    .line 187
    nop

    .line 188
    nop

    .line 193
    :cond_10
    :goto_4
    :try_start_4
    invoke-interface {p3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 194
    nop

    .line 195
    nop

    .line 161
    :goto_5
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    nop

    .line 202
    if-eqz p3, :cond_14

    .line 203
    new-instance p2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 204
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    .line 205
    const-string p2, "ssh-rsa"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 206
    and-int p1, v3, v0

    if-eqz p1, :cond_11

    .line 207
    const-string p1, "rsa-sha2-256"

    invoke-interface {p3, v1, p1}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    move-result-object v5

    .line 208
    goto :goto_6

    :cond_11
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_12

    .line 209
    const-string p1, "rsa-sha2-512"

    invoke-interface {p3, v1, p1}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    move-result-object v5

    .line 210
    goto :goto_6

    .line 211
    :cond_12
    const-string p1, "ssh-rsa"

    invoke-interface {p3, v1, p1}, Lcom/jcraft/jsch/Identity;->getSignature([BLjava/lang/String;)[B

    move-result-object v5

    .line 213
    goto :goto_6

    .line 214
    :cond_13
    invoke-interface {p3, v1}, Lcom/jcraft/jsch/Identity;->getSignature([B)[B

    move-result-object v5

    .line 218
    :cond_14
    :goto_6
    if-nez v5, :cond_15

    .line 219
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 220
    goto/16 :goto_9

    .line 221
    :cond_15
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 222
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 224
    goto :goto_9

    .line 162
    :cond_16
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_17
    const/4 p2, 0x6

    const/16 v0, 0x12

    if-ne p1, v0, :cond_18

    .line 225
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 226
    invoke-interface {p3, p1}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    .line 227
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 228
    goto :goto_9

    :cond_18
    const/16 v0, 0x9

    if-ne p1, v0, :cond_19

    .line 229
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 230
    goto :goto_9

    :cond_19
    const/16 v0, 0x13

    if-ne p1, v0, :cond_1a

    .line 231
    invoke-interface {p3}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    .line 232
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 233
    goto :goto_9

    :cond_1a
    const/4 v0, 0x5

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1c

    .line 234
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p1

    .line 235
    new-array p1, p1, [B

    .line 236
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 237
    invoke-interface {p3, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    move-result p1

    .line 238
    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    if-eqz p1, :cond_1b

    goto :goto_8

    :cond_1b
    move p2, v0

    :goto_8
    invoke-virtual {p3, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 239
    goto :goto_9

    .line 240
    :cond_1c
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    iget p2, p1, Lcom/jcraft/jsch/Buffer;->s:I

    iget-object p3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Lcom/jcraft/jsch/Buffer;->s:I

    .line 241
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 244
    :goto_9
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result p1

    new-array p1, p1, [B

    .line 245
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 246
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelAgentForwarding;->send([B)V

    .line 247
    return-void

    :catch_1
    move-exception p1

    .line 119
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
