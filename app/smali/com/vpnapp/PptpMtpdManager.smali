.class public Lcom/vpnapp/PptpMtpdManager;
.super Ljava/lang/Object;
.source "PptpMtpdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/PptpMtpdManager$Mode;
    }
.end annotation


# static fields
.field private static final MTPD_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "notavpn/PptpMtpd"


# instance fields
.field private currentIface:Ljava/lang/String;

.field private mtpdProcess:Ljava/lang/Process;

.field private volatile running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    nop

    .line 20
    const-string v0, "/system/bin/mtpd"

    .line 21
    const-string v1, "/system/xbin/mtpd"

    .line 22
    const-string v2, "/vendor/bin/mtpd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/vpnapp/PptpMtpdManager;->MTPD_PATHS:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/PptpMtpdManager;->running:Z

    .line 15
    return-void
.end method

.method private static getDefaultInterface()Ljava/lang/String;
    .locals 6

    .line 177
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sh"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "-c"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "ip route get 8.8.8.8"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 180
    if-nez v3, :cond_0

    return-object v0

    .line 182
    :cond_0
    const-string v1, "dev\\s+(\\S+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 181
    nop

    .line 183
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 184
    :catch_0
    move-exception v1

    .line 184
    :cond_1
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private static getGateway()Ljava/lang/String;
    .locals 6

    .line 189
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sh"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "-c"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "ip route get 8.8.8.8"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 190
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 192
    if-nez v3, :cond_0

    return-object v0

    .line 194
    :cond_0
    const-string v1, "via\\s+(\\S+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 193
    nop

    .line 195
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 196
    :catch_0
    move-exception v1

    .line 196
    :cond_1
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private static getMtpdPath()Ljava/lang/String;
    .locals 6

    .line 40
    sget-object v0, Lcom/vpnapp/PptpMtpdManager;->MTPD_PATHS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    .line 42
    sget-object v0, Lcom/vpnapp/PptpMtpdManager;->MTPD_PATHS:[Ljava/lang/String;

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    aget-object v4, v0, v3

    .line 41
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    return-object v0

    .line 40
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isMtpdAvailable()Z
    .locals 7

    .line 34
    sget-object v0, Lcom/vpnapp/PptpMtpdManager;->MTPD_PATHS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lt v3, v1, :cond_0

    .line 36
    return v2

    :cond_0
    aget-object v5, v0, v3

    .line 35
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    return v2

    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private kill()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/vpnapp/PptpMtpdManager;->mtpdProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/PptpMtpdManager;->mtpdProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpnapp/PptpMtpdManager;->mtpdProcess:Ljava/lang/Process;

    .line 161
    :cond_0
    const-string v0, "pkill -f mtpd 2>/dev/null || true"

    invoke-static {v0}, Lcom/vpnapp/RootManager;->runAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    return-void
.end method

.method static synthetic lambda$0(Lcom/vpnapp/PptpMtpdManager;)V
    .locals 6

    .line 83
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 84
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/vpnapp/PptpMtpdManager;->mtpdProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 83
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    nop

    .line 86
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 88
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 87
    :cond_0
    :try_start_3
    const-string v3, "notavpn/PptpMtpd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mtpd: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eq v0, v1, :cond_3

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object v1, v0

    :goto_1
    throw v1

    :catch_0
    move-exception v0

    .line 89
    :cond_4
    return-void
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private setupRoutes(Ljava/lang/String;)V
    .locals 4

    .line 118
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {}, Lcom/vpnapp/PptpMtpdManager;->getGateway()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ip route add "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, " via "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, " dev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, " proto static table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vpnapp/RootManager;->runAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ip route del default table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lcom/vpnapp/RootManager;->runAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ip route add default dev ppp0 table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vpnapp/RootManager;->runAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    const-string v1, "notavpn/PptpMtpd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Routes configured: all traffic \u2192 ppp0, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2192 "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 121
    :cond_1
    :goto_0
    const-string p1, "notavpn/PptpMtpd"

    const-string v0, "Could not determine gateway \u2014 routes NOT configured"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const-string v0, "notavpn/PptpMtpd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Route setup failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method private waitForPpp0(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 168
    nop

    .line 168
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/vpnapp/PptpMtpdManager;->running:Z

    if-nez v0, :cond_0

    return v2

    .line 169
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/net/ppp0"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    return v2

    .line 170
    :cond_1
    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 172
    :cond_2
    return v2
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vpnapp/PptpMtpdManager$Mode;
    .locals 3

    .line 48
    invoke-static {}, Lcom/vpnapp/PptpMtpdManager;->isMtpdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string p1, "notavpn/PptpMtpd"

    const-string p2, "mtpd binary not found on this device"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object p1, Lcom/vpnapp/PptpMtpdManager$Mode;->NOT_AVAILABLE:Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p1

    .line 52
    :cond_0
    invoke-static {}, Lcom/vpnapp/RootManager;->isGranted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string p1, "notavpn/PptpMtpd"

    const-string p2, "Root not granted \u2014 cannot use mtpd"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object p1, Lcom/vpnapp/PptpMtpdManager$Mode;->NO_ROOT:Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p1

    .line 57
    :cond_1
    invoke-static {}, Lcom/vpnapp/PptpMtpdManager;->getDefaultInterface()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 59
    const-string p1, "notavpn/PptpMtpd"

    const-string p2, "Cannot determine default network interface"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object p1, Lcom/vpnapp/PptpMtpdManager$Mode;->FAILED:Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p1

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vpnapp/PptpMtpdManager;->getMtpdPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " pptp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 1723"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " linkname vpn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string p2, " password "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string p2, " refuse-eap nobsdcomp nodefaultroute usepeerdns"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p2, " idle 1800 mtu 1400 mru 1400"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 73
    const-string p3, "notavpn/PptpMtpd"

    const-string v0, "Launching mtpd via su"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    new-instance p3, Ljava/lang/ProcessBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "su"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "-c"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-direct {p3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p2

    .line 76
    iput-object p2, p0, Lcom/vpnapp/PptpMtpdManager;->mtpdProcess:Ljava/lang/Process;

    .line 79
    iput-boolean v2, p0, Lcom/vpnapp/PptpMtpdManager;->running:Z

    .line 82
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/vpnapp/-$$Lambda$PptpMtpdManager$eXR8FScJ05oP5HnhkLNSezkZ7Nk;

    invoke-direct {p3, p0}, Lcom/vpnapp/-$$Lambda$PptpMtpdManager$eXR8FScJ05oP5HnhkLNSezkZ7Nk;-><init>(Lcom/vpnapp/PptpMtpdManager;)V

    .line 89
    const-string v0, "mtpd-log"

    .line 82
    invoke-direct {p2, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 91
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 94
    const-wide/16 p2, 0x4e20

    invoke-direct {p0, p2, p3}, Lcom/vpnapp/PptpMtpdManager;->waitForPpp0(J)Z

    move-result p2

    if-nez p2, :cond_3

    .line 95
    const-string p1, "notavpn/PptpMtpd"

    const-string p2, "ppp0 did not appear within 20 s"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/vpnapp/PptpMtpdManager;->kill()V

    .line 97
    sget-object p1, Lcom/vpnapp/PptpMtpdManager$Mode;->FAILED:Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p1

    .line 100
    :cond_3
    const-string p2, "notavpn/PptpMtpd"

    const-string p3, "ppp0 up \u2014 configuring routes"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, p1}, Lcom/vpnapp/PptpMtpdManager;->setupRoutes(Ljava/lang/String;)V

    .line 102
    sget-object p1, Lcom/vpnapp/PptpMtpdManager$Mode;->CONNECTED:Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p1

    .line 107
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 108
    const-string p2, "notavpn/PptpMtpd"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "mtpd error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/vpnapp/PptpMtpdManager;->kill()V

    .line 110
    sget-object p1, Lcom/vpnapp/PptpMtpdManager$Mode;->FAILED:Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p1

    .line 104
    :catch_1
    move-exception p1

    .line 104
    nop

    .line 105
    const-string p2, "notavpn/PptpMtpd"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "su denied by OS: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object p1, Lcom/vpnapp/PptpMtpdManager$Mode;->NO_ROOT:Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p1
.end method

.method public disconnect()V
    .locals 2

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpnapp/PptpMtpdManager;->running:Z

    .line 149
    iget-object v0, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ip route del default dev ppp0 table "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>/dev/null || true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/vpnapp/RootManager;->runAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ip route add default table "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vpnapp/PptpMtpdManager;->currentIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>/dev/null || true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/vpnapp/RootManager;->runAsRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/vpnapp/PptpMtpdManager;->kill()V

    .line 156
    const-string v0, "notavpn/PptpMtpd"

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method
