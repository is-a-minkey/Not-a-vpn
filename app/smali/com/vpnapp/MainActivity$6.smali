.class Lcom/vpnapp/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpnapp/MainActivity;->startStats()V
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

    .line 698
    iput-object p1, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 700
    const-string v0, "CONNECTED"

    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 701
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 702
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 704
    iget-object v6, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v6}, Lcom/vpnapp/MainActivity;->access$8(Lcom/vpnapp/MainActivity;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 705
    iget-object v8, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v8}, Lcom/vpnapp/MainActivity;->access$9(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v9}, Lcom/vpnapp/MainActivity;->access$10(Lcom/vpnapp/MainActivity;)J

    move-result-wide v9

    sub-long v9, v0, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    div-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/vpnapp/MainActivity;->access$11(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v8, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v8}, Lcom/vpnapp/MainActivity;->access$12(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v9}, Lcom/vpnapp/MainActivity;->access$13(Lcom/vpnapp/MainActivity;)J

    move-result-wide v9

    sub-long v9, v2, v9

    mul-long/2addr v9, v11

    div-long v6, v9, v6

    invoke-static {v6, v7}, Lcom/vpnapp/MainActivity;->access$11(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v6, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v6}, Lcom/vpnapp/MainActivity;->access$14(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v7}, Lcom/vpnapp/MainActivity;->access$15(Lcom/vpnapp/MainActivity;)J

    move-result-wide v7

    sub-long v7, v0, v7

    invoke-static {v7, v8}, Lcom/vpnapp/MainActivity;->access$16(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v6, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v6}, Lcom/vpnapp/MainActivity;->access$17(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v7}, Lcom/vpnapp/MainActivity;->access$18(Lcom/vpnapp/MainActivity;)J

    move-result-wide v7

    sub-long v7, v2, v7

    invoke-static {v7, v8}, Lcom/vpnapp/MainActivity;->access$16(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v6, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v6, v0, v1}, Lcom/vpnapp/MainActivity;->access$19(Lcom/vpnapp/MainActivity;J)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0, v2, v3}, Lcom/vpnapp/MainActivity;->access$20(Lcom/vpnapp/MainActivity;J)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0, v4, v5}, Lcom/vpnapp/MainActivity;->access$21(Lcom/vpnapp/MainActivity;J)V

    .line 712
    sget-wide v0, Lcom/vpnapp/VpnTunnelService;->lastHandshakeSec:J

    .line 713
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v11

    sub-long v0, v2, v0

    .line 715
    iget-object v2, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v2}, Lcom/vpnapp/MainActivity;->access$22(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-wide/16 v3, 0x3c

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "s ago"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 716
    :cond_1
    const-wide/16 v5, 0xe10

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    div-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "m ago"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "> 1 hour"

    .line 715
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v2, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v2}, Lcom/vpnapp/MainActivity;->access$22(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-wide/16 v3, 0xb4

    cmp-long v0, v0, v3

    const v1, -0xcb2c67

    const v3, -0x78e8f

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/vpnapp/MainActivity$6;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    return-void
.end method
