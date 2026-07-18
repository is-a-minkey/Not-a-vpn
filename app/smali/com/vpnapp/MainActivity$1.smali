.class Lcom/vpnapp/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpnapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/vpnapp/MainActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/vpnapp/MainActivity$1;->this$0:Lcom/vpnapp/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 62
    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object v0, p0, Lcom/vpnapp/MainActivity$1;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/vpnapp/MainActivity;->access$0(Lcom/vpnapp/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
