.class public Lcom/vpnapp/VpnBookScraper;
.super Ljava/lang/Object;
.source "VpnBookScraper.java"


# static fields
.field private static final TIMEOUT_MS:I = 0x2ee0

.field private static final VPNBOOK_URL:Ljava/lang/String; = "https://www.vpnbook.com/freevpn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 58
    const-string v0, "(?:password|pass)[^:]*:\\s*(?:<[^>]+>)?([a-zA-Z0-9]+)(?:</|\\s)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 62
    if-ltz v0, :cond_1

    .line 63
    add-int/lit16 v1, v0, 0x12c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 64
    const-string v0, ">([a-zA-Z0-9]{6,12})<"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 68
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static extractUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 48
    const-string v0, "(?:username|user)[^:]*:\\s*<[^>]*>([a-z0-9]+)<"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    const-string v0, ">(vpnbook[a-z0-9]*)<"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_1
    const-string p0, "vpnbook"

    return-object p0
.end method

.method static fetchPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    nop

    .line 74
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 77
    const/16 v0, 0x2ee0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Android 11; Mobile; rv:109.0) Gecko/109.0 Firefox/115.0"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "Accept"

    const-string v1, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 82
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 88
    :cond_1
    return-object v0

    :cond_2
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 89
    :catchall_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    .line 89
    :goto_1
    if-eqz p0, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method private static guessCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 93
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "United States"

    return-object p0

    .line 94
    :cond_0
    const-string v0, "uk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "United Kingdom"

    return-object p0

    .line 95
    :cond_1
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Canada"

    return-object p0

    .line 96
    :cond_2
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Germany"

    return-object p0

    .line 97
    :cond_3
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "France"

    return-object p0

    .line 98
    :cond_4
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Poland"

    return-object p0

    .line 99
    :cond_5
    const-string v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Netherlands"

    return-object p0

    .line 100
    :cond_6
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static guessFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\ud83c\uddfa\ud83c\uddf8"

    return-object p0

    .line 105
    :cond_0
    const-string v0, "uk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\ud83c\uddec\ud83c\udde7"

    return-object p0

    .line 106
    :cond_1
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\ud83c\udde8\ud83c\udde6"

    return-object p0

    .line 107
    :cond_2
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "\ud83c\udde9\ud83c\uddea"

    return-object p0

    .line 108
    :cond_3
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "\ud83c\uddeb\ud83c\uddf7"

    return-object p0

    .line 109
    :cond_4
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "\ud83c\uddf5\ud83c\uddf1"

    return-object p0

    .line 110
    :cond_5
    const-string p0, "\ud83c\udf10"

    return-object p0
.end method

.method public static scrape()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vpnapp/VpnServer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    const-string v0, "https://www.vpnbook.com/freevpn"

    invoke-static {v0}, Lcom/vpnapp/VpnBookScraper;->fetchPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/vpnapp/VpnBookScraper;->extractUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-static {v0}, Lcom/vpnapp/VpnBookScraper;->extractPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const/4 v1, 0x7

    new-array v11, v1, [[Ljava/lang/String;

    .line 23
    const-string v1, "United States"

    const-string v2, "\ud83c\uddfa\ud83c\uddf8"

    const-string v3, "us1.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v11, v12

    .line 24
    const-string v1, "United States"

    const-string v2, "\ud83c\uddfa\ud83c\uddf8"

    const-string v3, "us2.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v11, v13

    .line 25
    const-string v1, "United Kingdom"

    const-string v2, "\ud83c\uddec\ud83c\udde7"

    const-string v3, "uk.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x2

    aput-object v1, v11, v14

    .line 26
    const-string v1, "Canada"

    const-string v2, "\ud83c\udde8\ud83c\udde6"

    const-string v3, "ca198.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v11, v2

    .line 27
    const-string v1, "Germany"

    const-string v2, "\ud83c\udde9\ud83c\uddea"

    const-string v3, "de233.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v11, v2

    .line 28
    const-string v1, "France"

    const-string v2, "\ud83c\uddeb\ud83c\uddf7"

    const-string v3, "fr1.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v11, v2

    .line 29
    const-string v1, "Poland"

    const-string v2, "\ud83c\uddf5\ud83c\uddf1"

    const-string v3, "pl126.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v11, v2

    .line 22
    nop

    .line 32
    const-string v1, "([a-z]{2,6}\\d{0,3}\\.vpnbook\\.com)"

    invoke-static {v1, v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 34
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_6

    .line 37
    array-length v0, v11

    move v7, v12

    :goto_1
    if-lt v7, v0, :cond_5

    .line 38
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    :cond_0
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not scrape credentials from VPNBook.\nCheck your internet connection."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    return-object v10

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 39
    nop

    .line 40
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    move v1, v12

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vpnapp/VpnServer;

    iget-object v2, v2, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v13

    .line 41
    :goto_3
    if-nez v1, :cond_0

    new-instance v11, Lcom/vpnapp/VpnServer;

    invoke-static {v4}, Lcom/vpnapp/VpnBookScraper;->guessCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/vpnapp/VpnBookScraper;->guessFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "PPTP"

    move-object v1, v11

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    aget-object v1, v11, v7

    new-instance v6, Lcom/vpnapp/VpnServer;

    aget-object v2, v1, v12

    aget-object v3, v1, v13

    aget-object v4, v1, v14

    const-string v16, "PPTP"

    move-object v1, v6

    move-object v5, v8

    move-object v12, v6

    move-object v6, v9

    move/from16 v17, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v17, 0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto/16 :goto_0
.end method
