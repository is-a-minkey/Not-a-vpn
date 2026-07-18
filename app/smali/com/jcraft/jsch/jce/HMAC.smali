.class abstract Lcom/jcraft/jsch/jce/HMAC;
.super Ljava/lang/Object;
.source "HMAC.java"

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# instance fields
.field protected algorithm:Ljava/lang/String;

.field protected bsize:I

.field protected etm:Z

.field private mac:Ljavax/crypto/Mac;

.field protected name:Ljava/lang/String;

.field private final tmp:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->tmp:[B

    .line 36
    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 2

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 80
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 82
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :cond_0
    return-void
.end method

.method public getBlockSize()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/jcraft/jsch/jce/HMAC;->bsize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->name:Ljava/lang/String;

    return-object v0
.end method

.method public init([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    array-length v0, p1

    iget v1, p0, Lcom/jcraft/jsch/jce/HMAC;->bsize:I

    if-le v0, v1, :cond_0

    .line 51
    iget v0, p0, Lcom/jcraft/jsch/jce/HMAC;->bsize:I

    new-array v0, v0, [B

    .line 52
    iget v1, p0, Lcom/jcraft/jsch/jce/HMAC;->bsize:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    move-object p1, v0

    .line 55
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMAC;->algorithm:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->algorithm:Ljava/lang/String;

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->mac:Ljavax/crypto/Mac;

    .line 57
    iget-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 58
    return-void
.end method

.method public isEtM()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/jcraft/jsch/jce/HMAC;->etm:Z

    return v0
.end method

.method public update(I)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->tmp:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 65
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->tmp:[B

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 66
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->tmp:[B

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 67
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 68
    iget-object p1, p0, Lcom/jcraft/jsch/jce/HMAC;->tmp:[B

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v2, v0}, Lcom/jcraft/jsch/jce/HMAC;->update([BII)V

    .line 69
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 74
    return-void
.end method
