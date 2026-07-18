.class final synthetic Lcom/vpnapp/-$$Lambda$MainActivity$TkDJ-AgMvGmkkd8vndGOCM1y3ks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/MainActivity;

.field private final synthetic f$1:Lcom/vpnapp/VpnServer;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$MainActivity$TkDJ-AgMvGmkkd8vndGOCM1y3ks;->f$0:Lcom/vpnapp/MainActivity;

    iput-object p2, p0, Lcom/vpnapp/-$$Lambda$MainActivity$TkDJ-AgMvGmkkd8vndGOCM1y3ks;->f$1:Lcom/vpnapp/VpnServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$MainActivity$TkDJ-AgMvGmkkd8vndGOCM1y3ks;->f$0:Lcom/vpnapp/MainActivity;

    iget-object v1, p0, Lcom/vpnapp/-$$Lambda$MainActivity$TkDJ-AgMvGmkkd8vndGOCM1y3ks;->f$1:Lcom/vpnapp/VpnServer;

    invoke-static {v0, v1}, Lcom/vpnapp/MainActivity;->lambda$25(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;)V

    return-void
.end method
