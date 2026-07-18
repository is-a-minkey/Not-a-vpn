.class public Lcom/vpnapp/WireGuardScraper$WgServerConfig;
.super Ljava/lang/Object;
.source "WireGuardScraper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/WireGuardScraper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WgServerConfig"
.end annotation


# instance fields
.field public final configName:Ljava/lang/String;

.field public final country:Ljava/lang/String;

.field public final endpoint:Ljava/lang/String;

.field public final flag:Ljava/lang/String;

.field public final rawConf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->country:Ljava/lang/String;

    iput-object p2, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->flag:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->configName:Ljava/lang/String;

    iput-object p4, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->rawConf:Ljava/lang/String;

    .line 18
    invoke-static {p4}, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->extractEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->endpoint:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private static extractEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 21
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 25
    const-string p0, ""

    return-object p0

    :cond_0
    aget-object v2, p0, v1

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "endpoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 p0, 0x3d

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  [WireGuard]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->endpoint:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->endpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
