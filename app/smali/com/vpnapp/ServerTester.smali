.class public Lcom/vpnapp/ServerTester;
.super Ljava/lang/Object;
.source "ServerTester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/ServerTester$ProgressCallback;,
        Lcom/vpnapp/ServerTester$TestedServer;
    }
.end annotation


# static fields
.field private static final SAMPLES:I = 0x2

.field private static final THREADS:I = 0x6

.field private static final TIMEOUT_MS:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static icmpPing(Ljava/lang/String;)J
    .locals 6

    .line 71
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 72
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    const/16 v4, 0xbb8

    invoke-virtual {p0, v4}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result p0

    .line 73
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    return-wide v0

    .line 74
    :catch_0
    move-exception p0

    .line 74
    :cond_0
    return-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method static synthetic lambda$0(Lcom/vpnapp/VpnServer;)Lcom/vpnapp/ServerTester$TestedServer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-static {p0}, Lcom/vpnapp/ServerTester;->testServer(Lcom/vpnapp/VpnServer;)Lcom/vpnapp/ServerTester$TestedServer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$1(Lcom/vpnapp/ServerTester$TestedServer;Lcom/vpnapp/ServerTester$TestedServer;)I
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/vpnapp/ServerTester$TestedServer;->reachable:Z

    iget-boolean v1, p1, Lcom/vpnapp/ServerTester$TestedServer;->reachable:Z

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/vpnapp/ServerTester$TestedServer;->reachable:Z

    const/4 p1, 0x1

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    move v0, p1

    return v0

    .line 38
    :cond_1
    iget-wide v0, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    iget-wide p0, p1, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static rankServers(Ljava/util/List;Lcom/vpnapp/ServerTester$ProgressCallback;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vpnapp/VpnServer;",
            ">;",
            "Lcom/vpnapp/ServerTester$ProgressCallback;",
            ")",
            "Ljava/util/List<",
            "Lcom/vpnapp/ServerTester$TestedServer;",
            ">;"
        }
    .end annotation

    .line 22
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    nop

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v0, v5

    .line 28
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 36
    sget-object p0, Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;->INSTANCE:Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    return-object v3

    .line 35
    :cond_1
    new-instance v0, Lcom/vpnapp/ServerTester$TestedServer;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vpnapp/VpnServer;

    const-wide/16 v6, -0x1

    invoke-direct {v0, v1, v6, v7, v5}, Lcom/vpnapp/ServerTester$TestedServer;-><init>(Lcom/vpnapp/VpnServer;JZ)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 29
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1b58

    invoke-interface {v2, v7, v8, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vpnapp/ServerTester$TestedServer;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :catch_0
    move-exception v2

    .line 30
    nop

    .line 31
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 32
    if-eqz p1, :cond_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/vpnapp/ServerTester$ProgressCallback;->onProgress(II)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vpnapp/VpnServer;

    new-instance v4, Lcom/vpnapp/-$$Lambda$ServerTester$tWMVV3np2BI40wqgrepUR39G6QI;

    invoke-direct {v4, v3}, Lcom/vpnapp/-$$Lambda$ServerTester$tWMVV3np2BI40wqgrepUR39G6QI;-><init>(Lcom/vpnapp/VpnServer;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static tcpPing(Ljava/lang/String;I)J
    .locals 6

    .line 60
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 61
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 62
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p0, 0xbb8

    invoke-virtual {v4, v5, p0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    .line 64
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 65
    move-wide v0, p0

    return-wide v0

    .line 66
    :catch_0
    move-exception p0

    .line 66
    return-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private static testServer(Lcom/vpnapp/VpnServer;)Lcom/vpnapp/ServerTester$TestedServer;
    .locals 11

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Lcom/vpnapp/VpnServer;->effectivePort()I

    move-result v0

    .line 46
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move-wide v6, v1

    :goto_0
    const/4 v8, 0x2

    if-lt v4, v8, :cond_2

    .line 50
    const/4 v0, 0x1

    if-nez v5, :cond_1

    .line 51
    iget-object v4, p0, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-static {v4}, Lcom/vpnapp/ServerTester;->icmpPing(Ljava/lang/String;)J

    move-result-wide v4

    .line 52
    cmp-long v1, v4, v1

    if-ltz v1, :cond_0

    new-instance v1, Lcom/vpnapp/ServerTester$TestedServer;

    invoke-direct {v1, p0, v4, v5, v0}, Lcom/vpnapp/ServerTester$TestedServer;-><init>(Lcom/vpnapp/VpnServer;JZ)V

    return-object v1

    .line 53
    :cond_0
    new-instance v1, Lcom/vpnapp/ServerTester$TestedServer;

    const-wide/16 v4, -0x1

    invoke-direct {v1, p0, v4, v5, v3}, Lcom/vpnapp/ServerTester$TestedServer;-><init>(Lcom/vpnapp/VpnServer;JZ)V

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/vpnapp/ServerTester$TestedServer;

    int-to-long v2, v5

    div-long v2, v6, v2

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/vpnapp/ServerTester$TestedServer;-><init>(Lcom/vpnapp/VpnServer;JZ)V

    return-object v1

    .line 47
    :cond_2
    iget-object v8, p0, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/vpnapp/ServerTester;->tcpPing(Ljava/lang/String;I)J

    move-result-wide v8

    .line 48
    cmp-long v10, v8, v1

    if-ltz v10, :cond_3

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    .line 46
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
