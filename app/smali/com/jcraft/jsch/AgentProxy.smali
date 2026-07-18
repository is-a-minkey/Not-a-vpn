.class Lcom/jcraft/jsch/AgentProxy;
.super Ljava/lang/Object;
.source "AgentProxy.java"


# static fields
.field private static final MAX_AGENT_IDENTITIES:I = 0x800

.field private static final SSH2_AGENTC_ADD_IDENTITY:B = 0x11t

.field private static final SSH2_AGENTC_ADD_ID_CONSTRAINED:B = 0x19t

.field private static final SSH2_AGENTC_REMOVE_ALL_IDENTITIES:B = 0x13t

.field private static final SSH2_AGENTC_REMOVE_IDENTITY:B = 0x12t

.field private static final SSH2_AGENTC_REQUEST_IDENTITIES:B = 0xbt

.field private static final SSH2_AGENTC_SIGN_REQUEST:B = 0xdt

.field private static final SSH2_AGENT_FAILURE:B = 0x1et

.field private static final SSH2_AGENT_IDENTITIES_ANSWER:B = 0xct

.field private static final SSH2_AGENT_SIGN_RESPONSE:B = 0xet

.field private static final SSH_AGENTC_ADD_RSA_IDENTITY:B = 0x7t

.field private static final SSH_AGENTC_ADD_RSA_ID_CONSTRAINED:B = 0x18t

.field private static final SSH_AGENTC_ADD_SMARTCARD_KEY:B = 0x14t

.field private static final SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED:B = 0x1at

.field private static final SSH_AGENTC_LOCK:B = 0x16t

.field private static final SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES:B = 0x9t

.field private static final SSH_AGENTC_REMOVE_RSA_IDENTITY:B = 0x8t

.field private static final SSH_AGENTC_REMOVE_SMARTCARD_KEY:B = 0x15t

.field private static final SSH_AGENTC_REQUEST_RSA_IDENTITIES:B = 0x1t

.field private static final SSH_AGENTC_RSA_CHALLENGE:B = 0x3t

.field private static final SSH_AGENTC_UNLOCK:B = 0x17t

.field private static final SSH_AGENT_CONSTRAIN_CONFIRM:B = 0x2t

.field private static final SSH_AGENT_CONSTRAIN_LIFETIME:B = 0x1t

.field private static final SSH_AGENT_FAILURE:B = 0x5t

.field private static final SSH_AGENT_RSA_IDENTITIES_ANSWER:B = 0x2t

.field private static final SSH_AGENT_RSA_RESPONSE:B = 0x4t

.field private static final SSH_AGENT_RSA_SHA2_256:I = 0x2

.field private static final SSH_AGENT_RSA_SHA2_512:I = 0x4

.field private static final SSH_AGENT_SUCCESS:B = 0x6t

.field private static final SSH_COM_AGENT2_FAILURE:B = 0x66t


# instance fields
.field private final buf:[B

.field private final buffer:Lcom/jcraft/jsch/Buffer;

.field private connector:Lcom/jcraft/jsch/AgentConnector;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/AgentConnector;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buf:[B

    .line 75
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buf:[B

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    iput-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 80
    iput-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;

    .line 81
    return-void
.end method


# virtual methods
.method declared-synchronized addIdentity([B)Z
    .locals 3

    monitor-enter p0

    .line 202
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 203
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 204
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 205
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 206
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 207
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;

    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 213
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 216
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result p1

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getConnector()Lcom/jcraft/jsch/AgentConnector;
    .locals 1

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIdentities()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 86
    nop

    .line 87
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 88
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 89
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 90
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;

    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v1, v3}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    nop

    .line 100
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v1

    .line 104
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 105
    goto :goto_2

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 110
    if-lez v1, :cond_3

    const/16 v2, 0x800

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    .line 120
    goto :goto_2

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    .line 117
    new-instance v5, Lcom/jcraft/jsch/AgentIdentity;

    invoke-direct {v5, p0, v3, v4}, Lcom/jcraft/jsch/AgentIdentity;-><init>(Lcom/jcraft/jsch/AgentProxy;[BLjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    .line 95
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 96
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isRunning()Z
    .locals 4

    monitor-enter p0

    .line 224
    nop

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 226
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 227
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 228
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;

    iget-object v3, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    nop

    .line 236
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v2

    .line 240
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeAllIdentities()V
    .locals 3

    monitor-enter p0

    .line 183
    nop

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 185
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 186
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 187
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;

    iget-object v2, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    goto :goto_0

    :catch_0
    move-exception v0

    .line 192
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 193
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeIdentity([B)Z
    .locals 3

    monitor-enter p0

    .line 161
    :try_start_0
    array-length v0, p1

    const/16 v1, 0x9

    add-int/2addr v0, v1

    .line 162
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 163
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 164
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 165
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 166
    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;

    iget-object v0, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 172
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 175
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result p1

    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sign([B[BLjava/lang/String;)[B
    .locals 4

    monitor-enter p0

    .line 124
    nop

    .line 125
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 126
    :try_start_0
    const-string v3, "rsa-sha2-256"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    nop

    .line 128
    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "rsa-sha2-512"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 129
    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 133
    :cond_1
    :goto_0
    array-length p3, p1

    const/16 v1, 0x11

    add-int/2addr p3, v1

    array-length v1, p2

    add-int/2addr p3, v1

    .line 134
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 135
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p3}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 136
    iget-object v1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    sub-int/2addr p3, v0

    invoke-virtual {v1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 137
    iget-object p3, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 138
    iget-object p3, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p3, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 139
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 140
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->connector:Lcom/jcraft/jsch/AgentConnector;

    iget-object p2, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/AgentConnector;->query(Lcom/jcraft/jsch/Buffer;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    goto :goto_1

    :catch_0
    move-exception p1

    .line 145
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 146
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 149
    :goto_1
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result p1

    .line 153
    const/4 p2, 0x0

    const/16 p3, 0xe

    if-eq p1, p3, :cond_2

    .line 154
    goto :goto_2

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/AgentProxy;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-object p2

    :goto_3
    monitor-exit p0

    throw p1
.end method
