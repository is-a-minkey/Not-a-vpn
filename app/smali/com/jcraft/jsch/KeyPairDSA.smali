.class Lcom/jcraft/jsch/KeyPairDSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "KeyPairDSA.java"


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static final sshdss:[B


# instance fields
.field private G_array:[B

.field private P_array:[B

.field private Q_array:[B

.field private key_size:I

.field private prv_array:[B

.field private pub_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->begin:[B

    .line 78
    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->end:[B

    .line 329
    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 7

    .line 42
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 39
    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    .line 48
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 49
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 50
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 51
    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 52
    iput-object p6, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    .line 53
    if-eqz p2, :cond_0

    .line 54
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    .line 55
    :cond_0
    return-void
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 408
    const-string v0, "invalid key format"

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 410
    const/4 v0, 0x1

    aget-object v3, p1, v0

    .line 411
    const/4 v0, 0x2

    aget-object v4, p1, v0

    .line 412
    const/4 v0, 0x3

    aget-object v5, p1, v0

    .line 413
    const/4 v0, 0x4

    aget-object v6, p1, v0

    .line 414
    const/4 v0, 0x5

    aget-object v7, p1, v0

    .line 415
    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    .line 416
    const/4 p0, 0x6

    aget-object p0, p1, p0

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/jcraft/jsch/KeyPairDSA;->publicKeyComment:Ljava/lang/String;

    .line 417
    const/4 p0, 0x0

    iput p0, v0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    .line 418
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 441
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 442
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 443
    return-void
.end method

.method public forSSHAgent()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 427
    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 428
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 429
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 430
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 431
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 432
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 433
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->publicKeyComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 434
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    new-array v1, v1, [B

    .line 435
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 436
    return-object v1
.end method

.method generate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    .line 62
    :try_start_0
    const-string v0, "keypairgen.dsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/KeyPairGenDSA;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    nop

    .line 63
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenDSA;

    .line 64
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenDSA;->init(I)V

    .line 65
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getP()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 66
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getQ()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 67
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getG()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 68
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getY()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 69
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenDSA;->getX()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    .line 71
    nop

    .line 72
    nop

    .line 75
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getBegin()[B
    .locals 1

    .line 82
    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->begin:[B

    return-object v0
.end method

.method getEnd()[B
    .locals 1

    .line 87
    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->end:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method getKeyTypeName()[B
    .locals 1

    .line 333
    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    return-object v0
.end method

.method getOpenSSHv1PrivateKeyBlob()[B
    .locals 6

    .line 115
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getKeyTypeName()[B

    move-result-object v0

    .line 116
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    if-nez v2, :cond_0

    return-object v1

    .line 121
    :cond_0
    nop

    .line 123
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 124
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 125
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 126
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 127
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 128
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 129
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 130
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    array-length v4, v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 131
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 132
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 133
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0x80

    ushr-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    .line 134
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 136
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 137
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 138
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 139
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 140
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 142
    iget-object v1, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v1

    .line 143
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 143
    :goto_0
    nop

    .line 144
    if-eqz v1, :cond_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 147
    :cond_1
    throw v0

    .line 118
    :cond_2
    return-object v1
.end method

.method getPrivateKey()[B
    .locals 4

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    .line 93
    nop

    .line 92
    add-int/2addr v1, v0

    .line 93
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v2

    .line 92
    add-int/2addr v1, v2

    .line 93
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    array-length v2, v2

    .line 92
    add-int/2addr v1, v2

    .line 94
    nop

    .line 92
    add-int/2addr v1, v0

    .line 94
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v2

    .line 92
    add-int/2addr v1, v2

    .line 94
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    array-length v2, v2

    .line 92
    add-int/2addr v1, v2

    .line 95
    nop

    .line 92
    add-int/2addr v1, v0

    .line 95
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v2

    .line 92
    add-int/2addr v1, v2

    .line 95
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    array-length v2, v2

    .line 92
    add-int/2addr v1, v2

    .line 96
    nop

    .line 92
    add-int/2addr v1, v0

    .line 96
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v2

    .line 92
    add-int/2addr v1, v2

    .line 96
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    array-length v2, v2

    .line 92
    add-int/2addr v1, v2

    .line 97
    nop

    .line 92
    add-int/2addr v1, v0

    .line 97
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v2

    .line 92
    add-int/2addr v1, v2

    .line 97
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    array-length v2, v2

    .line 92
    add-int/2addr v1, v2

    .line 99
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 101
    new-array v2, v2, [B

    .line 102
    nop

    .line 103
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/jcraft/jsch/KeyPairDSA;->writeSEQUENCE([BII)I

    move-result v1

    .line 104
    new-array v0, v0, [B

    invoke-virtual {p0, v2, v1, v0}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    .line 110
    return-object v2
.end method

.method public getPublicKeyBlob()[B
    .locals 3

    .line 314
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    .line 315
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 316
    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-nez v0, :cond_1

    .line 319
    move-object v0, v1

    return-object v0

    .line 320
    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [[B

    .line 321
    sget-object v1, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 322
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 323
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 324
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 325
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 326
    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 7

    .line 350
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "signature.dss"

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jcraft/jsch/SignatureDSA;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 349
    nop

    .line 351
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/SignatureDSA;

    .line 352
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureDSA;->init()V

    .line 353
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/jcraft/jsch/SignatureDSA;->setPrvKey([B[B[B[B)V

    .line 355
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/SignatureDSA;->update([B)V

    .line 356
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureDSA;->sign()[B

    move-result-object p1

    .line 357
    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 358
    sget-object v3, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    aput-object v3, v1, v2

    .line 359
    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 360
    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object v0, p1

    return-object v0

    .line 361
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    nop

    .line 362
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "failed to generate signature"

    invoke-interface {v1, v2, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    :cond_0
    return-object v0
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPairDSA;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 6

    .line 378
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "signature.dss"

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jcraft/jsch/SignatureDSA;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 377
    nop

    .line 379
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/SignatureDSA;

    .line 380
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureDSA;->init()V

    .line 382
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 384
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 385
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 386
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 387
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 388
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V

    .line 392
    move-object v0, v1

    return-object v0

    .line 393
    :catch_0
    move-exception v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .line 394
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v4, "failed to create verifier"

    invoke-interface {v2, v3, v4, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    :cond_1
    return-object v0
.end method

.method public getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 0

    .line 403
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getVerifier()Lcom/jcraft/jsch/Signature;

    move-result-object p1

    return-object p1
.end method

.method parse([B)Z
    .locals 7

    .line 155
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    const/16 v4, 0x30

    if-ne v3, v2, :cond_2

    .line 156
    aget-byte v3, p1, v0

    if-eq v3, v4, :cond_1

    .line 157
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 158
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 159
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 160
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 161
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 162
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 163
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    .line 164
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-eqz p1, :cond_0

    .line 165
    new-instance p1, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-direct {p1, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    .line 166
    :cond_0
    goto/16 :goto_f

    .line 168
    :cond_1
    return v0

    .line 169
    :cond_2
    iget v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_17

    iget v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_3

    goto/16 :goto_e

    .line 187
    :cond_3
    iget v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    .line 188
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 189
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 190
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    .line 191
    if-eq p1, v4, :cond_4

    .line 192
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "check failed"

    invoke-direct {p1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_4
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 197
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 198
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 199
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 200
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 201
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    .line 202
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->publicKeyComment:Ljava/lang/String;

    .line 203
    new-instance p1, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-direct {p1, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    .line 205
    goto/16 :goto_f

    .line 208
    :cond_5
    nop

    .line 209
    nop

    .line 211
    aget-byte v3, p1, v0

    if-eq v3, v4, :cond_6

    .line 212
    return v0

    .line 213
    :cond_6
    const/4 v3, 0x1

    .line 214
    const/4 v4, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 215
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_8

    .line 216
    and-int/lit8 v3, v3, 0x7f

    .line 217
    nop

    .line 218
    nop

    .line 218
    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-gtz v3, :cond_7

    goto :goto_1

    .line 219
    :cond_7
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    .line 223
    :cond_8
    :goto_1
    aget-byte v3, p1, v4

    if-eq v3, v5, :cond_9

    .line 224
    return v0

    .line 225
    :cond_9
    add-int/lit8 v3, v4, 0x1

    .line 226
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 227
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_b

    .line 228
    and-int/lit8 v3, v3, 0x7f

    .line 229
    nop

    .line 230
    move v5, v3

    move v3, v0

    .line 230
    :goto_2
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_a

    goto :goto_3

    .line 231
    :cond_a
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    .line 234
    :cond_b
    :goto_3
    add-int/2addr v3, v4

    .line 236
    add-int/lit8 v3, v3, 0x1

    .line 237
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 238
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_d

    .line 239
    and-int/lit8 v3, v3, 0x7f

    .line 240
    nop

    .line 241
    move v5, v3

    move v3, v0

    .line 241
    :goto_4
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_c

    goto :goto_5

    .line 242
    :cond_c
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_4

    .line 245
    :cond_d
    :goto_5
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    .line 246
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    add-int/2addr v3, v4

    .line 249
    add-int/lit8 v3, v3, 0x1

    .line 250
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 251
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_f

    .line 252
    and-int/lit8 v3, v3, 0x7f

    .line 253
    nop

    .line 254
    move v5, v3

    move v3, v0

    .line 254
    :goto_6
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_e

    goto :goto_7

    .line 255
    :cond_e
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_6

    .line 258
    :cond_f
    :goto_7
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    .line 259
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    add-int/2addr v3, v4

    .line 262
    add-int/lit8 v3, v3, 0x1

    .line 263
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 264
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_11

    .line 265
    and-int/lit8 v3, v3, 0x7f

    .line 266
    nop

    .line 267
    move v5, v3

    move v3, v0

    .line 267
    :goto_8
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_10

    goto :goto_9

    .line 268
    :cond_10
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_8

    .line 271
    :cond_11
    :goto_9
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    .line 272
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    add-int/2addr v3, v4

    .line 275
    add-int/lit8 v3, v3, 0x1

    .line 276
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 277
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_13

    .line 278
    and-int/lit8 v3, v3, 0x7f

    .line 279
    nop

    .line 280
    move v5, v3

    move v3, v0

    .line 280
    :goto_a
    add-int/lit8 v6, v5, -0x1

    if-gtz v5, :cond_12

    goto :goto_b

    .line 281
    :cond_12
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    goto :goto_a

    .line 284
    :cond_13
    :goto_b
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    .line 285
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    add-int/2addr v3, v4

    .line 288
    add-int/lit8 v3, v3, 0x1

    .line 289
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 290
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_15

    .line 291
    and-int/lit8 v3, v3, 0x7f

    .line 292
    nop

    .line 293
    move v5, v0

    .line 293
    :goto_c
    add-int/lit8 v6, v3, -0x1

    if-gtz v3, :cond_14

    move v3, v5

    goto :goto_d

    .line 294
    :cond_14
    shl-int/lit8 v3, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v4, v5

    move v5, v3

    move v3, v6

    goto :goto_c

    .line 297
    :cond_15
    :goto_d
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    .line 298
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    nop

    .line 301
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-eqz p1, :cond_16

    .line 302
    new-instance p1, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-direct {p1, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    .line 303
    nop

    .line 309
    :cond_16
    goto :goto_f

    .line 170
    :cond_17
    :goto_e
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 171
    array-length p1, p1

    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    const-string p1, ""

    invoke-virtual {v3, v2, p1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 175
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    nop

    .line 183
    :goto_f
    move v0, v2

    return v0

    :catch_0
    move-exception p1

    .line 177
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 178
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v3, "failed to parse key"

    invoke-interface {v2, v1, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :cond_18
    return v0

    :catch_1
    move-exception p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 304
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 305
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v3, "failed to parse key"

    invoke-interface {v2, v1, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :cond_19
    return v0
.end method
