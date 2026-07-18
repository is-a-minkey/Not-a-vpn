.class final synthetic Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$MZgo633zP2sXnQa8FsMntUtS_ew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/SplitTunnelActivity;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/SplitTunnelActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$MZgo633zP2sXnQa8FsMntUtS_ew;->f$0:Lcom/vpnapp/SplitTunnelActivity;

    iput-object p2, p0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$MZgo633zP2sXnQa8FsMntUtS_ew;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$MZgo633zP2sXnQa8FsMntUtS_ew;->f$0:Lcom/vpnapp/SplitTunnelActivity;

    iget-object v1, p0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$MZgo633zP2sXnQa8FsMntUtS_ew;->f$1:Ljava/util/List;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/vpnapp/SplitTunnelActivity;->lambda$4(Lcom/vpnapp/SplitTunnelActivity;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
