.class public Lcom/jcraft/jsch/jce/TripleDESCBC;
.super Ljava/lang/Object;
.source "TripleDESCBC.java"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x18

.field private static final ivsize:I = 0x8


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 47
    const/16 v0, 0x18

    return v0
.end method

.method public getIVSize()I
    .locals 1

    .line 42
    const/16 v0, 0x8

    return v0
.end method

.method public init(I[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    .line 54
    new-array v0, v2, [B

    .line 55
    array-length v2, v0

    invoke-static {p3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    move-object p3, v0

    .line 58
    :cond_0
    array-length v0, p2

    const/16 v2, 0x18

    if-le v0, v2, :cond_1

    .line 59
    new-array v0, v2, [B

    .line 60
    array-length v2, v0

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    move-object p2, v0

    .line 65
    :cond_1
    :try_start_0
    const-string v0, "DESede/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    .line 71
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 72
    const-string p2, "DESede"

    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p2

    .line 73
    invoke-virtual {p2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 74
    iget-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    .line 75
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 76
    :goto_0
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 74
    invoke-virtual {v0, v2, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 77
    nop

    .line 81
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    .line 79
    throw p1
.end method

.method public isCBC()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public update([BII[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 86
    return-void
.end method
