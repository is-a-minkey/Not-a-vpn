.class public Lcom/vpnapp/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractHostname([BI)Ljava/lang/String;
    .locals 5

    .line 22
    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ge p1, v1, :cond_0

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    nop

    .line 25
    nop

    .line 25
    :goto_0
    if-lt v1, p1, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 27
    if-nez v2, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    const/16 v3, 0xc0

    and-int v4, v2, v3

    if-ne v4, v3, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 30
    add-int v3, v1, v2

    if-le v3, p1, :cond_4

    .line 35
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 31
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move v1, v3

    goto :goto_0
.end method

.method private static findQtypeOffset([BI)I
    .locals 5

    .line 39
    nop

    .line 40
    const/16 v0, 0xc

    .line 40
    :goto_0
    const/4 v1, 0x1

    if-lt v0, p1, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 42
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_1
    const/16 v3, 0xc0

    and-int v4, v2, v3

    if-ne v4, v3, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 46
    :goto_1
    add-int p0, v0, v1

    const/4 v1, -0x1

    if-ge p0, p1, :cond_2

    return v0

    :cond_2
    move v0, v1

    return v0

    .line 44
    :cond_3
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static resolve([BI)[B
    .locals 3

    .line 8
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/vpnapp/DnsResolver;->extractHostname([BI)Ljava/lang/String;

    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lcom/vpnapp/DnsResolver;->findQtypeOffset([BI)I

    move-result p1

    .line 11
    if-gez p1, :cond_1

    return-object v0

    .line 12
    :cond_1
    invoke-static {p0, p1}, Lcom/vpnapp/IpPacketBuilder;->getShortU([BI)I

    move-result p0

    .line 13
    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    return-object v0

    .line 14
    :cond_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 16
    array-length p1, p0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    move-object v0, p0

    return-object v0

    .line 17
    :cond_3
    return-object v0

    .line 18
    :catch_0
    move-exception p0

    .line 18
    :cond_4
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method
