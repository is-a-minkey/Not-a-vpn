.class Lcom/vpnapp/MainActivity$2;
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

    .line 68
    iput-object p1, p0, Lcom/vpnapp/MainActivity$2;->this$0:Lcom/vpnapp/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 70
    const-string p1, "substatus"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/vpnapp/MainActivity$2;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {p2}, Lcom/vpnapp/MainActivity;->access$1(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void
.end method
