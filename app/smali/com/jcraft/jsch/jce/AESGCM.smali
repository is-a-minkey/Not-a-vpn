.class abstract Lcom/jcraft/jsch/jce/AESGCM;
.super Ljava/lang/Object;
.source "AESGCM.java"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final ivsize:I = 0x10

.field private static final tagsize:I = 0x10


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private initcounter:J

.field private iv:Ljava/nio/ByteBuffer;

.field private keyspec:Ljavax/crypto/spec/SecretKeySpec;

.field private mode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFinal([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 97
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->iv:Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p3

    const-wide/16 v0, 0x1

    add-long/2addr p3, v0

    .line 98
    iget-wide v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->initcounter:J

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "GCM IV would be reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->iv:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 102
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->cipher:Ljavax/crypto/Cipher;

    iget p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->mode:I

    iget-object p3, p0, Lcom/jcraft/jsch/jce/AESGCM;->keyspec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance p4, Ljavax/crypto/spec/GCMParameterSpec;

    iget-object p5, p0, Lcom/jcraft/jsch/jce/AESGCM;->iv:Ljava/nio/ByteBuffer;

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p5

    const/16 v0, 0x80

    invoke-direct {p4, v0, p5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    return-void
.end method

.method public getIVSize()I
    .locals 1

    .line 46
    const/16 v0, 0x10

    return v0
.end method

.method public getTagSize()I
    .locals 1

    .line 51
    const/16 v0, 0x10

    return v0
.end method

.method public init(I[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-le v0, v2, :cond_0

    .line 58
    new-array v0, v2, [B

    .line 59
    array-length v2, v0

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    move-object p3, v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/jce/AESGCM;->getBlockSize()I

    move-result v0

    .line 63
    array-length v2, p2

    if-le v2, v0, :cond_1

    .line 64
    new-array v0, v0, [B

    .line 65
    array-length v2, v0

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    move-object p2, v0

    .line 68
    :cond_1
    nop

    .line 69
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 68
    :goto_0
    iput v1, p0, Lcom/jcraft/jsch/jce/AESGCM;->mode:I

    .line 70
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->iv:Ljava/nio/ByteBuffer;

    .line 71
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->iv:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->initcounter:J

    .line 73
    :try_start_0
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->keyspec:Ljavax/crypto/spec/SecretKeySpec;

    .line 74
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->cipher:Ljavax/crypto/Cipher;

    .line 75
    iget-object p1, p0, Lcom/jcraft/jsch/jce/AESGCM;->cipher:Ljavax/crypto/Cipher;

    iget p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->mode:I

    iget-object v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->keyspec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 76
    nop

    .line 82
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->cipher:Ljavax/crypto/Cipher;

    .line 78
    iput-object p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->keyspec:Ljavax/crypto/spec/SecretKeySpec;

    .line 79
    iput-object p2, p0, Lcom/jcraft/jsch/jce/AESGCM;->iv:Ljava/nio/ByteBuffer;

    .line 80
    throw p1
.end method

.method public isAEAD()Z
    .locals 1

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isCBC()Z
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public update([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 87
    return-void
.end method

.method public updateAAD([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/jcraft/jsch/jce/AESGCM;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 92
    return-void
.end method
