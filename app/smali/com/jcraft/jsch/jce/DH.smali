.class public Lcom/jcraft/jsch/jce/DH;
.super Ljava/lang/Object;
.source "DH.java"

# interfaces
.implements Lcom/jcraft/jsch/DH;


# instance fields
.field e:Ljava/math/BigInteger;

.field e_array:[B

.field f:Ljava/math/BigInteger;

.field g:Ljava/math/BigInteger;

.field private myKeyAgree:Ljavax/crypto/KeyAgreement;

.field private myKpairGen:Ljava/security/KeyPairGenerator;

.field p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkRange(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 115
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 117
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    return-void

    .line 118
    :cond_1
    :goto_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "invalid DH value"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkRange()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public getE()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 60
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->myKpairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 61
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->myKpairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 63
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    .line 64
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->e_array:[B

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->e_array:[B

    return-object v0
.end method

.method public getK()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 72
    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->f:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->p:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 73
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 75
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->myKpairGen:Ljava/security/KeyPairGenerator;

    .line 53
    const-string v0, "DH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    .line 54
    return-void
.end method

.method setF(Ljava/math/BigInteger;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->f:Ljava/math/BigInteger;

    .line 103
    return-void
.end method

.method public setF([B)V
    .locals 2

    .line 90
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->setF(Ljava/math/BigInteger;)V

    .line 91
    return-void
.end method

.method setG(Ljava/math/BigInteger;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljava/math/BigInteger;

    .line 99
    return-void
.end method

.method public setG([B)V
    .locals 2

    .line 85
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->setG(Ljava/math/BigInteger;)V

    .line 86
    return-void
.end method

.method setP(Ljava/math/BigInteger;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->p:Ljava/math/BigInteger;

    .line 95
    return-void
.end method

.method public setP([B)V
    .locals 2

    .line 80
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->setP(Ljava/math/BigInteger;)V

    .line 81
    return-void
.end method
