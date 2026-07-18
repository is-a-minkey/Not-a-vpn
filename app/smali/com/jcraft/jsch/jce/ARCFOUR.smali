.class public Lcom/jcraft/jsch/jce/ARCFOUR;
.super Ljava/lang/Object;
.source "ARCFOUR.java"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x10

.field private static final ivsize:I = 0x8


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 44
    const/16 v0, 0x10

    return v0
.end method

.method public getIVSize()I
    .locals 1

    .line 39
    const/16 v0, 0x8

    return v0
.end method

.method public init(I[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    array-length p3, p2

    const/16 v0, 0x10

    if-le p3, v0, :cond_0

    .line 51
    new-array p3, v0, [B

    .line 52
    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    move-object p2, p3

    .line 57
    :cond_0
    :try_start_0
    const-string p3, "RC4"

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->cipher:Ljavax/crypto/Cipher;

    .line 58
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "RC4"

    invoke-direct {p3, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->cipher:Ljavax/crypto/Cipher;

    .line 60
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 61
    :goto_0
    nop

    .line 59
    invoke-virtual {p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 62
    nop

    .line 66
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->cipher:Ljavax/crypto/Cipher;

    .line 64
    throw p1
.end method

.method public isCBC()Z
    .locals 1

    .line 75
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

    .line 70
    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 71
    return-void
.end method
