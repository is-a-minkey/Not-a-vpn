.class abstract Lcom/jcraft/jsch/DHECNKEM;
.super Lcom/jcraft/jsch/KeyExchange;
.source "DHECNKEM.java"


# static fields
.field private static final SSH_MSG_KEX_HYBRID_INIT:I = 0x1e

.field private static final SSH_MSG_KEX_HYBRID_REPLY:I = 0x1f


# instance fields
.field C_INIT:[B

.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field e:[B

.field private ecdh:Lcom/jcraft/jsch/ECDH;

.field protected ecdh_key_len:I

.field protected ecdh_key_size:I

.field private kem:Lcom/jcraft/jsch/KEM;

.field protected kem_encap_len:I

.field protected kem_name:Ljava/lang/String;

.field protected kem_pubkey_len:I

.field private packet:Lcom/jcraft/jsch/Packet;

.field protected sha_name:Ljava/lang/String;

.field private state:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iput-object p2, p0, Lcom/jcraft/jsch/DHECNKEM;->V_S:[B

    .line 61
    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->V_C:[B

    .line 62
    iput-object p4, p0, Lcom/jcraft/jsch/DHECNKEM;->I_S:[B

    .line 63
    iput-object p5, p0, Lcom/jcraft/jsch/DHECNKEM;->I_C:[B

    .line 66
    :try_start_0
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha_name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-class p4, Lcom/jcraft/jsch/HASH;

    invoke-virtual {p3, p4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    .line 67
    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/Class;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    new-array p5, p4, [Ljava/lang/Object;

    invoke-virtual {p3, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/HASH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    .line 68
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {p3}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    nop

    .line 73
    new-instance p3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->buf:Lcom/jcraft/jsch/Buffer;

    .line 74
    new-instance p3, Lcom/jcraft/jsch/Packet;

    iget-object p5, p0, Lcom/jcraft/jsch/DHECNKEM;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3, p5}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->packet:Lcom/jcraft/jsch/Packet;

    .line 76
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 78
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->buf:Lcom/jcraft/jsch/Buffer;

    iget p5, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_pubkey_len:I

    const/4 v0, 0x5

    add-int/2addr p5, v0

    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh_key_len:I

    add-int/2addr p5, v0

    invoke-virtual {p3, p5}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 79
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p5, 0x1e

    invoke-virtual {p3, p5}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 82
    :try_start_1
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-class p5, Lcom/jcraft/jsch/KEM;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    .line 83
    new-array p5, p4, [Ljava/lang/Class;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    new-array p5, p4, [Ljava/lang/Object;

    invoke-virtual {p3, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/KEM;

    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->kem:Lcom/jcraft/jsch/KEM;

    .line 84
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->kem:Lcom/jcraft/jsch/KEM;

    invoke-interface {p3}, Lcom/jcraft/jsch/KEM;->init()V

    .line 87
    const-string p3, "ecdh-sha2-nistp"

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-class p5, Lcom/jcraft/jsch/ECDH;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    .line 86
    nop

    .line 88
    new-array p5, p4, [Ljava/lang/Class;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    new-array p5, p4, [Ljava/lang/Object;

    invoke-virtual {p3, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/ECDH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh:Lcom/jcraft/jsch/ECDH;

    .line 89
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh:Lcom/jcraft/jsch/ECDH;

    iget p5, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh_key_size:I

    invoke-interface {p3, p5}, Lcom/jcraft/jsch/ECDH;->init(I)V

    .line 91
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->kem:Lcom/jcraft/jsch/KEM;

    invoke-interface {p3}, Lcom/jcraft/jsch/KEM;->getPublicKey()[B

    move-result-object p3

    .line 92
    iget-object p5, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh:Lcom/jcraft/jsch/ECDH;

    invoke-interface {p5}, Lcom/jcraft/jsch/ECDH;->getQ()[B

    move-result-object p5

    .line 93
    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_pubkey_len:I

    iget v1, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh_key_len:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->C_INIT:[B

    .line 94
    iget-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->C_INIT:[B

    iget v1, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_pubkey_len:I

    invoke-static {p3, p4, v0, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->C_INIT:[B

    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_pubkey_len:I

    iget v1, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh_key_len:I

    invoke-static {p5, p4, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object p3, p0, Lcom/jcraft/jsch/DHECNKEM;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object p4, p0, Lcom/jcraft/jsch/DHECNKEM;->C_INIT:[B

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 97
    nop

    .line 101
    if-nez p2, :cond_0

    .line 102
    return-void
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHECNKEM;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 107
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string p4, "SSH_MSG_KEX_HYBRID_INIT sent"

    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p2, "expecting SSH_MSG_KEX_HYBRID_REPLY"

    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 112
    :cond_1
    const/16 p1, 0x1f

    iput p1, p0, Lcom/jcraft/jsch/DHECNKEM;->state:I

    .line 113
    return-void

    :catch_0
    move-exception p1

    .line 98
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 70
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget v0, p0, Lcom/jcraft/jsch/DHECNKEM;->state:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_0

    .line 229
    return v1

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 126
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 127
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    .line 128
    const/16 v2, 0x1f

    if-eq v0, v2, :cond_2

    .line 129
    iget-object p1, p0, Lcom/jcraft/jsch/DHECNKEM;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/jcraft/jsch/DHECNKEM;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type: must be SSH_MSG_KEX_HYBRID_REPLY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 132
    :cond_1
    return v1

    .line 135
    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    .line 137
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 138
    array-length v2, v0

    iget v3, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_encap_len:I

    iget v4, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh_key_len:I

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_3

    .line 139
    return v1

    .line 142
    :cond_3
    iget v2, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_encap_len:I

    new-array v2, v2, [B

    .line 143
    iget v3, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh_key_len:I

    new-array v3, v3, [B

    .line 144
    iget v4, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_encap_len:I

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v4, p0, Lcom/jcraft/jsch/DHECNKEM;->kem_encap_len:I

    iget v5, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh_key_len:I

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-static {v3}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh:Lcom/jcraft/jsch/ECDH;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-interface {v4, v5, v7}, Lcom/jcraft/jsch/ECDH;->validate([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 156
    return v1

    .line 159
    :cond_4
    nop

    .line 161
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/DHECNKEM;->kem:Lcom/jcraft/jsch/KEM;

    invoke-interface {v5, v2}, Lcom/jcraft/jsch/KEM;->decapsulate([B)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 162
    :try_start_1
    iget-object v4, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v5, v2

    invoke-interface {v4, v2, v1, v5}, Lcom/jcraft/jsch/HASH;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 163
    nop

    .line 164
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 167
    :try_start_2
    iget-object v4, p0, Lcom/jcraft/jsch/DHECNKEM;->ecdh:Lcom/jcraft/jsch/ECDH;

    aget-object v5, v3, v1

    aget-object v3, v3, v6

    invoke-interface {v4, v5, v3}, Lcom/jcraft/jsch/ECDH;->getSecret([B[B)[B

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    :try_start_3
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v3

    invoke-interface {v2, v3, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 169
    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 172
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->K:[B

    .line 174
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 199
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->V_C:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v2

    .line 200
    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 201
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->V_S:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v2

    .line 202
    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 203
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->I_C:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 205
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->I_S:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 207
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 209
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->C_INIT:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/DHECNKEM;->encodeAsString([BZ)[B

    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 214
    iget-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->K:[B

    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->K:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 215
    iget-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->H:[B

    .line 217
    nop

    .line 218
    nop

    .line 219
    iget-object v0, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    const/4 v4, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 220
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    .line 219
    or-int/2addr v0, v2

    .line 220
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    const/4 v4, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 219
    or-int/2addr v0, v2

    .line 221
    iget-object v2, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    invoke-static {v2, v4, v0}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v2

    .line 222
    add-int/2addr v0, v4

    .line 224
    iget-object v3, p0, Lcom/jcraft/jsch/DHECNKEM;->K_S:[B

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/jcraft/jsch/DHECNKEM;->verify(Ljava/lang/String;[BI[B)Z

    move-result p1

    .line 226
    iput v1, p0, Lcom/jcraft/jsch/DHECNKEM;->state:I

    .line 227
    move v1, p1

    return v1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 170
    :goto_0
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 171
    throw p1

    :catchall_2
    move-exception p1

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v2, v4

    .line 164
    :goto_1
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 165
    throw p1

    return v1
.end method
