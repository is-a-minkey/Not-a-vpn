.class public Lcom/jcraft/jsch/jce/SignatureDSA;
.super Ljava/lang/Object;
.source "SignatureDSA.java"

# interfaces
.implements Lcom/jcraft/jsch/SignatureDSA;


# instance fields
.field keyFactory:Ljava/security/KeyFactory;

.field signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "SHA1withDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    .line 47
    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->keyFactory:Ljava/security/KeyFactory;

    .line 48
    return-void
.end method

.method protected normalize([B)[B
    .locals 4

    .line 154
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 155
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    .line 156
    array-length v3, v2

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/jce/SignatureDSA;->normalize([B)[B

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    return-object p1
.end method

.method public setPrvKey([B[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/security/spec/DSAPrivateKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 61
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4}, Ljava/math/BigInteger;-><init>([B)V

    .line 60
    invoke-direct {v0, v1, p1, p2, p3}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 62
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 64
    return-void
.end method

.method public setPubKey([B[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 53
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4}, Ljava/math/BigInteger;-><init>([B)V

    .line 52
    invoke-direct {v0, v1, p1, p2, p3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 54
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 56
    return-void
.end method

.method public sign()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 75
    nop

    .line 76
    nop

    .line 77
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 79
    new-array v2, v1, [B

    .line 80
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v0, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    add-int/2addr v1, v5

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 82
    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 84
    new-array v1, v1, [B

    .line 85
    array-length v6, v1

    invoke-static {v0, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const/16 v0, 0x28

    new-array v5, v0, [B

    .line 91
    array-length v6, v2

    const/16 v7, 0x14

    if-le v6, v7, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    array-length v8, v2

    if-le v8, v7, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    array-length v8, v2

    sub-int v8, v7, v8

    .line 92
    :goto_1
    array-length v9, v2

    if-le v9, v7, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    array-length v9, v2

    .line 91
    :goto_2
    invoke-static {v2, v6, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length v2, v1

    if-le v2, v7, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    array-length v2, v1

    if-le v2, v7, :cond_4

    move v0, v7

    goto :goto_4

    :cond_4
    array-length v2, v1

    sub-int/2addr v0, v2

    .line 94
    :goto_4
    array-length v2, v1

    if-le v2, v7, :cond_5

    goto :goto_5

    :cond_5
    array-length v7, v1

    .line 93
    :goto_5
    invoke-static {v1, v3, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v5
.end method

.method public update([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 105
    return-void
.end method

.method public verify([B)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    nop

    .line 110
    nop

    .line 112
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 114
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "ssh-dss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 116
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getOffSet()I

    move-result v0

    .line 117
    new-array v3, v1, [B

    .line 118
    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    move-object p1, v3

    .line 122
    :cond_0
    const/16 v0, 0x14

    new-array v1, v0, [B

    .line 123
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/jce/SignatureDSA;->normalize([B)[B

    move-result-object v1

    .line 126
    new-array v3, v0, [B

    .line 127
    invoke-static {p1, v0, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/jce/SignatureDSA;->normalize([B)[B

    move-result-object p1

    .line 131
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0x80

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    :goto_0
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 134
    :goto_1
    array-length v5, v1

    array-length v6, p1

    add-int/2addr v5, v6

    const/4 v6, 0x6

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    add-int/2addr v5, v4

    .line 135
    new-array v5, v5, [B

    .line 136
    const/16 v7, 0x30

    aput-byte v7, v5, v2

    .line 137
    array-length v7, v1

    array-length v8, p1

    add-int/2addr v7, v8

    const/4 v8, 0x4

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 138
    aget-byte v7, v5, v3

    int-to-byte v9, v0

    add-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 139
    aget-byte v7, v5, v3

    int-to-byte v10, v4

    add-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 140
    const/4 v3, 0x2

    aput-byte v3, v5, v3

    .line 141
    array-length v7, v1

    int-to-byte v7, v7

    const/4 v11, 0x3

    aput-byte v7, v5, v11

    .line 142
    aget-byte v7, v5, v11

    add-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v5, v11

    .line 143
    add-int/2addr v0, v8

    array-length v7, v1

    invoke-static {v1, v2, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    aget-byte v0, v5, v11

    add-int/2addr v0, v8

    aput-byte v3, v5, v0

    .line 145
    aget-byte v0, v5, v11

    const/4 v1, 0x5

    add-int/2addr v0, v1

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 146
    aget-byte v0, v5, v11

    add-int/2addr v0, v1

    aget-byte v1, v5, v0

    add-int/2addr v1, v10

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 147
    aget-byte v0, v5, v11

    add-int/2addr v0, v6

    add-int/2addr v0, v4

    array-length v1, p1

    invoke-static {p1, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    nop

    .line 150
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {p1, v5}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method
