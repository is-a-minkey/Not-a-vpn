.class Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "KeyPairRSA.java"


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static final sshrsa:[B


# instance fields
.field private c_array:[B

.field private ep_array:[B

.field private eq_array:[B

.field private key_size:I

.field private n_array:[B

.field private p_array:[B

.field private prv_array:[B

.field private pub_array:[B

.field private q_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->begin:[B

    .line 83
    const-string v0, "-----END RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->end:[B

    .line 408
    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 42
    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 50
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 51
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 52
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 53
    if-eqz p2, :cond_0

    .line 54
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 56
    :cond_0
    return-void
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 485
    const-string v0, "invalid key format"

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 487
    const/4 v0, 0x1

    aget-object v0, p1, v0

    .line 488
    const/4 v1, 0x2

    aget-object v1, p1, v1

    .line 489
    const/4 v2, 0x3

    aget-object v2, p1, v2

    .line 490
    new-instance v3, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    .line 491
    const/4 p0, 0x4

    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    .line 492
    const/4 p0, 0x5

    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 493
    const/4 p0, 0x6

    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 494
    const/4 p0, 0x7

    aget-object p0, p1, p0

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->publicKeyComment:Ljava/lang/String;

    .line 495
    const/4 p0, 0x0

    iput p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    .line 496
    return-object v3
.end method

.method private getCArray()[B
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    return-object v0
.end method

.method private getEPArray()[B
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 520
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    return-object v0
.end method

.method private getEQArray()[B
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 528
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 543
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 544
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 545
    return-void
.end method

.method public forSSHAgent()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 505
    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 506
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 507
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 508
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 509
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 510
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 511
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 512
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->publicKeyComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 513
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    new-array v1, v1, [B

    .line 514
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 515
    return-object v1
.end method

.method generate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 60
    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 63
    :try_start_0
    const-string v0, "keypairgen.rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/KeyPairGenRSA;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    nop

    .line 64
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenRSA;

    .line 65
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenRSA;->init(I)V

    .line 66
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getE()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 67
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getD()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 68
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getN()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 70
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getP()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 71
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getQ()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 72
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEP()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    .line 73
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEQ()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    .line 74
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenRSA;->getC()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    .line 76
    nop

    .line 77
    nop

    .line 80
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getBegin()[B
    .locals 1

    .line 87
    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->begin:[B

    return-object v0
.end method

.method getEnd()[B
    .locals 1

    .line 92
    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->end:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .line 417
    const/4 v0, 0x2

    return v0
.end method

.method getKeyTypeName()[B
    .locals 1

    .line 412
    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    return-object v0
.end method

.method getOpenSSHv1PrivateKeyBlob()[B
    .locals 6

    .line 126
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getKeyTypeName()[B

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    if-nez v2, :cond_0

    return-object v1

    .line 132
    :cond_0
    nop

    .line 134
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 135
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 136
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 137
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 138
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 139
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 140
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 141
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 142
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 143
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 144
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 145
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 146
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0x80

    ushr-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    .line 147
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 149
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 150
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 151
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 152
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 153
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 154
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 156
    iget-object v1, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v1

    .line 157
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    .line 157
    :goto_0
    nop

    .line 158
    if-eqz v1, :cond_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 161
    :cond_1
    throw v0

    .line 129
    :cond_2
    return-object v1
.end method

.method getPrivateKey()[B
    .locals 4

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    .line 98
    nop

    .line 97
    add-int/2addr v1, v0

    .line 98
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 98
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 99
    nop

    .line 97
    add-int/2addr v1, v0

    .line 99
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 99
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 100
    nop

    .line 97
    add-int/2addr v1, v0

    .line 100
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 100
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 101
    nop

    .line 97
    add-int/2addr v1, v0

    .line 101
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 101
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 102
    nop

    .line 97
    add-int/2addr v1, v0

    .line 102
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 102
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 103
    nop

    .line 97
    add-int/2addr v1, v0

    .line 103
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 103
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 104
    nop

    .line 97
    add-int/2addr v1, v0

    .line 104
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 104
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 105
    nop

    .line 97
    add-int/2addr v1, v0

    .line 105
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 105
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    array-length v2, v2

    .line 97
    add-int/2addr v1, v2

    .line 107
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 109
    new-array v2, v2, [B

    .line 110
    nop

    .line 111
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeSEQUENCE([BII)I

    move-result v1

    .line 112
    new-array v0, v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    .line 121
    return-object v2
.end method

.method public getPublicKeyBlob()[B
    .locals 3

    .line 395
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 397
    return-object v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-nez v0, :cond_1

    .line 400
    move-object v0, v1

    return-object v0

    .line 401
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [[B

    .line 402
    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 403
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 404
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 405
    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 1

    .line 427
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPairRSA;->getSignature([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 5

    .line 434
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jcraft/jsch/SignatureRSA;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 433
    nop

    .line 435
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/SignatureRSA;

    .line 436
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureRSA;->init()V

    .line 437
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-interface {v1, v3, v4}, Lcom/jcraft/jsch/SignatureRSA;->setPrvKey([B[B)V

    .line 439
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/SignatureRSA;->update([B)V

    .line 440
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureRSA;->sign()[B

    move-result-object p1

    .line 441
    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 442
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v1, v2

    .line 443
    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 444
    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object v0, p1

    return-object v0

    .line 445
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    nop

    .line 446
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 447
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string v2, "failed to generate signature"

    invoke-interface {p2, v1, v2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    :cond_0
    return-object v0
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 1

    .line 455
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairRSA;->getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 4

    .line 462
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/jcraft/jsch/SignatureRSA;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 461
    nop

    .line 463
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/SignatureRSA;

    .line 464
    invoke-interface {p1}, Lcom/jcraft/jsch/SignatureRSA;->init()V

    .line 466
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 467
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 468
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 469
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 470
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-interface {p1, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V

    .line 474
    move-object v0, p1

    return-object v0

    .line 475
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    nop

    .line 476
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "failed to create verifier"

    invoke-interface {v1, v2, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    :cond_1
    return-object v0
.end method

.method parse([B)Z
    .locals 7

    .line 169
    nop

    .line 170
    nop

    .line 172
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    iget v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    goto/16 :goto_14

    .line 195
    :cond_0
    iget v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    if-ne v3, v0, :cond_4

    .line 196
    aget-byte v3, p1, v2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    .line 197
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 198
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 199
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 200
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 201
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    .line 202
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 203
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 204
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz p1, :cond_1

    .line 205
    new-instance p1, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {p1, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    .line 209
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    .line 210
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B

    .line 212
    goto/16 :goto_15

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "failed to parse key"

    invoke-interface {p1, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 217
    :cond_3
    return v2

    .line 221
    :cond_4
    iget v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    if-ne v3, v4, :cond_6

    .line 222
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 223
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 224
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    .line 225
    if-eq p1, v4, :cond_5

    .line 226
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "check failed"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_5
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 230
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 231
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 232
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 233
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    .line 234
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 235
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 236
    new-instance p1, Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {p1, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 237
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->publicKeyComment:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    .line 240
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    .line 242
    goto/16 :goto_15

    .line 253
    :cond_6
    const/4 v3, 0x1

    .line 254
    const/4 v4, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 255
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_8

    .line 256
    and-int/lit8 v3, v3, 0x7f

    .line 257
    nop

    .line 258
    nop

    .line 258
    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-gtz v3, :cond_7

    goto :goto_1

    .line 259
    :cond_7
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    .line 263
    :cond_8
    :goto_1
    aget-byte v3, p1, v4

    if-eq v3, v5, :cond_9

    .line 264
    return v2

    .line 265
    :cond_9
    add-int/lit8 v3, v4, 0x1

    .line 266
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 267
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_b

    .line 268
    and-int/lit8 v3, v3, 0x7f

    .line 269
    nop

    .line 270
    move v5, v3

    move v3, v2

    .line 270
    :goto_2
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_a

    goto :goto_3

    .line 271
    :cond_a
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    .line 274
    :cond_b
    :goto_3
    add-int/2addr v3, v4

    .line 276
    add-int/lit8 v3, v3, 0x1

    .line 277
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 278
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_d

    .line 279
    and-int/lit8 v3, v3, 0x7f

    .line 280
    nop

    .line 281
    move v5, v3

    move v3, v2

    .line 281
    :goto_4
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_c

    goto :goto_5

    .line 282
    :cond_c
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_4

    .line 285
    :cond_d
    :goto_5
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    .line 286
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    add-int/2addr v3, v4

    .line 289
    add-int/lit8 v3, v3, 0x1

    .line 290
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 291
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_f

    .line 292
    and-int/lit8 v3, v3, 0x7f

    .line 293
    nop

    .line 294
    move v5, v3

    move v3, v2

    .line 294
    :goto_6
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_e

    goto :goto_7

    .line 295
    :cond_e
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_6

    .line 298
    :cond_f
    :goto_7
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    .line 299
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    add-int/2addr v3, v4

    .line 302
    add-int/lit8 v3, v3, 0x1

    .line 303
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 304
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_11

    .line 305
    and-int/lit8 v3, v3, 0x7f

    .line 306
    nop

    .line 307
    move v5, v3

    move v3, v2

    .line 307
    :goto_8
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_10

    goto :goto_9

    .line 308
    :cond_10
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_8

    .line 311
    :cond_11
    :goto_9
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 312
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    add-int/2addr v3, v4

    .line 315
    add-int/lit8 v3, v3, 0x1

    .line 316
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 317
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_13

    .line 318
    and-int/lit8 v3, v3, 0x7f

    .line 319
    nop

    .line 320
    move v5, v3

    move v3, v2

    .line 320
    :goto_a
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_12

    goto :goto_b

    .line 321
    :cond_12
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_a

    .line 324
    :cond_13
    :goto_b
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 325
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    add-int/2addr v3, v4

    .line 328
    add-int/lit8 v3, v3, 0x1

    .line 329
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 330
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_15

    .line 331
    and-int/lit8 v3, v3, 0x7f

    .line 332
    nop

    .line 333
    move v5, v3

    move v3, v2

    .line 333
    :goto_c
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_14

    goto :goto_d

    .line 334
    :cond_14
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_c

    .line 337
    :cond_15
    :goto_d
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 338
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    add-int/2addr v3, v4

    .line 341
    add-int/lit8 v3, v3, 0x1

    .line 342
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 343
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_17

    .line 344
    and-int/lit8 v3, v3, 0x7f

    .line 345
    nop

    .line 346
    move v5, v3

    move v3, v2

    .line 346
    :goto_e
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_16

    goto :goto_f

    .line 347
    :cond_16
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_e

    .line 350
    :cond_17
    :goto_f
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    .line 351
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    add-int/2addr v3, v4

    .line 354
    add-int/lit8 v3, v3, 0x1

    .line 355
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 356
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_19

    .line 357
    and-int/lit8 v3, v3, 0x7f

    .line 358
    nop

    .line 359
    move v5, v3

    move v3, v2

    .line 359
    :goto_10
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_18

    goto :goto_11

    .line 360
    :cond_18
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_10

    .line 363
    :cond_19
    :goto_11
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    .line 364
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    add-int/2addr v3, v4

    .line 367
    add-int/lit8 v3, v3, 0x1

    .line 368
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 369
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_1b

    .line 370
    and-int/lit8 v3, v3, 0x7f

    .line 371
    nop

    .line 372
    move v5, v4

    move v4, v3

    move v3, v2

    .line 372
    :goto_12
    add-int/lit8 v6, v4, -0x1

    if-gtz v4, :cond_1a

    move v4, v5

    goto :goto_13

    .line 373
    :cond_1a
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    move v5, v4

    move v4, v6

    goto :goto_12

    .line 376
    :cond_1b
    :goto_13
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    .line 377
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    nop

    .line 380
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz p1, :cond_1c

    .line 381
    new-instance p1, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {p1, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    .line 384
    nop

    .line 390
    :cond_1c
    goto :goto_15

    .line 173
    :cond_1d
    :goto_14
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 174
    array-length p1, p1

    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    const-string p1, ""

    invoke-virtual {v3, v4, p1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 178
    aget-object v3, p1, v2

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    .line 179
    aget-object v3, p1, v0

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    .line 180
    aget-object v3, p1, v5

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    .line 181
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    nop

    .line 189
    :try_start_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    .line 190
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    .line 192
    :goto_15
    move v2, v0

    return v2

    :catch_0
    move-exception p1

    .line 183
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 184
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v3, "failed to parse key"

    invoke-interface {v0, v1, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_1e
    return v2

    :catch_1
    move-exception p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 385
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 386
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v3, "failed to parse key"

    invoke-interface {v0, v1, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    :cond_1f
    return v2
.end method
