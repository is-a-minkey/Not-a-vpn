.class public Lcom/vpnapp/WireGuardScraper;
.super Ljava/lang/Object;
.source "WireGuardScraper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/WireGuardScraper$WgServerConfig;
    }
.end annotation


# static fields
.field private static final VPNBOOK_WG:Ljava/lang/String; = "https://www.vpnbook.com/freevpn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absoluteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 131
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 132
    :cond_0
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.vpnbook.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.vpnbook.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    return-object p0
.end method

.method private static builtinFallbacks()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vpnapp/WireGuardScraper$WgServerConfig;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const-string v1, "[Interface]\nPrivateKey = REPLACE_ME\nAddress = 10.8.0.%d/24\nDNS = 1.1.1.1\n\n[Peer]\nPublicKey = %s\nEndpoint = %s\nAllowedIPs = 0.0.0.0/0, ::/0\nPersistentKeepalive = 25\n"

    .line 104
    const/4 v2, 0x4

    new-array v3, v2, [[Ljava/lang/Object;

    .line 105
    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "United States"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "\ud83c\uddfa\ud83c\uddf8"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "us1.vpnbook.com:51820"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h/m58/VM="

    const/4 v10, 0x3

    aput-object v6, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v5, v3, v7

    .line 106
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "United States"

    aput-object v6, v5, v7

    const-string v6, "\ud83c\uddfa\ud83c\uddf8"

    aput-object v6, v5, v8

    const-string v6, "us2.vpnbook.com:51820"

    aput-object v6, v5, v9

    const-string v6, "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h/m58/VM="

    aput-object v6, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v5, v3, v8

    .line 107
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "United Kingdom"

    aput-object v6, v5, v7

    const-string v6, "\ud83c\uddec\ud83c\udde7"

    aput-object v6, v5, v8

    const-string v6, "uk.vpnbook.com:51820"

    aput-object v6, v5, v9

    const-string v6, "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h/m58/VM="

    aput-object v6, v5, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v5, v3, v9

    .line 108
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Germany"

    aput-object v6, v5, v7

    const-string v6, "\ud83c\udde9\ud83c\uddea"

    aput-object v6, v5, v8

    const-string v6, "de233.vpnbook.com:51820"

    aput-object v6, v5, v9

    const-string v6, "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h/m58/VM="

    aput-object v6, v5, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    aput-object v5, v3, v10

    .line 104
    nop

    .line 110
    array-length v4, v3

    move v5, v7

    :goto_0
    if-lt v5, v4, :cond_0

    .line 114
    return-object v0

    :cond_0
    aget-object v6, v3, v5

    .line 111
    new-array v11, v10, [Ljava/lang/Object;

    aget-object v12, v6, v2

    aput-object v12, v11, v7

    aget-object v12, v6, v10

    aput-object v12, v11, v8

    aget-object v12, v6, v9

    aput-object v12, v11, v9

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 112
    new-instance v12, Lcom/vpnapp/WireGuardScraper$WgServerConfig;

    aget-object v13, v6, v7

    check-cast v13, Ljava/lang/String;

    aget-object v14, v6, v8

    check-cast v14, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "WG-"

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v6, v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v13, v14, v2, v11}, Lcom/vpnapp/WireGuardScraper$WgServerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x4

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static extractConfsFromZip([B)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/vpnapp/WireGuardScraper$WgServerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    nop

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-nez p0, :cond_1

    .line 67
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 68
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".conf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 60
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_2

    .line 61
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, ".*/"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ".conf"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const-string v2, "[Interface]"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[Peer]"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v2, Lcom/vpnapp/WireGuardScraper$WgServerConfig;

    invoke-static {p0}, Lcom/vpnapp/WireGuardScraper;->guessCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/vpnapp/WireGuardScraper;->guessFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/vpnapp/WireGuardScraper$WgServerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/2addr v4, v5

    goto :goto_1
.end method

.method static fetchBytes(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 119
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 120
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Android 11; Mobile; rv:109.0)"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 125
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 127
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static guessCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "United States"

    return-object p0

    .line 140
    :cond_0
    const-string v0, "uk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "gb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Canada"

    return-object p0

    .line 142
    :cond_2
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Germany"

    return-object p0

    .line 143
    :cond_3
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "France"

    return-object p0

    .line 144
    :cond_4
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Poland"

    return-object p0

    .line 145
    :cond_5
    const-string p0, "Unknown"

    return-object p0

    :cond_6
    :goto_0
    const-string p0, "United Kingdom"

    return-object p0
.end method

.method private static guessFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/vpnapp/WireGuardScraper;->guessCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "France"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    const-string p0, "\ud83c\uddeb\ud83c\uddf7"

    return-object p0

    :sswitch_1
    const-string v0, "Canada"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    const-string p0, "\ud83c\udde8\ud83c\udde6"

    return-object p0

    :sswitch_2
    const-string v0, "Germany"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    const-string p0, "\ud83c\udde9\ud83c\uddea"

    return-object p0

    :sswitch_3
    const-string v0, "United Kingdom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 151
    :cond_3
    const-string p0, "\ud83c\uddec\ud83c\udde7"

    return-object p0

    :sswitch_4
    const-string v0, "Poland"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 155
    :cond_4
    const-string p0, "\ud83c\uddf5\ud83c\uddf1"

    return-object p0

    :sswitch_5
    const-string v0, "United States"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 150
    :cond_5
    const-string p0, "\ud83c\uddfa\ud83c\uddf8"

    return-object p0

    .line 156
    :goto_0
    const-string p0, "\ud83c\udf10"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7925c061 -> :sswitch_5
        -0x712d8b76 -> :sswitch_4
        -0x64d82fb2 -> :sswitch_3
        0x5ead6393 -> :sswitch_2
        0x77df12ee -> :sswitch_1
        0x7de7743b -> :sswitch_0
    .end sparse-switch
.end method

.method public static scrape()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vpnapp/WireGuardScraper$WgServerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    const-string v0, "https://www.vpnbook.com/freevpn"

    invoke-static {v0}, Lcom/vpnapp/VpnBookScraper;->fetchPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {v0}, Lcom/vpnapp/WireGuardScraper;->scrapeZips(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-static {v0}, Lcom/vpnapp/WireGuardScraper;->scrapeDirectConfs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-static {v0}, Lcom/vpnapp/WireGuardScraper;->scrapeInlineConfs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vpnapp/WireGuardScraper;->builtinFallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    return-object v1
.end method

.method private static scrapeDirectConfs(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vpnapp/WireGuardScraper$WgServerConfig;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const-string v1, "href=[\"\'](.*?\\.conf)[\"\']"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 74
    nop

    .line 74
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    return-object v0

    .line 75
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vpnapp/WireGuardScraper;->absoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    :try_start_0
    invoke-static {v1}, Lcom/vpnapp/VpnBookScraper;->fetchPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v3, "[Interface]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    const-string v3, ".*/"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ".conf"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v3, Lcom/vpnapp/WireGuardScraper$WgServerConfig;

    invoke-static {v1}, Lcom/vpnapp/WireGuardScraper;->guessCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/vpnapp/WireGuardScraper;->guessFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/vpnapp/WireGuardScraper$WgServerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private static scrapeInlineConfs(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vpnapp/WireGuardScraper$WgServerConfig;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const-string v1, "<(?:pre|code|textarea)[^>]*>(.*?)</(?:pre|code|textarea)>"

    .line 89
    nop

    .line 88
    const/16 v2, 0x22

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 88
    nop

    .line 90
    nop

    .line 91
    const/4 v1, 0x0

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    return-object v0

    .line 92
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<[^>]+>"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, "&amp;"

    const-string v4, "&"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&lt;"

    const-string v4, "<"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&gt;"

    const-string v4, ">"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 92
    nop

    .line 94
    const-string v3, "[Interface]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[Peer]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v3, Lcom/vpnapp/WireGuardScraper$WgServerConfig;

    const-string v4, "Unknown"

    const-string v5, "\ud83c\udf10"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VPNBook-WG-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/vpnapp/WireGuardScraper$WgServerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static scrapeZips(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vpnapp/WireGuardScraper$WgServerConfig;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const-string v1, "href=[\"\'](.*?\\.zip)[\"\']"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 45
    nop

    .line 45
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    return-object v0

    .line 46
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vpnapp/WireGuardScraper;->absoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "wireguard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "wg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vpn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/vpnapp/WireGuardScraper;->fetchBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/vpnapp/WireGuardScraper;->extractConfsFromZip([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method
