.class Lcom/vpnapp/SplitTunnelActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "SplitTunnelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpnapp/SplitTunnelActivity;->filterApps(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/vpnapp/SplitTunnelActivity$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpnapp/SplitTunnelActivity;

.field private final synthetic val$filtered:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vpnapp/SplitTunnelActivity;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/vpnapp/SplitTunnelActivity$2;->this$0:Lcom/vpnapp/SplitTunnelActivity;

    iput-object p5, p0, Lcom/vpnapp/SplitTunnelActivity$2;->val$filtered:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    .line 113
    iget-object p3, p0, Lcom/vpnapp/SplitTunnelActivity$2;->val$filtered:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->label:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const p3, -0xe0a07

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 116
    const p3, -0xf5f1e6

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setBackgroundColor(I)V

    .line 117
    const/16 p3, 0x1c

    const/16 v0, 0x12

    invoke-virtual {p2, p3, v0, p3, v0}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 118
    iget-object p3, p0, Lcom/vpnapp/SplitTunnelActivity$2;->this$0:Lcom/vpnapp/SplitTunnelActivity;

    invoke-static {p3}, Lcom/vpnapp/SplitTunnelActivity;->access$1(Lcom/vpnapp/SplitTunnelActivity;)Ljava/util/Set;

    move-result-object p3

    iget-object p1, p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->pkg:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 119
    return-object p2
.end method
