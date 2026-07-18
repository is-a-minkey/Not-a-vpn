.class public Lcom/jcraft/jsch/jce/KeyPairGenECDSA;
.super Ljava/lang/Object;
.source "KeyPairGenECDSA.java"

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenECDSA;


# instance fields
.field d:[B

.field params:Ljava/security/spec/ECParameterSpec;

.field prvKey:Ljava/security/interfaces/ECPrivateKey;

.field pubKey:Ljava/security/interfaces/ECPublicKey;

.field r:[B

.field s:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private chop0([B)[B
    .locals 4

    .line 117
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    return-object p1

    .line 119
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    .line 120
    array-length v3, v2

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-static {p1}, Lcom/jcraft/jsch/jce/Util;->bzero([B)V

    .line 122
    move-object p1, v2

    return-object p1

    .line 118
    :cond_1
    return-object p1
.end method

.method private insert0([B)[B
    .locals 4

    .line 110
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 111
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    invoke-static {p1}, Lcom/jcraft/jsch/jce/Util;->bzero([B)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public getD()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:[B

    return-object v0
.end method

.method getPrivateKey()Ljava/security/interfaces/ECPrivateKey;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->prvKey:Ljava/security/interfaces/ECPrivateKey;

    return-object v0
.end method

.method getPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->pubKey:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method public getR()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->r:[B

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->s:[B

    return-object v0
.end method

.method public init(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    nop

    .line 49
    const/16 v0, 0x209

    const/16 v1, 0x180

    const/16 v2, 0x100

    if-ne p1, v2, :cond_0

    .line 50
    const-string v3, "secp256r1"

    goto :goto_0

    .line 51
    :cond_0
    if-ne p1, v1, :cond_1

    .line 52
    const-string v3, "secp384r1"

    goto :goto_0

    .line 53
    :cond_1
    if-ne p1, v0, :cond_8

    .line 54
    const-string v3, "secp521r1"

    .line 58
    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_2

    goto/16 :goto_2

    .line 59
    :cond_2
    const-string v5, "EC"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    .line 60
    new-instance v6, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v6, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 62
    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/ECPrivateKey;

    iput-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->prvKey:Ljava/security/interfaces/ECPrivateKey;

    .line 64
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    iput-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->pubKey:Ljava/security/interfaces/ECPublicKey;

    .line 65
    iget-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->pubKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    iput-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->params:Ljava/security/spec/ECParameterSpec;

    .line 66
    iget-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->prvKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:[B

    .line 67
    iget-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->pubKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->r:[B

    .line 69
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->s:[B

    .line 71
    iget-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->r:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->s:[B

    array-length v6, v6

    if-eq v5, v6, :cond_3

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    if-ne p1, v2, :cond_4

    iget-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->r:[B

    array-length v5, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    if-ne p1, v1, :cond_5

    iget-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->r:[B

    array-length v5, v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_5

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    if-ne p1, v0, :cond_7

    iget-object v5, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->r:[B

    array-length v5, v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_7

    .line 78
    nop

    .line 80
    :goto_2
    iget-object p1, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:[B

    array-length p1, p1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->r:[B

    array-length v0, v0

    if-ge p1, v0, :cond_6

    .line 81
    iget-object p1, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:[B

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->insert0([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:[B

    .line 83
    :cond_6
    return-void

    .line 58
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 56
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported key size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
