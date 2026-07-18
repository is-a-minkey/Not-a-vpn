.class public Lcom/vpnapp/IpChecker;
.super Ljava/lang/Object;
.source "IpChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/IpChecker$Callback;
    }
.end annotation


# static fields
.field private static lastIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/vpnapp/IpChecker;->lastIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lcom/vpnapp/IpChecker$Callback;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$IpChecker$dRpLa0bMrxMSCuUki9yDWgHOHZ4;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$IpChecker$dRpLa0bMrxMSCuUki9yDWgHOHZ4;-><init>(Lcom/vpnapp/IpChecker$Callback;)V

    .line 20
    const-string p0, "ip-check"

    .line 15
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    return-void
.end method

.method private static fetch()Ljava/lang/String;
    .locals 7

    .line 27
    nop

    .line 28
    const-string v0, "https://api.ipify.org"

    .line 29
    const-string v1, "https://checkip.amazonaws.com"

    .line 30
    const-string v2, "https://icanhazip.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 27
    nop

    .line 32
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 48
    const-string v0, "unavailable"

    return-object v0

    :cond_0
    aget-object v3, v0, v2

    .line 34
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 35
    const/16 v4, 0x1770

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 36
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 37
    const-string v4, "User-Agent"

    const-string v5, "not-a-vpn/2.1"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 39
    new-instance v4, Ljava/io/BufferedReader;

    .line 40
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 39
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    goto :goto_1

    :catch_0
    move-exception v3

    .line 32
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method static synthetic lambda$0(Lcom/vpnapp/IpChecker$Callback;)V
    .locals 4

    .line 16
    invoke-static {}, Lcom/vpnapp/IpChecker;->fetch()Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/vpnapp/IpChecker;->lastIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 18
    :goto_0
    sput-object v0, Lcom/vpnapp/IpChecker;->lastIp:Ljava/lang/String;

    .line 19
    invoke-interface {p0, v0, v3}, Lcom/vpnapp/IpChecker$Callback;->onResult(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method public static reset()V
    .locals 1

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/vpnapp/IpChecker;->lastIp:Ljava/lang/String;

    return-void
.end method
