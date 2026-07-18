.class Lcom/jcraft/jsch/KeyPairECDSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "KeyPairECDSA.java"


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static keyTypeNames:[Ljava/lang/String;

.field private static names:[Ljava/lang/String;

.field private static oids:[[B


# instance fields
.field private key_size:I

.field private name:[B

.field private prv_array:[B

.field private r_array:[B

.field private s_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    const/4 v0, 0x3

    new-array v1, v0, [[B

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 34
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 35
    const/4 v2, 0x7

    new-array v4, v2, [B

    const/4 v5, 0x6

    aput-byte v5, v4, v3

    const/4 v6, 0x1

    const/4 v7, 0x5

    aput-byte v7, v4, v6

    const/4 v8, 0x2

    const/16 v9, 0x2b

    aput-byte v9, v4, v8

    const/16 v10, -0x7f

    aput-byte v10, v4, v0

    const/4 v11, 0x4

    aput-byte v11, v4, v11

    .line 36
    const/16 v12, 0x22

    aput-byte v12, v4, v5

    aput-object v4, v1, v6

    .line 37
    new-array v2, v2, [B

    aput-byte v5, v2, v3

    aput-byte v7, v2, v6

    aput-byte v9, v2, v8

    aput-byte v10, v2, v0

    aput-byte v11, v2, v11

    .line 38
    const/16 v0, 0x23

    aput-byte v0, v2, v5

    aput-object v2, v1, v8

    .line 33
    sput-object v1, Lcom/jcraft/jsch/KeyPairECDSA;->oids:[[B

    .line 40
    const-string v0, "nistp256"

    const-string v1, "nistp384"

    const-string v2, "nistp521"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->names:[Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->names:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->keyTypeNames:[Ljava/lang/String;

    .line 102
    const-string v0, "-----BEGIN EC PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->begin:[B

    .line 103
    const-string v0, "-----END EC PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->end:[B

    return-void

    :array_0
    .array-data 1
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 6

    .line 52
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)V
    .locals 6

    .line 56
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    .line 58
    if-eqz p2, :cond_1

    .line 59
    const/16 p1, 0x8

    new-array v0, p1, [B

    .line 60
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    const-string p1, "nistp384"

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    const/16 p1, 0x180

    iput p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 63
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    .line 65
    :cond_0
    const-string p1, "nistp521"

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    const/16 p1, 0x209

    iput p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 67
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    .line 70
    :cond_1
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 44
    sget-object p1, Lcom/jcraft/jsch/KeyPairECDSA;->names:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    .line 49
    const/16 p1, 0x100

    iput p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 75
    if-eqz p2, :cond_0

    .line 76
    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    .line 77
    :cond_0
    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    .line 78
    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    .line 79
    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    .line 80
    if-eqz p5, :cond_3

    .line 81
    array-length p2, p5

    const/16 p3, 0x180

    const/16 p4, 0x209

    const/16 v0, 0x40

    if-lt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    array-length p2, p5

    const/16 p4, 0x30

    if-lt p2, p4, :cond_2

    move p4, p3

    goto :goto_0

    :cond_2
    move p4, p1

    :goto_0
    iput p4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 82
    :cond_3
    return-void
.end method

.method static fromPoint([B)[[B
    .locals 6

    .line 505
    nop

    .line 506
    const/4 v0, 0x0

    move v1, v0

    .line 506
    :goto_0
    aget-byte v2, p0, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 508
    add-int/lit8 v1, v1, 0x1

    .line 509
    const/4 v2, 0x2

    new-array v3, v2, [[B

    .line 510
    array-length v4, p0

    sub-int/2addr v4, v1

    div-int/2addr v4, v2

    new-array v4, v4, [B

    .line 511
    array-length v5, p0

    sub-int/2addr v5, v1

    div-int v2, v5, v2

    new-array v2, v2, [B

    .line 513
    array-length v5, v4

    invoke-static {p0, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    array-length v5, v4

    add-int/2addr v1, v5

    array-length v5, v2

    invoke-static {p0, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    aput-object v4, v3, v0

    .line 516
    const/4 p0, 0x1

    aput-object v2, v3, p0

    .line 518
    return-object v3

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 466
    const-string v0, "invalid key format"

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 468
    const/4 v0, 0x1

    aget-object v3, p1, v0

    .line 469
    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object v1

    .line 470
    const/4 v7, 0x0

    aget-object v4, v1, v7

    .line 471
    aget-object v5, v1, v0

    .line 473
    const/4 v0, 0x3

    aget-object v6, p1, v0

    .line 474
    new-instance v0, Lcom/jcraft/jsch/KeyPairECDSA;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    .line 475
    const/4 p0, 0x4

    aget-object p0, p1, p0

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/jcraft/jsch/KeyPairECDSA;->publicKeyComment:Ljava/lang/String;

    .line 476
    iput v7, v0, Lcom/jcraft/jsch/KeyPairECDSA;->vendor:I

    .line 477
    return-object v0
.end method

.method static synthetic lambda$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ecdsa-sha2-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$1(I)[Ljava/lang/String;
    .locals 0

    .line 1
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static toPoint([B[B)[B
    .locals 4

    .line 497
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 498
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    .line 499
    array-length v3, p0

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    array-length p0, p0

    add-int/2addr p0, v1

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 523
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 524
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 525
    return-void
.end method

.method public forSSHAgent()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ecdsa-sha2-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 487
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 488
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairECDSA;->toPoint([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 489
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 490
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->publicKeyComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 491
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    new-array v1, v1, [B

    .line 492
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 493
    return-object v1
.end method

.method generate(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 86
    iput p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 89
    :try_start_0
    const-string v0, "keypairgen.ecdsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/KeyPairGenECDSA;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    nop

    .line 90
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenECDSA;

    .line 91
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/KeyPairGenECDSA;->init(I)V

    .line 92
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenECDSA;->getD()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    .line 93
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenECDSA;->getR()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    .line 94
    invoke-interface {v0}, Lcom/jcraft/jsch/KeyPairGenECDSA;->getS()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    .line 95
    sget-object p1, Lcom/jcraft/jsch/KeyPairECDSA;->names:[Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x40

    if-lt v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length v0, v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    .line 96
    nop

    .line 97
    nop

    .line 100
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method getBegin()[B
    .locals 1

    .line 107
    sget-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->begin:[B

    return-object v0
.end method

.method getEnd()[B
    .locals 1

    .line 112
    sget-object v0, Lcom/jcraft/jsch/KeyPairECDSA;->end:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .line 387
    const/4 v0, 0x3

    return v0
.end method

.method getKeyTypeName()[B
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ecdsa-sha2-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method getOpenSSHv1PrivateKeyBlob()[B
    .locals 6

    .line 156
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->getKeyTypeName()[B

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    invoke-static {v1, v2}, Lcom/jcraft/jsch/KeyPairECDSA;->toPoint([B[B)[B

    move-result-object v1

    .line 158
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    if-nez v3, :cond_0

    return-object v2

    .line 162
    :cond_0
    nop

    .line 164
    :try_start_0
    array-length v3, v0

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 165
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    array-length v5, v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 166
    array-length v5, v1

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 167
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 168
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    .line 169
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 171
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 172
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 173
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 175
    iget-object v2, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v2

    .line 176
    :catch_0
    move-exception v0

    move-object v2, v4

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 176
    :goto_0
    nop

    .line 177
    if-eqz v2, :cond_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    iget-object v1, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 180
    :cond_1
    throw v0

    .line 159
    :cond_2
    return-object v2
.end method

.method getPrivateKey()[B
    .locals 10

    .line 118
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 119
    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 121
    sget-object v3, Lcom/jcraft/jsch/KeyPairECDSA;->oids:[[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    array-length v4, v4

    const/4 v5, 0x2

    const/16 v6, 0x40

    if-lt v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    array-length v4, v4

    const/16 v6, 0x30

    if-lt v4, v6, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    aget-object v3, v3, v4

    .line 123
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    invoke-static {v4, v6}, Lcom/jcraft/jsch/KeyPairECDSA;->toPoint([B[B)[B

    move-result-object v4

    .line 125
    array-length v6, v4

    add-int/2addr v6, v0

    and-int/lit16 v6, v6, 0x80

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-nez v6, :cond_2

    move v7, v8

    .line 126
    :cond_2
    array-length v6, v4

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 127
    array-length v9, v4

    invoke-static {v4, v2, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    aput-byte v8, v6, v2

    .line 129
    if-ne v7, v8, :cond_3

    .line 130
    array-length v4, v4

    add-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    const/16 v7, -0x7f

    aput-byte v7, v6, v0

    .line 133
    array-length v4, v4

    add-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v6, v5

    .line 135
    :goto_1
    nop

    .line 137
    array-length v4, v1

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/KeyPairECDSA;->countLength(I)I

    move-result v4

    add-int/2addr v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairECDSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 138
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length v5, v5

    .line 137
    add-int/2addr v4, v5

    .line 138
    nop

    .line 137
    add-int/2addr v4, v0

    .line 138
    array-length v5, v3

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairECDSA;->countLength(I)I

    move-result v5

    .line 137
    add-int/2addr v4, v5

    .line 138
    array-length v5, v3

    .line 137
    add-int/2addr v4, v5

    .line 138
    nop

    .line 137
    add-int/2addr v4, v0

    .line 139
    array-length v5, v6

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairECDSA;->countLength(I)I

    move-result v5

    .line 137
    add-int/2addr v4, v5

    .line 139
    array-length v5, v6

    .line 137
    add-int/2addr v4, v5

    .line 141
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/KeyPairECDSA;->countLength(I)I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    .line 143
    new-array v0, v0, [B

    .line 144
    nop

    .line 145
    invoke-virtual {p0, v0, v2, v4}, Lcom/jcraft/jsch/KeyPairECDSA;->writeSEQUENCE([BII)I

    move-result v2

    .line 146
    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/KeyPairECDSA;->writeINTEGER([BI[B)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/jcraft/jsch/KeyPairECDSA;->writeOCTETSTRING([BI[B)I

    move-result v1

    .line 148
    const/16 v2, -0x60

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/jcraft/jsch/KeyPairECDSA;->writeDATA([BBI[B)I

    move-result v1

    .line 149
    const/16 v2, -0x5f

    invoke-virtual {p0, v0, v2, v1, v6}, Lcom/jcraft/jsch/KeyPairECDSA;->writeDATA([BBI[B)I

    .line 151
    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 7

    .line 361
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    .line 363
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    if-nez v0, :cond_1

    .line 367
    move-object v0, v1

    return-object v0

    .line 369
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [[B

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ecdsa-sha2-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 371
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 372
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    array-length v1, v1

    add-int/2addr v1, v3

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    array-length v4, v4

    add-int/2addr v1, v4

    new-array v1, v1, [B

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 373
    aget-object v1, v0, v4

    const/4 v5, 0x4

    aput-byte v5, v1, v2

    .line 374
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    array-length v6, v6

    invoke-static {v1, v2, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    aget-object v4, v0, v4

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    array-length v5, v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    array-length v5, v5

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 6

    .line 397
    nop

    .line 400
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ecdsa-sha2-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 401
    const-class v2, Lcom/jcraft/jsch/SignatureECDSA;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 399
    nop

    .line 402
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/SignatureECDSA;

    .line 403
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureECDSA;->init()V

    .line 405
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :try_start_1
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/SignatureECDSA;->setPrvKey([B)V

    .line 408
    invoke-interface {v1, p1}, Lcom/jcraft/jsch/SignatureECDSA;->update([B)V

    .line 409
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureECDSA;->sign()[B

    move-result-object p1

    .line 411
    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ecdsa-sha2-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 413
    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 414
    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 420
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 414
    move-object v0, p1

    return-object v0

    .line 415
    :catch_0
    move-exception p1

    goto :goto_0

    .line 419
    :catchall_0
    move-exception p1

    move-object v3, v0

    goto :goto_1

    .line 415
    :catch_1
    move-exception p1

    move-object v3, v0

    .line 415
    :goto_0
    nop

    .line 416
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v4, "failed to generate signature"

    invoke-interface {v1, v2, v4, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 420
    :cond_0
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 422
    return-object v0

    .line 419
    :catchall_1
    move-exception p1

    .line 419
    :goto_1
    nop

    .line 420
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 421
    throw p1
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 0

    .line 427
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPairECDSA;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 5

    .line 434
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ecdsa-sha2-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 435
    const-class v2, Lcom/jcraft/jsch/SignatureECDSA;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 433
    nop

    .line 436
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/SignatureECDSA;

    .line 437
    invoke-interface {v1}, Lcom/jcraft/jsch/SignatureECDSA;->init()V

    .line 439
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->getPublicKeyBlob()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 440
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->getPublicKeyBlob()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 441
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 442
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 443
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object v3

    .line 444
    aget-object v2, v3, v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    .line 445
    const/4 v2, 0x1

    aget-object v2, v3, v2

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 449
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 448
    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/SignatureECDSA;->setPubKey([B[B)V

    .line 450
    move-object v0, v1

    return-object v0

    .line 451
    :catch_0
    move-exception v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    nop

    .line 452
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v4, "failed to create verifier"

    invoke-interface {v2, v3, v4, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    :cond_1
    return-object v0
.end method

.method public getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 0

    .line 461
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairECDSA;->getVerifier()Lcom/jcraft/jsch/Signature;

    move-result-object p1

    return-object p1
.end method

.method parse([B)Z
    .locals 12

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->vendor:I

    if-ne v3, v2, :cond_0

    .line 192
    return v0

    .line 193
    :cond_0
    iget v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->vendor:I

    const/16 v4, 0x100

    const/16 v5, 0x180

    const/16 v6, 0x209

    const/16 v7, 0x40

    const/16 v8, 0x30

    const/4 v9, 0x2

    if-eq v3, v9, :cond_1c

    iget v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->vendor:I

    const/4 v10, 0x5

    if-ne v3, v10, :cond_1

    goto/16 :goto_e

    .line 212
    :cond_1
    iget v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->vendor:I

    const/4 v10, 0x4

    if-ne v3, v10, :cond_a

    .line 213
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 214
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 215
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 216
    if-eq p1, v7, :cond_2

    .line 217
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "check failed"

    invoke-direct {p1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_2
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    .line 221
    sget-object v7, Lcom/jcraft/jsch/KeyPairECDSA;->keyTypeNames:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown key type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    iput-object v7, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    .line 226
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v7

    .line 227
    sget-object v8, Lcom/jcraft/jsch/KeyPairECDSA;->names:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 228
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown curve name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_4
    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match curve name "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "nistp521"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 238
    :cond_6
    iput v6, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 239
    goto :goto_0

    :sswitch_1
    const-string p1, "nistp384"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 241
    :cond_7
    iput v5, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 242
    goto :goto_0

    :sswitch_2
    const-string p1, "nistp256"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 244
    :cond_8
    iput v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 248
    :goto_0
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 250
    aget-byte v4, p1, v0

    if-eq v4, v10, :cond_9

    .line 251
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "only uncompressed ECPoint supported"

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_9
    invoke-static {p1}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object p1

    .line 254
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    .line 255
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->publicKeyComment:Ljava/lang/String;

    .line 256
    aget-object v3, p1, v0

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    .line 257
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    .line 259
    goto/16 :goto_10

    .line 262
    :cond_a
    nop

    .line 263
    nop

    .line 265
    aget-byte v3, p1, v0

    if-eq v3, v8, :cond_b

    .line 266
    return v0

    .line 267
    :cond_b
    const/4 v3, 0x1

    .line 268
    const/4 v10, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 269
    and-int/lit16 v11, v3, 0x80

    if-eqz v11, :cond_d

    .line 270
    and-int/lit8 v3, v3, 0x7f

    .line 271
    nop

    .line 272
    nop

    .line 272
    :goto_1
    add-int/lit8 v11, v3, -0x1

    if-gtz v3, :cond_c

    goto :goto_2

    .line 273
    :cond_c
    add-int/lit8 v3, v10, 0x1

    aget-byte v10, p1, v10

    move v10, v3

    move v3, v11

    goto :goto_1

    .line 277
    :cond_d
    :goto_2
    aget-byte v3, p1, v10

    if-eq v3, v9, :cond_e

    .line 278
    return v0

    .line 279
    :cond_e
    add-int/lit8 v3, v10, 0x1

    .line 281
    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 282
    and-int/lit16 v10, v3, 0x80

    if-eqz v10, :cond_10

    .line 283
    and-int/lit8 v3, v3, 0x7f

    .line 284
    nop

    .line 285
    move v10, v3

    move v3, v0

    .line 285
    :goto_3
    add-int/lit8 v11, v10, -0x1

    if-gtz v10, :cond_f

    goto :goto_4

    .line 286
    :cond_f
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v3, v9

    move v9, v10

    move v10, v11

    goto :goto_3

    .line 290
    :cond_10
    :goto_4
    add-int/2addr v3, v9

    .line 291
    add-int/lit8 v3, v3, 0x1

    .line 293
    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 294
    and-int/lit16 v10, v3, 0x80

    if-eqz v10, :cond_12

    .line 295
    and-int/lit8 v3, v3, 0x7f

    .line 296
    nop

    .line 297
    move v10, v3

    move v3, v0

    .line 297
    :goto_5
    add-int/lit8 v11, v10, -0x1

    if-gtz v10, :cond_11

    goto :goto_6

    .line 298
    :cond_11
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v3, v9

    move v9, v10

    move v10, v11

    goto :goto_5

    .line 302
    :cond_12
    :goto_6
    new-array v10, v3, [B

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    .line 303
    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    invoke-static {p1, v9, v10, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    add-int/2addr v3, v9

    .line 307
    add-int/lit8 v3, v3, 0x1

    .line 309
    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 310
    and-int/lit16 v10, v3, 0x80

    if-eqz v10, :cond_14

    .line 311
    and-int/lit8 v3, v3, 0x7f

    .line 312
    nop

    .line 313
    move v10, v3

    move v3, v0

    .line 313
    :goto_7
    add-int/lit8 v11, v10, -0x1

    if-gtz v10, :cond_13

    goto :goto_8

    .line 314
    :cond_13
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v3, v9

    move v9, v10

    move v10, v11

    goto :goto_7

    .line 318
    :cond_14
    :goto_8
    new-array v10, v3, [B

    .line 319
    invoke-static {p1, v9, v10, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    add-int/2addr v3, v9

    .line 322
    move v9, v0

    :goto_9
    sget-object v11, Lcom/jcraft/jsch/KeyPairECDSA;->oids:[[B

    array-length v11, v11

    if-lt v9, v11, :cond_15

    goto :goto_a

    .line 323
    :cond_15
    sget-object v11, Lcom/jcraft/jsch/KeyPairECDSA;->oids:[[B

    aget-object v11, v11, v9

    invoke-static {v11, v10}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 324
    sget-object v10, Lcom/jcraft/jsch/KeyPairECDSA;->names:[Ljava/lang/String;

    aget-object v9, v10, v9

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, p0, Lcom/jcraft/jsch/KeyPairECDSA;->name:[B

    .line 325
    nop

    .line 329
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 331
    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 332
    and-int/lit16 v10, v3, 0x80

    if-eqz v10, :cond_17

    .line 333
    and-int/lit8 v3, v3, 0x7f

    .line 334
    nop

    .line 335
    move v10, v3

    move v3, v0

    .line 335
    :goto_b
    add-int/lit8 v11, v10, -0x1

    if-gtz v10, :cond_16

    goto :goto_c

    .line 336
    :cond_16
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v3, v9

    move v9, v10

    move v10, v11

    goto :goto_b

    .line 340
    :cond_17
    :goto_c
    new-array v10, v3, [B

    .line 341
    invoke-static {p1, v9, v10, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    nop

    .line 344
    invoke-static {v10}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object p1

    .line 345
    aget-object v3, p1, v0

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPairECDSA;->r_array:[B

    .line 346
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->s_array:[B

    .line 348
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    if-eqz p1, :cond_1a

    .line 349
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length p1, p1

    if-lt p1, v7, :cond_18

    goto :goto_d

    :cond_18
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length p1, p1

    if-lt p1, v8, :cond_19

    move v6, v5

    goto :goto_d

    :cond_19
    move v6, v4

    :goto_d
    iput v6, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I

    .line 350
    nop

    .line 356
    :cond_1a
    goto :goto_10

    .line 322
    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 194
    :cond_1c
    :goto_e
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 195
    array-length p1, p1

    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :try_start_1
    const-string p1, ""

    invoke-virtual {v3, v2, p1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 199
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    .line 200
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length p1, p1

    if-lt p1, v7, :cond_1d

    goto :goto_f

    :cond_1d
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairECDSA;->prv_array:[B

    array-length p1, p1

    if-lt p1, v8, :cond_1e

    move v6, v5

    goto :goto_f

    :cond_1e
    move v6, v4

    :goto_f
    iput v6, p0, Lcom/jcraft/jsch/KeyPairECDSA;->key_size:I
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    nop

    .line 208
    :goto_10
    move v0, v2

    return v0

    :catch_0
    move-exception p1

    .line 202
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 203
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v3, "failed to parse key"

    invoke-interface {v2, v1, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    :cond_1f
    return v0

    :catch_1
    move-exception p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 351
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 352
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairECDSA;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v3, "failed to parse key"

    invoke-interface {v2, v1, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    :cond_20
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2003373f -> :sswitch_2
        0x20033b5b -> :sswitch_1
        0x20034220 -> :sswitch_0
    .end sparse-switch
.end method
