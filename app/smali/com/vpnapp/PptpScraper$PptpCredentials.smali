.class public Lcom/vpnapp/PptpScraper$PptpCredentials;
.super Ljava/lang/Object;
.source "PptpScraper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/PptpScraper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PptpCredentials"
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vpnapp/VpnServer;",
            ">;"
        }
    .end annotation
.end field

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vpnapp/VpnServer;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/PptpScraper$PptpCredentials;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/vpnapp/PptpScraper$PptpCredentials;->password:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpnapp/PptpScraper$PptpCredentials;->servers:Ljava/util/List;

    return-void
.end method
