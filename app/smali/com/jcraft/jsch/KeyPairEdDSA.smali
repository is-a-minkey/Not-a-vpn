.class abstract Lcom/jcraft/jsch/KeyPairEdDSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "KeyPairEdDSA.java"


# instance fields
.field private prv_array:[B

.field private pub_array:[B


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 37
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    .line 38
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 273
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 274
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 275
    return-void
.end method

.method public forSSHAgent()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 259
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getKeyTypeName()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 260
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 261
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 262
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    array-length v3, v3

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    array-length v5, v5

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 265
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->publicKeyComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 266
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    new-array v1, v1, [B

    .line 267
    array-length v2, v1

    invoke-virtual {v0, v1, v4, v2}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 268
    return-object v1
.end method

.method generate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 49
    :try_start_0
    const-string p1, "keypairgen.eddsa"

    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 48
    nop

    .line 50
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    .line 51
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getJceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getKeySize()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->init(Ljava/lang/String;I)V

    .line 52
    invoke-interface {p1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPub()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    .line 53
    invoke-interface {p1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPrv()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    .line 55
    nop

    .line 56
    nop

    .line 59
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getBegin()[B
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getEnd()[B
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method abstract getJceName()Ljava/lang/String;
.end method

.method getKeyTypeName()[B
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getSshName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method getOpenSSHv1PrivateKeyBlob()[B
    .locals 7

    .line 80
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getKeyTypeName()[B

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    if-nez v2, :cond_0

    return-object v1

    .line 85
    :cond_0
    nop

    .line 86
    nop

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    array-length v4, v4

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    array-length v6, v6

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v3, v0

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 93
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    array-length v5, v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 94
    array-length v5, v2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 95
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 97
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 98
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 100
    iget-object v1, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 100
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 101
    :catch_1
    move-exception v0

    move-object v4, v1

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 106
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 101
    :catch_2
    move-exception v0

    move-object v4, v1

    .line 101
    :goto_1
    nop

    .line 102
    if-eqz v4, :cond_1

    .line 103
    :try_start_3
    iget-object v2, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 105
    :cond_1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :goto_2
    nop

    .line 107
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 108
    throw v0

    .line 82
    :cond_2
    return-object v1
.end method

.method getPrivateKey()[B
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPublicKeyBlob()[B
    .locals 3

    .line 179
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    if-nez v0, :cond_1

    .line 184
    move-object v0, v1

    return-object v0

    .line 185
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 186
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getKeyTypeName()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 187
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 188
    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getSshName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getSignature([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 4

    .line 205
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jcraft/jsch/SignatureEdDSA;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 204
    nop

    .line 206
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 207
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureEdDSA;->init()V

    .line 208
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    invoke-interface {v1, v3}, Lcom/jcraft/jsch/SignatureEdDSA;->setPrvKey([B)V

    .line 210
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/SignatureEdDSA;->update([B)V

    .line 211
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureEdDSA;->sign()[B

    move-result-object p1

    .line 212
    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 213
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v1, v2

    .line 214
    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 215
    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object v0, p1

    return-object v0

    .line 216
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    nop

    .line 217
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 218
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string v2, "failed to generate signature"

    invoke-interface {p2, v1, v2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :cond_0
    return-object v0
.end method

.method abstract getSshName()Ljava/lang/String;
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getSshName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 4

    .line 233
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/jcraft/jsch/SignatureEdDSA;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 232
    nop

    .line 234
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 235
    invoke-interface {p1}, Lcom/jcraft/jsch/SignatureEdDSA;->init()V

    .line 237
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getPublicKeyBlob()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getPublicKeyBlob()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 239
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 240
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/SignatureEdDSA;->setPubKey([B)V

    .line 244
    move-object v0, p1

    return-object v0

    .line 245
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 246
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "failed to create verifier"

    invoke-interface {v1, v2, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    :cond_1
    return-object v0
.end method

.method parse([B)Z
    .locals 5

    .line 113
    iget v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->vendor:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->vendor:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto/16 :goto_0

    .line 128
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->vendor:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 131
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 132
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 133
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    .line 134
    if-eq p1, v4, :cond_1

    .line 135
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "check failed"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    .line 142
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getKeySize()I

    move-result v4

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    .line 144
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->publicKeyComment:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto/16 :goto_1

    .line 147
    :catch_0
    move-exception p1

    .line 147
    nop

    .line 148
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v3, "failed to parse key"

    invoke-interface {v0, v2, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    :cond_2
    return v1

    .line 153
    :cond_3
    iget v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->vendor:I

    if-ne v0, v2, :cond_5

    .line 156
    :try_start_1
    const-string v0, "keypairgen_fromprivate.eddsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 157
    const-class v4, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 155
    nop

    .line 158
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenEdDSA;

    .line 159
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairEdDSA;->getJceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->init(Ljava/lang/String;[B)V

    .line 160
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPub()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->pub_array:[B

    .line 161
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenEdDSA;->getPrv()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    goto :goto_1

    .line 163
    :catch_1
    move-exception p1

    .line 163
    nop

    .line 164
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v3, "failed to parse key"

    invoke-interface {v0, v2, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_4
    return v1

    .line 170
    :cond_5
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 171
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "failed to parse key"

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 173
    :cond_6
    return v1

    .line 114
    :cond_7
    :goto_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 115
    array-length p1, p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 118
    :try_start_2
    const-string p1, ""

    invoke-virtual {v0, v3, p1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 119
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->prv_array:[B

    .line 120
    nop

    .line 127
    :goto_1
    move v1, v3

    return v1

    :catch_2
    move-exception p1
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairEdDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v3, "failed to parse key"

    invoke-interface {v0, v2, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :cond_8
    return v1
.end method
