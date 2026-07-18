.class Lcom/jcraft/jsch/KnownHosts;
.super Ljava/lang/Object;
.source "KnownHosts.java"

# interfaces
.implements Lcom/jcraft/jsch/HostKeyRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
    }
.end annotation


# static fields
.field private static final lf:[B

.field private static final space:[B


# instance fields
.field hmacsha1:Lcom/jcraft/jsch/MAC;

.field private jsch:Lcom/jcraft/jsch/JSch;

.field private known_hosts:Ljava/lang/String;

.field private pool:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/HostKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 466
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->space:[B

    .line 467
    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->lf:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    .line 42
    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    .line 49
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    .line 50
    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->getHMACSHA1()Lcom/jcraft/jsch/MAC;

    .line 51
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/JSch;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    return-object p0
.end method

.method private addInvalidLine(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    .line 272
    iget-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 273
    return-void
.end method


# virtual methods
.method public add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V
    .locals 5

    .line 321
    iget v0, p1, Lcom/jcraft/jsch/HostKey;->type:I

    .line 322
    invoke-virtual {p1}, Lcom/jcraft/jsch/HostKey;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 325
    nop

    .line 326
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v1

    .line 327
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 326
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    nop

    .line 340
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/KnownHosts;->syncKnownHostsFile(Lcom/jcraft/jsch/UserInfo;)V

    .line 343
    return-void

    .line 328
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/HostKey;

    .line 329
    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, v3, Lcom/jcraft/jsch/HostKey;->type:I

    .line 327
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public check(Ljava/lang/String;[B)I
    .locals 10

    .line 286
    nop

    .line 287
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 288
    goto/16 :goto_1

    .line 291
    :cond_0
    nop

    .line 293
    :try_start_0
    new-instance v2, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v2, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    nop

    .line 300
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v3

    .line 301
    move v5, v0

    move v4, v1

    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 300
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    if-ne v4, v1, :cond_1

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 313
    const-string v0, "]:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts;->check(Ljava/lang/String;[B)I

    move-result v0

    return v0

    .line 316
    :cond_1
    move v0, v4

    return v0

    .line 302
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/HostKey;

    .line 303
    invoke-virtual {v6, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_4

    iget v7, v6, Lcom/jcraft/jsch/HostKey;->type:I

    iget v9, v2, Lcom/jcraft/jsch/HostKey;->type:I

    if-ne v7, v9, :cond_4

    .line 304
    iget-object v4, v6, Lcom/jcraft/jsch/HostKey;->key:[B

    invoke-static {v4, p2}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    monitor-exit v3

    return v0

    .line 307
    :cond_3
    move v4, v8

    .line 301
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p2

    .line 295
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception while trying to read key while checking host \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-interface {v2, v0, p1, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    :goto_1
    move v0, v1

    return v0
.end method

.method createHMAC(Ljava/lang/String;)Lcom/jcraft/jsch/MAC;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 541
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/MAC;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 542
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    return-object v0

    .line 543
    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    nop

    .line 544
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to instantiate HMAC-class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    const/4 v3, 0x3

    invoke-interface {v1, v3, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "instantiation of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lead to an error"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 547
    nop

    .line 546
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method createHashedHostKey(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 552
    new-instance v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V

    .line 553
    invoke-virtual {v0}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash()V

    .line 554
    return-object v0
.end method

.method deleteSubString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 511
    nop

    .line 512
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 515
    const/4 v2, 0x0

    move v3, v2

    .line 515
    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 516
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 517
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 518
    nop

    .line 525
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sub-int p2, v1, v3

    if-ne p2, v0, :cond_2

    .line 526
    if-ne v0, v1, :cond_1

    move p2, v2

    goto :goto_2

    :cond_1
    sub-int p2, v1, v0

    add-int/lit8 p2, p2, -0x1

    :goto_2
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 528
    :cond_2
    return-object p1

    .line 519
    :cond_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 520
    add-int/lit8 v3, v4, 0x1

    .line 521
    goto :goto_0

    .line 523
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method dump(Ljava/io/OutputStream;)V
    .locals 3

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 472
    monitor-exit v0

    return-void

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HostKey;

    .line 475
    invoke-virtual {p0, p1, v2}, Lcom/jcraft/jsch/KnownHosts;->dumpHostKey(Ljava/io/OutputStream;Lcom/jcraft/jsch/HostKey;)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 478
    :catch_0
    move-exception p1

    .line 478
    nop

    .line 479
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "unable to dump known hosts"

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    return-void
.end method

.method dumpHostKey(Ljava/io/OutputStream;Lcom/jcraft/jsch/HostKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-virtual {p2}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {p2}, Lcom/jcraft/jsch/HostKey;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-virtual {p2}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-virtual {p2}, Lcom/jcraft/jsch/HostKey;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 488
    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 489
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 490
    sget-object p2, Lcom/jcraft/jsch/KnownHosts;->lf:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 495
    sget-object v0, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 497
    :cond_1
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 498
    sget-object v0, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 499
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 500
    sget-object v0, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 501
    invoke-virtual {p2}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 503
    if-eqz v3, :cond_2

    .line 504
    sget-object p2, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 505
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 507
    :cond_2
    sget-object p2, Lcom/jcraft/jsch/KnownHosts;->lf:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 508
    return-void
.end method

.method getHMACSHA1()Lcom/jcraft/jsch/MAC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    if-nez v0, :cond_0

    .line 533
    const-string v0, "hmac-sha1"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->createHMAC(Ljava/lang/String;)Lcom/jcraft/jsch/MAC;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    return-object v0
.end method

.method public getHostKey()[Lcom/jcraft/jsch/HostKey;
    .locals 1

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/jcraft/jsch/KnownHosts;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    return-object v0
.end method

.method public getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 394
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 403
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/jcraft/jsch/HostKey;

    .line 404
    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 407
    if-eqz p1, :cond_0

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 408
    const-string v1, "]:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object p1

    .line 409
    array-length p2, p1

    if-lez p2, :cond_0

    .line 410
    array-length p2, v3

    array-length v1, p1

    add-int/2addr p2, v1

    new-array p2, p2, [Lcom/jcraft/jsch/HostKey;

    .line 411
    array-length v1, v3

    invoke-static {v3, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    array-length v1, v3

    array-length v3, p1

    invoke-static {p1, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    move-object v3, p2

    .line 416
    :cond_0
    monitor-exit v0

    return-object v3

    .line 405
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/HostKey;

    aput-object v5, v3, v4

    .line 404
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 396
    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/HostKey;

    .line 397
    iget v5, v4, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 398
    goto :goto_2

    .line 399
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 400
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :catchall_0
    move-exception p1

    .line 393
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getKnownHostsFile()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    return-object v0
.end method

.method public getKnownHostsRepositoryID()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/KnownHosts;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 423
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    .line 427
    nop

    .line 428
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v0

    .line 429
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 428
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz v1, :cond_0

    .line 447
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    return-void

    :catch_0
    move-exception p1

    .line 451
    :cond_0
    return-void

    .line 430
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/HostKey;

    .line 431
    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p2, :cond_2

    .line 432
    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p3, :cond_2

    iget-object v5, v3, Lcom/jcraft/jsch/HostKey;->key:[B

    invoke-static {p3, v5}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 433
    :cond_2
    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 434
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 435
    instance-of v5, v3, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-virtual {v5}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->isHashed()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 439
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/KnownHosts;->deleteSubString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    goto :goto_2

    .line 436
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v1, v2, -0x1

    .line 438
    move v2, v1

    .line 441
    :goto_2
    move v1, v4

    .line 429
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setKnownHosts(Ljava/io/InputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 65
    iget-object v1, v8, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    nop

    .line 70
    nop

    .line 72
    nop

    .line 74
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 75
    nop

    .line 77
    :goto_0
    const/4 v2, 0x0

    move-object v11, v1

    move v1, v2

    .line 79
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    const/16 v4, 0xa

    const/16 v5, 0xd

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 81
    if-nez v1, :cond_4

    .line 82
    nop

    .line 260
    nop

    .line 263
    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    goto/16 :goto_29

    .line 268
    :cond_0
    return-void

    .line 86
    :cond_1
    if-ne v3, v5, :cond_2

    .line 87
    goto :goto_1

    .line 89
    :cond_2
    if-ne v3, v4, :cond_3

    .line 90
    goto :goto_2

    .line 92
    :cond_3
    :try_start_2
    array-length v7, v11

    if-gt v7, v1, :cond_31

    .line 93
    const/16 v7, 0x2800

    if-le v1, v7, :cond_30

    .line 94
    nop

    .line 102
    :cond_4
    :goto_2
    nop

    .line 103
    move v3, v2

    .line 103
    :goto_3
    const/16 v7, 0x9

    const/16 v12, 0x20

    if-lt v3, v1, :cond_5

    goto :goto_4

    .line 104
    :cond_5
    aget-byte v13, v11, v3

    .line 105
    if-eq v13, v12, :cond_2f

    if-ne v13, v7, :cond_6

    goto/16 :goto_27

    .line 109
    :cond_6
    const/16 v14, 0x23

    if-ne v13, v14, :cond_7

    .line 110
    invoke-static {v11, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    .line 111
    goto/16 :goto_26

    .line 115
    :cond_7
    :goto_4
    if-lt v3, v1, :cond_8

    .line 116
    invoke-static {v11, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    .line 117
    goto/16 :goto_26

    .line 120
    :cond_8
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    nop

    .line 121
    :goto_5
    if-lt v3, v1, :cond_9

    goto :goto_7

    .line 122
    :cond_9
    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v11, v3

    .line 123
    if-eq v3, v12, :cond_b

    if-ne v3, v7, :cond_a

    .line 124
    goto :goto_6

    .line 126
    :cond_a
    int-to-char v3, v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v13

    goto :goto_5

    :cond_b
    :goto_6
    move v3, v13

    .line 128
    :goto_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 129
    if-ge v3, v1, :cond_2e

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_c

    goto/16 :goto_25

    .line 134
    :cond_c
    :goto_8
    if-lt v3, v1, :cond_d

    goto :goto_9

    .line 135
    :cond_d
    aget-byte v14, v11, v3

    .line 136
    if-eq v14, v12, :cond_2d

    if-ne v14, v7, :cond_e

    goto/16 :goto_24

    .line 143
    :cond_e
    :goto_9
    const-string v14, ""

    .line 144
    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v4, 0x40

    if-ne v10, v4, :cond_17

    .line 145
    nop

    .line 147
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    nop

    .line 148
    :goto_a
    if-lt v3, v1, :cond_f

    goto :goto_c

    .line 149
    :cond_f
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v11, v3

    .line 150
    if-eq v3, v12, :cond_11

    if-ne v3, v7, :cond_10

    .line 151
    goto :goto_b

    .line 153
    :cond_10
    int-to-char v3, v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_a

    :cond_11
    :goto_b
    move v3, v4

    .line 155
    :goto_c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    if-ge v3, v1, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_12

    goto :goto_10

    .line 161
    :cond_12
    :goto_d
    if-lt v3, v1, :cond_13

    goto :goto_e

    .line 162
    :cond_13
    aget-byte v10, v11, v3

    .line 163
    if-eq v10, v12, :cond_15

    if-ne v10, v7, :cond_14

    goto :goto_f

    :cond_14
    :goto_e
    move v10, v3

    move-object v3, v13

    goto :goto_11

    .line 164
    :cond_15
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 157
    :cond_16
    :goto_10
    invoke-static {v11, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    .line 158
    goto/16 :goto_26

    :cond_17
    move v10, v3

    move-object v4, v13

    move-object v3, v14

    .line 171
    :goto_11
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 172
    nop

    .line 173
    nop

    .line 173
    :goto_12
    if-lt v10, v1, :cond_18

    goto :goto_14

    .line 174
    :cond_18
    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v11, v10

    .line 175
    if-eq v10, v12, :cond_1a

    if-ne v10, v7, :cond_19

    .line 176
    goto :goto_13

    .line 178
    :cond_19
    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v13

    goto :goto_12

    :cond_1a
    :goto_13
    move v10, v13

    .line 180
    :goto_14
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 181
    invoke-static {v13}, Lcom/jcraft/jsch/HostKey;->name2type(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v6, :cond_1b

    .line 182
    invoke-static {v13}, Lcom/jcraft/jsch/HostKey;->name2type(Ljava/lang/String;)I

    move-result v6

    .line 183
    goto :goto_15

    .line 184
    :cond_1b
    move v10, v1

    .line 186
    :goto_15
    if-lt v10, v1, :cond_1c

    .line 187
    invoke-static {v11, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    .line 188
    goto/16 :goto_26

    .line 191
    :cond_1c
    :goto_16
    if-lt v10, v1, :cond_1d

    goto :goto_17

    .line 192
    :cond_1d
    aget-byte v13, v11, v10

    .line 193
    if-eq v13, v12, :cond_2c

    if-ne v13, v7, :cond_1e

    goto/16 :goto_23

    .line 200
    :cond_1e
    :goto_17
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 201
    nop

    .line 201
    :goto_18
    if-lt v10, v1, :cond_1f

    goto :goto_1b

    .line 202
    :cond_1f
    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v11, v10

    .line 203
    if-ne v10, v5, :cond_20

    .line 204
    goto :goto_19

    .line 206
    :cond_20
    const/16 v14, 0xa

    if-ne v10, v14, :cond_21

    .line 207
    goto :goto_1a

    .line 209
    :cond_21
    if-eq v10, v12, :cond_23

    if-ne v10, v7, :cond_22

    .line 210
    goto :goto_1a

    .line 212
    :cond_22
    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    move v10, v13

    goto :goto_18

    :cond_23
    :goto_1a
    move v10, v13

    .line 214
    :goto_1b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 215
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_24

    .line 216
    invoke-static {v11, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    .line 217
    goto/16 :goto_26

    .line 220
    :cond_24
    :goto_1c
    if-lt v10, v1, :cond_25

    goto :goto_1d

    .line 221
    :cond_25
    aget-byte v14, v11, v10

    .line 222
    if-eq v14, v12, :cond_2b

    if-ne v14, v7, :cond_26

    goto :goto_22

    .line 236
    :cond_26
    :goto_1d
    nop

    .line 237
    if-ge v10, v1, :cond_2a

    .line 238
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 239
    nop

    .line 239
    :goto_1e
    if-lt v10, v1, :cond_27

    goto :goto_1f

    .line 240
    :cond_27
    add-int/lit8 v7, v10, 0x1

    aget-byte v10, v11, v10

    .line 241
    if-ne v10, v5, :cond_28

    .line 242
    const/16 v14, 0xa

    goto :goto_20

    .line 244
    :cond_28
    const/16 v14, 0xa

    if-ne v10, v14, :cond_29

    .line 245
    nop

    .line 249
    :goto_1f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_21

    .line 247
    :cond_29
    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_20
    move v10, v7

    goto :goto_1e

    :cond_2a
    const/4 v7, 0x0

    .line 255
    :goto_21
    nop

    .line 256
    new-instance v10, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    .line 257
    invoke-static {v13}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v12

    .line 256
    move-object v1, v10

    move-object v2, v8

    move v5, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    .line 258
    iget-object v1, v8, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    goto :goto_26

    :cond_2b
    :goto_22
    const/16 v14, 0xa

    .line 223
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_2c
    :goto_23
    const/16 v14, 0xa

    .line 194
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_16

    :cond_2d
    :goto_24
    move v14, v4

    .line 137
    add-int/lit8 v3, v3, 0x1

    move v4, v14

    goto/16 :goto_8

    .line 130
    :cond_2e
    :goto_25
    invoke-static {v11, v2, v1}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    .line 131
    :goto_26
    move-object v1, v11

    goto/16 :goto_0

    :cond_2f
    :goto_27
    move v14, v4

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    move v4, v14

    goto/16 :goto_3

    .line 95
    :cond_30
    array-length v4, v11

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    .line 96
    array-length v5, v11

    invoke-static {v11, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    move-object v11, v4

    .line 99
    :cond_31
    add-int/lit8 v4, v1, 0x1

    int-to-byte v3, v3

    aput-byte v3, v11, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    move v1, v4

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v10, v0

    if-eqz p1, :cond_32

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    goto :goto_28

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_29

    :cond_32
    :goto_28
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_29
    if-nez v10, :cond_33

    goto :goto_2a

    :cond_33
    if-eq v10, v1, :cond_34

    :try_start_4
    invoke-virtual {v10, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    move-object v1, v10

    :goto_2a
    throw v1

    :catch_0
    move-exception v0

    move-object v1, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 264
    instance-of v2, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v2, :cond_35

    .line 265
    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    .line 266
    :cond_35
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method setKnownHosts(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/io/InputStream;)V

    .line 59
    return-void

    :catch_0
    move-exception p1

    .line 62
    return-void
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->sync(Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void
.end method

.method declared-synchronized sync(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 459
    if-nez p1, :cond_0

    .line 460
    goto :goto_0

    .line 461
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 462
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KnownHosts;->dump(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 464
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eq v0, p1, :cond_4

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v0

    :goto_1
    throw p1

    :catchall_2
    move-exception p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    throw p1
.end method

.method syncKnownHostsFile(Lcom/jcraft/jsch/UserInfo;)V
    .locals 6

    .line 346
    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->getKnownHostsRepositoryID()Ljava/lang/String;

    move-result-object v0

    .line 347
    if-nez v0, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    nop

    .line 351
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 353
    nop

    .line 354
    if-eqz p1, :cond_5

    .line 355
    nop

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " does not exist.\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Are you sure you want to create it?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v2

    .line 355
    nop

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 358
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The parent directory "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist.\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v4, "Are you sure you want to create it?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-interface {p1, v2}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v2

    .line 361
    if-eqz v2, :cond_2

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has not been created."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 364
    nop

    .line 365
    move v2, v3

    goto :goto_0

    .line 366
    :cond_1
    nop

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has been succesfully created.\nPlease check its access permission."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-interface {p1, v4}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 371
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 372
    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v4

    .line 375
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 376
    return-void

    .line 379
    :cond_6
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->sync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    return-void

    :catch_0
    move-exception p1

    .line 381
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to sync known host file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    nop

    .line 381
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method
