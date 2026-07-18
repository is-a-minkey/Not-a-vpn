.class Lcom/vpnapp/SplitTunnelActivity$1;
.super Ljava/lang/Object;
.source "SplitTunnelActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpnapp/SplitTunnelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpnapp/SplitTunnelActivity;


# direct methods
.method constructor <init>(Lcom/vpnapp/SplitTunnelActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/vpnapp/SplitTunnelActivity$1;->this$0:Lcom/vpnapp/SplitTunnelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 81
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 79
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcom/vpnapp/SplitTunnelActivity$1;->this$0:Lcom/vpnapp/SplitTunnelActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/vpnapp/SplitTunnelActivity;->access$0(Lcom/vpnapp/SplitTunnelActivity;Ljava/lang/String;)V

    return-void
.end method
