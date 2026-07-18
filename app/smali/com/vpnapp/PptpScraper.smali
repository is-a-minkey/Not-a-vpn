.class public Lcom/vpnapp/PptpScraper;
.super Ljava/lang/Object;
.source "PptpScraper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/PptpScraper$PptpCredentials;
    }
.end annotation


# static fields
.field private static final SERVERS:[[Ljava/lang/String;

.field private static final VPNBOOK_URL:Ljava/lang/String; = "https://www.vpnbook.com/freevpn"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    .line 12
    const-string v1, "United States"

    const-string v2, "\ud83c\uddfa\ud83c\uddf8"

    const-string v3, "us1.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 13
    const-string v1, "United States"

    const-string v2, "\ud83c\uddfa\ud83c\uddf8"

    const-string v3, "us2.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 14
    const-string v1, "United Kingdom"

    const-string v2, "\ud83c\uddec\ud83c\udde7"

    const-string v3, "uk.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 15
    const-string v1, "Canada"

    const-string v2, "\ud83c\udde8\ud83c\udde6"

    const-string v3, "ca198.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 16
    const-string v1, "Germany"

    const-string v2, "\ud83c\udde9\ud83c\uddea"

    const-string v3, "de233.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 17
    const-string v1, "France"

    const-string v2, "\ud83c\uddeb\ud83c\uddf7"

    const-string v3, "fr1.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 18
    const-string v1, "Poland"

    const-string v2, "\ud83c\uddf5\ud83c\uddf1"

    const-string v3, "pl126.vpnbook.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 11
    sput-object v0, Lcom/vpnapp/PptpScraper;->SERVERS:[[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildResult(Ljava/lang/String;Ljava/lang/String;)Lcom/vpnapp/PptpScraper$PptpCredentials;
    .locals 14

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    sget-object v1, Lcom/vpnapp/PptpScraper;->SERVERS:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    .line 70
    new-instance v1, Lcom/vpnapp/PptpScraper$PptpCredentials;

    invoke-direct {v1, p0, p1, v0}, Lcom/vpnapp/PptpScraper$PptpCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :cond_0
    aget-object v5, v1, v4

    new-instance v13, Lcom/vpnapp/VpnServer;

    aget-object v7, v5, v3

    const/4 v6, 0x1

    aget-object v8, v5, v6

    const/4 v6, 0x2

    aget-object v9, v5, v6

    const-string v12, "PPTP"

    move-object v6, v13

    move-object v10, p0

    move-object v11, p1

    invoke-direct/range {v6 .. v12}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static extractPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 52
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 53
    add-int/lit16 v2, v0, 0x1f4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v2, "(?i)<(?:strong|b|td|span)[^>]*>\\s*([a-zA-Z0-9]{5,12})\\s*</"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 55
    nop

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const-string v3, "vpnbook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "strong"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    return-object v2

    .line 62
    :cond_2
    :goto_0
    const-string v0, "(?i)password[^:]*:\\s*(?:<[^>]+>\\s*)*([a-zA-Z0-9]{5,14})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 64
    :cond_3
    const-string v2, ""

    return-object v2
.end method

.method private static extractUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 38
    nop

    .line 39
    const-string v0, "(?i)username[^:]*:\\s*<[^>]*>\\s*([a-zA-Z0-9_]+)"

    .line 40
    const-string v1, "(?i)>\\s*([a-zA-Z0-9_]+)\\s*</(?:strong|b|td)>.*?(?:password|Password)"

    .line 41
    const-string v2, "(?i)username</(?:td|th|b|strong)>\\s*<(?:td|th)[^>]*>\\s*([a-zA-Z0-9_]+)"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 38
    nop

    .line 43
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 47
    const-string p0, "vpnbook"

    return-object p0

    :cond_0
    aget-object v3, v0, v2

    .line 44
    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static scrape()Lcom/vpnapp/PptpScraper$PptpCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    :try_start_0
    const-string v0, "https://www.vpnbook.com/freevpn"

    invoke-static {v0}, Lcom/vpnapp/VpnBookScraper;->fetchPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-static {v0}, Lcom/vpnapp/PptpScraper;->extractUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v0}, Lcom/vpnapp/PptpScraper;->extractPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "vpnbook"

    .line 34
    :cond_0
    invoke-static {v1, v0}, Lcom/vpnapp/PptpScraper;->buildResult(Ljava/lang/String;Ljava/lang/String;)Lcom/vpnapp/PptpScraper$PptpCredentials;

    move-result-object v0

    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 30
    const-string v0, "vpnbook"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vpnapp/PptpScraper;->buildResult(Ljava/lang/String;Ljava/lang/String;)Lcom/vpnapp/PptpScraper$PptpCredentials;

    move-result-object v0

    return-object v0
.end method
