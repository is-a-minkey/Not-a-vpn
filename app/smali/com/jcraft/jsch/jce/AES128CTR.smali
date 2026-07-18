.class public Lcom/jcraft/jsch/jce/AES128CTR;
.super Ljava/lang/Object;
.source "AES128CTR.java"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x10

.field private static final ivsize:I = 0x10


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 45
    const/16 v0, 0x10

    return v0
.end method

.method public getIVSize()I
    .locals 1

    .line 40
    const/16 v0, 0x10

    return v0
.end method

.method public init(I[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 52
    new-array v0, v2, [B

    .line 53
    array-length v3, v0

    invoke-static {p3, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    move-object p3, v0

    .line 56
    :cond_0
    array-length v0, p2

    if-le v0, v2, :cond_1

    .line 57
    new-array v0, v2, [B

    .line 58
    array-length v2, v0

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    move-object p2, v0

    .line 63
    :cond_1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    const-string p2, "AES/CTR/NoPadding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lcom/jcraft/jsch/jce/AES128CTR;->cipher:Ljavax/crypto/Cipher;

    .line 65
    iget-object p2, p0, Lcom/jcraft/jsch/jce/AES128CTR;->cipher:Ljavax/crypto/Cipher;

    .line 66
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 67
    :goto_0
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 65
    invoke-virtual {p2, v2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 68
    nop

    .line 72
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/AES128CTR;->cipher:Ljavax/crypto/Cipher;

    .line 70
    throw p1
.end method

.method public isCBC()Z
    .locals 1

    .line 81
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

    .line 76
    iget-object v0, p0, Lcom/jcraft/jsch/jce/AES128CTR;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 77
    return-void
.end method
