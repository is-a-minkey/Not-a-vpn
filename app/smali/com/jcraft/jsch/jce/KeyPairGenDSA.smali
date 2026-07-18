.class public Lcom/jcraft/jsch/jce/KeyPairGenDSA;
.super Ljava/lang/Object;
.source "KeyPairGenDSA.java"

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenDSA;


# instance fields
.field g:[B

.field p:[B

.field q:[B

.field x:[B

.field y:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getG()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->g:[B

    return-object v0
.end method

.method public getP()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->p:[B

    return-object v0
.end method

.method public getQ()[B
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->q:[B

    return-object v0
.end method

.method public getX()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->x:[B

    return-object v0
.end method

.method public getY()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->y:[B

    return-object v0
.end method

.method public init(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 50
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    .line 54
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->x:[B

    .line 55
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->y:[B

    .line 57
    check-cast p1, Ljava/security/interfaces/DSAKey;

    invoke-interface {p1}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->p:[B

    .line 59
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->q:[B

    .line 60
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->g:[B

    .line 61
    return-void
.end method
