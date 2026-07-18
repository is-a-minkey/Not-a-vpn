.class Lcom/jcraft/jsch/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final b64:[B

.field private static chars:[Ljava/lang/String;

.field static final empty:[B


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 44
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 43
    sput-object v0, Lcom/jcraft/jsch/Util;->b64:[B

    .line 331
    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    const-string v11, "a"

    const-string v12, "b"

    const-string v13, "c"

    const-string v14, "d"

    const-string v15, "e"

    const-string v16, "f"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 330
    sput-object v0, Lcom/jcraft/jsch/Util;->chars:[Ljava/lang/String;

    .line 428
    const-string v0, ""

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Util;->empty:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static array_equals([B[B)Z
    .locals 6

    .line 363
    array-length v0, p0

    .line 364
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 365
    return v3

    .line 366
    :cond_0
    move v1, v3

    :goto_0
    if-lt v1, v0, :cond_1

    .line 371
    move v3, v2

    return v3

    .line 367
    :cond_1
    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    if-eq v4, v5, :cond_2

    .line 368
    return v3

    .line 366
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static arraysequals([B[B)Z
    .locals 6

    .line 498
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 499
    return v3

    .line 500
    :cond_0
    nop

    .line 501
    move v0, v3

    move v1, v0

    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_2

    .line 504
    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    return v3

    .line 502
    :cond_2
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static byte2str([B)Ljava/lang/String;
    .locals 3

    .line 410
    array-length v0, p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/jcraft/jsch/Util;->byte2str([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static byte2str([BII)Ljava/lang/String;
    .locals 1

    .line 414
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2, v0}, Lcom/jcraft/jsch/Util;->byte2str([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static byte2str([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 406
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 402
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/jcraft/jsch/Util;->byte2str([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bzero([B)V
    .locals 3

    .line 437
    if-nez p0, :cond_0

    .line 438
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 441
    return-void

    .line 440
    :cond_1
    aput-byte v0, p0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static checkTilde(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 463
    :try_start_0
    const-string v0, "~"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const-string v0, "~"

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 466
    move-object p0, v0

    return-object p0

    :catch_0
    move-exception v0

    .line 468
    :cond_0
    return-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method static createSocket(Ljava/lang/String;II)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 377
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    return-object v0

    .line 379
    :catch_0
    move-exception p0

    .line 379
    nop

    .line 381
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    goto :goto_0

    :catch_1
    move-exception p1

    .line 386
    :goto_0
    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    const-string p1, "timeout: socket is not established"

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    :goto_1
    nop

    .line 387
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p2, p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 444
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 445
    nop

    .line 446
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 458
    return-object v2

    .line 447
    :cond_0
    move v3, v1

    :goto_1
    array-length v4, p1

    if-lt v3, v4, :cond_2

    .line 452
    if-nez v2, :cond_1

    .line 453
    aget-object v2, p0, v0

    .line 454
    goto :goto_2

    .line 455
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 448
    :cond_2
    aget-object v4, p0, v0

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    nop

    .line 446
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static fromBase64([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 57
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object p0

    return-object p0
.end method

.method static fromBase64([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 62
    :try_start_0
    new-array v0, p2, [B

    .line 63
    nop

    .line 64
    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    add-int v4, p1, p2

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    aget-byte v4, p0, v3

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, p0, v5

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x30

    ushr-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 66
    add-int/lit8 v4, v3, 0x2

    aget-byte v6, p0, v4

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v6, v2, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    aget-byte v8, p0, v4

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v8

    and-int/lit8 v8, v8, 0x3c

    ushr-int/lit8 v8, v8, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 71
    add-int/lit8 v5, v3, 0x3

    aget-byte v6, p0, v5

    if-ne v6, v7, :cond_2

    .line 72
    add-int/lit8 v2, v2, 0x2

    .line 73
    nop

    .line 78
    :goto_1
    new-array p0, v2, [B

    .line 79
    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return-object p0

    .line 75
    :cond_2
    add-int/lit8 v6, v2, 0x2

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 76
    add-int/lit8 v2, v2, 0x3

    .line 64
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 81
    :catch_0
    move-exception p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "fromBase64: invalid base64 data"

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static fromFile(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 483
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p0, v3

    new-array p0, p0, [B

    .line 486
    const/4 v0, 0x0

    .line 488
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    if-gtz v3, :cond_1

    .line 490
    nop

    .line 493
    nop

    .line 494
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 493
    :cond_0
    return-object p0

    .line 491
    :cond_1
    add-int/2addr v0, v3

    .line 487
    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, p0

    .line 494
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v1

    :catchall_1
    move-exception p0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    if-eq v1, p0, :cond_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p0, v1

    :goto_1
    throw p0
.end method

.method static getFingerPrint(Lcom/jcraft/jsch/HASH;[BZZ)Ljava/lang/String;
    .locals 2

    .line 335
    :try_start_0
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->init()V

    .line 336
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 337
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object p1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    if-eqz p2, :cond_0

    .line 340
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_0
    if-nez p3, :cond_2

    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->name()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MD5"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 353
    :cond_1
    array-length p0, p1

    invoke-static {p1, v1, p0, v1}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object p0

    .line 354
    array-length p1, p0

    invoke-static {p0, v1, p1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_2
    :goto_0
    array-length p0, p1

    if-lt v1, p0, :cond_3

    .line 352
    nop

    .line 356
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_3
    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    .line 347
    sget-object p2, Lcom/jcraft/jsch/Util;->chars:[Ljava/lang/String;

    ushr-int/lit8 p3, p0, 0x4

    and-int/lit8 p3, p3, 0xf

    aget-object p2, p2, p3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    sget-object p2, Lcom/jcraft/jsch/Util;->chars:[Ljava/lang/String;

    and-int/lit8 p0, p0, 0xf

    aget-object p0, p2, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 p0, v1, 0x1

    array-length p2, p1

    if-ge p0, p2, :cond_4

    .line 350
    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :catch_0
    move-exception p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    nop

    .line 358
    const-string p0, "???"

    return-object p0
.end method

.method static getSystemEnv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 509
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 510
    :catch_0
    move-exception p0

    .line 510
    nop

    .line 511
    move-object p0, v0

    return-object p0
.end method

.method static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 517
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 518
    :catch_0
    move-exception p0

    .line 518
    nop

    .line 519
    move-object p0, v0

    return-object p0
.end method

.method static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 525
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 526
    :catch_0
    move-exception p0

    .line 526
    nop

    .line 527
    move-object p0, p1

    return-object p0
.end method

.method private static glob([BI[BI)Z
    .locals 9

    .line 172
    array-length v0, p0

    .line 173
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 174
    goto/16 :goto_9

    .line 176
    :cond_0
    array-length v3, p2

    .line 177
    nop

    .line 178
    nop

    .line 180
    nop

    .line 180
    :cond_1
    :goto_0
    const/16 v4, 0x2a

    if-ge p1, v0, :cond_16

    if-lt p3, v3, :cond_2

    goto/16 :goto_6

    .line 181
    :cond_2
    aget-byte v5, p0, p1

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    .line 182
    add-int v4, p1, v1

    if-ne v4, v0, :cond_3

    .line 183
    goto/16 :goto_9

    .line 184
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 185
    aget-byte v4, p0, p1

    aget-byte v5, p2, p3

    if-eq v4, v5, :cond_4

    .line 186
    goto/16 :goto_9

    .line 187
    :cond_4
    aget-byte v4, p0, p1

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v4

    add-int/2addr p1, v4

    .line 188
    aget-byte v4, p2, p3

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v4

    add-int/2addr p3, v4

    .line 189
    goto :goto_0

    .line 192
    :cond_5
    aget-byte v5, p0, p1

    const/16 v7, 0x3f

    if-ne v5, v4, :cond_12

    .line 193
    move v5, p1

    .line 193
    :goto_1
    if-lt v5, v0, :cond_6

    goto :goto_2

    .line 194
    :cond_6
    aget-byte p1, p0, v5

    if-ne p1, v4, :cond_7

    .line 195
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 200
    :cond_7
    :goto_2
    if-ne v0, v5, :cond_8

    .line 201
    return v1

    .line 203
    :cond_8
    aget-byte v8, p0, v5

    .line 204
    if-ne v8, v7, :cond_b

    .line 205
    nop

    .line 205
    :goto_3
    if-lt p3, v3, :cond_9

    .line 211
    goto/16 :goto_9

    .line 206
    :cond_9
    invoke-static {p0, v5, p2, p3}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 207
    return v1

    .line 209
    :cond_a
    aget-byte p1, p2, p3

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result p1

    add-int/2addr p3, p1

    goto :goto_3

    .line 212
    :cond_b
    if-ne v8, v6, :cond_f

    .line 213
    add-int p1, v5, v1

    if-ne p1, v0, :cond_c

    .line 214
    goto/16 :goto_9

    .line 215
    :cond_c
    add-int/lit8 p1, v5, 0x1

    .line 216
    aget-byte v0, p0, p1

    .line 217
    nop

    .line 217
    :goto_4
    if-lt p3, v3, :cond_d

    .line 225
    goto/16 :goto_9

    .line 218
    :cond_d
    aget-byte v4, p2, p3

    if-ne v0, v4, :cond_e

    .line 219
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v4

    add-int/2addr v4, p1

    aget-byte v5, p2, p3

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v5

    add-int/2addr v5, p3

    invoke-static {p0, v4, p2, v5}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 220
    return v1

    .line 223
    :cond_e
    aget-byte v4, p2, p3

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v4

    add-int/2addr p3, v4

    goto :goto_4

    .line 228
    :cond_f
    :goto_5
    if-lt p3, v3, :cond_10

    .line 236
    goto/16 :goto_9

    .line 229
    :cond_10
    aget-byte p1, p2, p3

    if-ne v8, p1, :cond_11

    .line 230
    invoke-static {p0, v5, p2, p3}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 231
    return v1

    .line 234
    :cond_11
    aget-byte p1, p2, p3

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result p1

    add-int/2addr p3, p1

    goto :goto_5

    .line 239
    :cond_12
    aget-byte v5, p0, p1

    if-ne v5, v7, :cond_13

    .line 240
    add-int/lit8 p1, p1, 0x1

    .line 241
    aget-byte v4, p2, p3

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v4

    add-int/2addr p3, v4

    .line 242
    goto/16 :goto_0

    .line 245
    :cond_13
    aget-byte v5, p0, p1

    aget-byte v6, p2, p3

    if-eq v5, v6, :cond_14

    .line 246
    goto :goto_9

    .line 248
    :cond_14
    aget-byte v5, p0, p1

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v5

    add-int/2addr p1, v5

    .line 249
    aget-byte v5, p2, p3

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v5

    add-int/2addr p3, v5

    .line 251
    if-lt p3, v3, :cond_1

    .line 252
    if-lt p1, v0, :cond_15

    .line 253
    return v1

    .line 255
    :cond_15
    aget-byte v5, p0, p1

    if-ne v5, v4, :cond_1

    .line 256
    nop

    .line 262
    :cond_16
    :goto_6
    if-ne p1, v0, :cond_17

    if-ne p3, v3, :cond_17

    .line 263
    return v1

    .line 265
    :cond_17
    if-lt p3, v3, :cond_1a

    .line 266
    aget-byte p2, p0, p1

    if-ne p2, v4, :cond_1a

    .line 267
    nop

    .line 268
    nop

    .line 268
    :goto_7
    if-lt p1, v0, :cond_18

    goto :goto_8

    .line 269
    :cond_18
    add-int/lit8 p2, p1, 0x1

    aget-byte p1, p0, p1

    if-eq p1, v4, :cond_19

    .line 270
    nop

    .line 271
    move v1, v2

    .line 274
    :goto_8
    return v1

    :cond_19
    move p1, p2

    goto :goto_7

    .line 277
    :cond_1a
    :goto_9
    move v1, v2

    return v1
.end method

.method static glob([B[B)Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/jcraft/jsch/Util;->glob0([BI[BI)Z

    move-result p0

    return p0
.end method

.method private static glob0([BI[BI)Z
    .locals 4

    .line 157
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    aget-byte v0, p2, v2

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 158
    array-length v0, p0

    if-lez v0, :cond_1

    aget-byte v0, p0, v2

    if-ne v0, v3, :cond_1

    .line 159
    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    aget-byte v0, p0, v1

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_0

    .line 160
    return v1

    .line 161
    :cond_0
    add-int/2addr p1, v1

    add-int/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v1

    return v1

    .line 163
    :cond_1
    move v1, v2

    return v1

    .line 165
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v1

    return v1
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 281
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 282
    nop

    .line 283
    const/4 v1, 0x0

    move v3, v1

    move v2, v3

    :goto_0
    array-length v4, v0

    const/16 v5, 0x2a

    const/16 v6, 0x3f

    const/16 v7, 0x5c

    if-lt v3, v4, :cond_4

    .line 288
    if-nez v2, :cond_0

    .line 289
    return-object p0

    .line 290
    :cond_0
    array-length p0, v0

    add-int/2addr p0, v2

    new-array v4, p0, [B

    .line 291
    move p0, v1

    :goto_1
    array-length v2, v0

    if-lt p0, v2, :cond_1

    .line 298
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_1
    aget-byte v2, v0, p0

    .line 293
    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    .line 294
    :cond_3
    :goto_2
    add-int/lit8 v3, v1, 0x1

    aput-byte v7, v4, v1

    .line 296
    :goto_3
    add-int/lit8 v1, v3, 0x1

    aput-byte v2, v4, v3

    .line 291
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 284
    :cond_4
    aget-byte v4, v0, v3

    .line 285
    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_5

    if-ne v4, v5, :cond_6

    .line 286
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 283
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static skipUTF8Char(B)I
    .locals 5

    .line 472
    and-int/lit16 v0, p0, 0x80

    int-to-byte v0, v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 473
    return v3

    .line 474
    :cond_0
    and-int/lit16 v0, p0, 0xe0

    int-to-byte v0, v0

    const/16 v4, -0x40

    if-ne v0, v4, :cond_1

    .line 475
    move v3, v2

    return v3

    .line 476
    :cond_1
    and-int/lit16 p0, p0, 0xf0

    int-to-byte p0, p0

    const/16 v0, -0x20

    if-ne p0, v0, :cond_2

    .line 477
    move v3, v1

    return v3

    .line 478
    :cond_2
    return v3
.end method

.method static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 133
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 134
    return-object v0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const/4 v2, 0x0

    move v3, v2

    .line 140
    :goto_0
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 141
    if-ltz v4, :cond_1

    .line 142
    sub-int v5, v4, v3

    invoke-static {v0, v3, v5}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v3, v4, 0x1

    .line 144
    goto :goto_0

    .line 146
    :cond_1
    array-length p0, v0

    sub-int/2addr p0, v3

    invoke-static {v0, v3, p0}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static str2byte(Ljava/lang/String;)[B
    .locals 1

    .line 398
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method static str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 392
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 393
    return-object v0

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static toBase64([BIIZ)[B
    .locals 10

    .line 88
    const/4 v0, 0x2

    mul-int v1, p2, v0

    new-array v1, v1, [B

    .line 91
    div-int/lit8 v2, p2, 0x3

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p1

    .line 92
    nop

    .line 93
    const/4 v3, 0x0

    move v4, p1

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    if-lt v4, v2, :cond_3

    .line 104
    add-int/2addr p1, p2

    sub-int/2addr p1, v2

    .line 105
    const/16 p2, 0x3d

    if-ne p1, v6, :cond_0

    .line 106
    aget-byte p1, p0, v4

    ushr-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x3f

    .line 107
    add-int/lit8 v0, v5, 0x1

    sget-object v2, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte p1, v2, p1

    aput-byte p1, v1, v5

    .line 108
    aget-byte p0, p0, v4

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    .line 109
    add-int/lit8 v5, v0, 0x1

    sget-object p1, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte p0, p1, p0

    aput-byte p0, v1, v0

    .line 110
    if-eqz p3, :cond_2

    .line 111
    add-int/lit8 p0, v5, 0x1

    aput-byte p2, v1, v5

    .line 112
    add-int/lit8 v5, p0, 0x1

    aput-byte p2, v1, p0

    .line 114
    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_2

    .line 115
    aget-byte p1, p0, v4

    ushr-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x3f

    .line 116
    add-int/lit8 v2, v5, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte p1, v7, p1

    aput-byte p1, v1, v5

    .line 117
    aget-byte p1, p0, v4

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    add-int/2addr v4, v6

    aget-byte v5, p0, v4

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr p1, v5

    .line 118
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte p1, v6, p1

    aput-byte p1, v1, v2

    .line 119
    aget-byte p0, p0, v4

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x3f

    .line 120
    add-int/lit8 p1, v5, 0x1

    sget-object v0, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte p0, v0, p0

    aput-byte p0, v1, v5

    .line 121
    if-eqz p3, :cond_1

    .line 122
    add-int/lit8 v5, p1, 0x1

    aput-byte p2, v1, p1

    goto :goto_1

    :cond_1
    move v5, p1

    .line 125
    :cond_2
    :goto_1
    new-array p0, v5, [B

    .line 126
    invoke-static {v1, v3, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    return-object p0

    .line 94
    :cond_3
    aget-byte v7, p0, v4

    ushr-int/2addr v7, v0

    and-int/lit8 v7, v7, 0x3f

    .line 95
    add-int/lit8 v8, v5, 0x1

    sget-object v9, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v9, v7

    aput-byte v7, v1, v5

    .line 96
    aget-byte v5, p0, v4

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v6, v4

    aget-byte v7, p0, v6

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v5, v7

    .line 97
    add-int/lit8 v7, v8, 0x1

    sget-object v9, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v5, v9, v5

    aput-byte v5, v1, v8

    .line 98
    aget-byte v5, p0, v6

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v0

    add-int v6, v4, v0

    aget-byte v8, p0, v6

    ushr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v5, v8

    .line 99
    add-int/lit8 v8, v7, 0x1

    sget-object v9, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v5, v9, v5

    aput-byte v5, v1, v7

    .line 100
    aget-byte v5, p0, v6

    and-int/lit8 v5, v5, 0x3f

    .line 101
    add-int/lit8 v6, v8, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v5, v7, v5

    aput-byte v5, v1, v8

    .line 93
    add-int/lit8 v4, v4, 0x3

    move v5, v6

    goto/16 :goto_0
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 6

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 420
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "0"

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int v2, v1, v5

    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 423
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 302
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->unquote([B)[B

    move-result-object v1

    .line 304
    array-length v0, v0

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 305
    return-object p0

    .line 306
    :cond_0
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static unquote([B)[B
    .locals 5

    .line 310
    array-length v0, p0

    .line 311
    nop

    .line 312
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 312
    :goto_0
    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    aget-byte v3, p0, v0

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 314
    add-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_2

    .line 315
    nop

    .line 323
    :goto_1
    array-length v0, p0

    if-ne v2, v0, :cond_1

    .line 324
    return-object p0

    .line 325
    :cond_1
    new-array v0, v2, [B

    .line 326
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    move-object p0, v0

    return-object p0

    .line 316
    :cond_2
    array-length v4, p0

    sub-int/2addr v4, v3

    invoke-static {p0, v3, p0, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    add-int/lit8 v2, v2, -0x1

    .line 318
    add-int/lit8 v0, v0, 0x1

    .line 319
    goto :goto_0

    .line 321
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static val(B)B
    .locals 3

    .line 47
    const/4 v0, 0x0

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_0

    .line 48
    return v0

    .line 49
    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/jcraft/jsch/Util;->b64:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 53
    return v0

    .line 50
    :cond_1
    sget-object v2, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v2, v2, v1

    if-ne p0, v2, :cond_2

    .line 51
    int-to-byte v0, v1

    return v0

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
