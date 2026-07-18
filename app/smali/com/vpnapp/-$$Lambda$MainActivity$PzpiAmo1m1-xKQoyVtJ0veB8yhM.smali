.class final synthetic Lcom/vpnapp/-$$Lambda$MainActivity$PzpiAmo1m1-xKQoyVtJ0veB8yhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/MainActivity;

.field private final synthetic f$1:Lcom/vpnapp/VpnServer;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$MainActivity$PzpiAmo1m1-xKQoyVtJ0veB8yhM;->f$0:Lcom/vpnapp/MainActivity;

    iput-object p2, p0, Lcom/vpnapp/-$$Lambda$MainActivity$PzpiAmo1m1-xKQoyVtJ0veB8yhM;->f$1:Lcom/vpnapp/VpnServer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$MainActivity$PzpiAmo1m1-xKQoyVtJ0veB8yhM;->f$0:Lcom/vpnapp/MainActivity;

    iget-object v1, p0, Lcom/vpnapp/-$$Lambda$MainActivity$PzpiAmo1m1-xKQoyVtJ0veB8yhM;->f$1:Lcom/vpnapp/VpnServer;

    invoke-static {v0, v1, p1, p2}, Lcom/vpnapp/MainActivity;->lambda$24(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;Landroid/content/DialogInterface;I)V

    return-void
.end method
