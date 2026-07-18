.class Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
.super Lcom/jcraft/jsch/HostKey;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HashedHostKey"
.end annotation


# static fields
.field private static final HASH_DELIM:Ljava/lang/String; = "|"

.field private static final HASH_MAGIC:Ljava/lang/String; = "|1|"


# instance fields
.field hash:[B

.field private hashed:Z

.field salt:[B

.field final synthetic this$0:Lcom/jcraft/jsch/KnownHosts;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 570
    const-string v2, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    .line 571
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    .line 575
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    .line 561
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hashed:Z

    .line 562
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    .line 563
    iput-object p3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    .line 576
    iget-object p4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->host:Ljava/lang/String;

    const-string p5, "|1|"

    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 577
    iget-object p4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->host:Ljava/lang/String;

    const-string p5, "|1|"

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "|"

    invoke-virtual {p4, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-lez p4, :cond_2

    .line 578
    iget-object p4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->host:Ljava/lang/String;

    const-string p5, "|1|"

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 579
    const-string p5, "|"

    invoke-virtual {p4, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p4, p2, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 580
    const-string p6, "|"

    invoke-virtual {p4, p6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p6

    const/4 v0, 0x1

    add-int/2addr p6, v0

    invoke-virtual {p4, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 581
    invoke-static {p5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p6

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p6, p2, p5}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object p5

    iput-object p5, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    .line 582
    invoke-static {p4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p5, p2, p4}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object p2

    iput-object p2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    .line 583
    iget-object p1, p1, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    invoke-interface {p1}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result p1

    .line 584
    iget-object p2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    array-length p2, p2

    if-ne p2, p1, :cond_1

    iget-object p2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    array-length p2, p2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iput-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hashed:Z

    return-void

    .line 585
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    .line 586
    iput-object p3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    .line 587
    return-void

    .line 591
    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V

    .line 567
    return-void
.end method


# virtual methods
.method hash()V
    .locals 5

    .line 619
    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hashed:Z

    if-eqz v0, :cond_0

    .line 620
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 622
    sget-object v0, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    .line 623
    monitor-enter v0

    .line 624
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    .line 625
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 623
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 629
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v0, v0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 631
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->host:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 632
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v3, v3, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 633
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    .line 634
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    invoke-interface {v2, v3, v1}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 629
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "|1|"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    array-length v3, v3

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    array-length v3, v3

    invoke-static {v2, v1, v3, v4}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->host:Ljava/lang/String;

    .line 645
    iput-boolean v4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hashed:Z

    .line 646
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 636
    :catch_0
    move-exception v0

    .line 636
    nop

    .line 637
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    invoke-static {v1}, Lcom/jcraft/jsch/KnownHosts;->access$0(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/JSch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "an error occurred while trying to calculate the hash for host "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    const/4 v3, 0x3

    invoke-interface {v1, v3, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    .line 640
    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    .line 641
    return-void
.end method

.method isHashed()Z
    .locals 1

    .line 615
    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hashed:Z

    return v0
.end method

.method isMatched(Ljava/lang/String;)Z
    .locals 5

    .line 595
    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hashed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 596
    invoke-super {p0, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 599
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v0, v0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->salt:[B

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 601
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 602
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v3, v3, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 603
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v2, v2, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    .line 604
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    iget-object v3, v3, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    invoke-interface {v3, v2, v1}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 605
    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash:[B

    invoke-static {v3, v2}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v2

    monitor-exit v0

    move v1, v2

    return v1

    .line 599
    :catchall_0
    move-exception v2

    .line 599
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 607
    :catch_0
    move-exception v0

    .line 607
    nop

    .line 608
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->this$0:Lcom/jcraft/jsch/KnownHosts;

    invoke-static {v2}, Lcom/jcraft/jsch/KnownHosts;->access$0(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/JSch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "an error occurred while trying to check hash for host "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 608
    const/4 v3, 0x3

    invoke-interface {v2, v3, p1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    return v1
.end method
