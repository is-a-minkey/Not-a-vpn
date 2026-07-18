.class public Lcom/jcraft/jsch/jce/ECDHN;
.super Ljava/lang/Object;
.source "ECDHN.java"

# interfaces
.implements Lcom/jcraft/jsch/ECDH;


# static fields
.field private static three:Ljava/math/BigInteger;

.field private static two:Ljava/math/BigInteger;


# instance fields
.field Q_array:[B

.field private myKeyAgree:Ljavax/crypto/KeyAgreement;

.field publicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/ECDHN;->two:Ljava/math/BigInteger;

    .line 76
    sget-object v0, Lcom/jcraft/jsch/jce/ECDHN;->two:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jce/ECDHN;->three:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private chop0([B)[B
    .locals 4

    .line 143
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    .line 144
    return-object p1

    .line 145
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 146
    array-length v3, v1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-static {p1}, Lcom/jcraft/jsch/jce/Util;->bzero([B)V

    .line 148
    move-object p1, v1

    return-object p1
.end method

.method private insert0([B)[B
    .locals 4

    .line 134
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 135
    return-object p1

    .line 136
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 137
    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    invoke-static {p1}, Lcom/jcraft/jsch/jce/Util;->bzero([B)V

    .line 139
    move-object p1, v1

    return-object p1
.end method

.method private toPoint([B[B)[B
    .locals 4

    .line 126
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 127
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    .line 128
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    array-length p1, p1

    add-int/2addr p1, v1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    return-object v0
.end method


# virtual methods
.method public getQ()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/jcraft/jsch/jce/ECDHN;->Q_array:[B

    return-object v0
.end method

.method public getSecret([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, p1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 69
    new-instance p1, Ljava/security/spec/ECPublicKeySpec;

    iget-object p2, p0, Lcom/jcraft/jsch/jce/ECDHN;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 70
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ECDHN;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p2, p1, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 72
    iget-object p1, p0, Lcom/jcraft/jsch/jce/ECDHN;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    return-object p1
.end method

.method public init(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/ECDHN;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    .line 50
    new-instance v0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;

    invoke-direct {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->init(I)V

    .line 52
    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->getPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/ECDHN;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 53
    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->getR()[B

    move-result-object p1

    .line 54
    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->getS()[B

    move-result-object v1

    .line 55
    invoke-direct {p0, p1, v1}, Lcom/jcraft/jsch/jce/ECDHN;->toPoint([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/ECDHN;->Q_array:[B

    .line 56
    iget-object p1, p0, Lcom/jcraft/jsch/jce/ECDHN;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->getPrivateKey()Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 57
    return-void
.end method

.method public validate([B[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 84
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 88
    new-instance p2, Ljava/security/spec/ECPoint;

    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 89
    sget-object v2, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    invoke-virtual {p2, v2}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 90
    return v2

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ECDHN;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p2

    .line 101
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    check-cast v3, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v3}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 104
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 105
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gtz v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_1

    return v2

    .line 110
    :cond_1
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    sget-object v4, Lcom/jcraft/jsch/jce/ECDHN;->three:Ljava/math/BigInteger;

    invoke-virtual {v0, v4, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 111
    sget-object v0, Lcom/jcraft/jsch/jce/ECDHN;->two:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 112
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 113
    return v2

    .line 122
    :cond_2
    move v2, v1

    return v2

    .line 106
    :cond_3
    return v2
.end method
