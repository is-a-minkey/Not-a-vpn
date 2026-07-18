.class Lcom/vpnapp/MainActivity$7;
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

    .line 724
    iput-object p1, p0, Lcom/vpnapp/MainActivity$7;->this$0:Lcom/vpnapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 726
    const-string v0, "CONNECTED"

    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 727
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vpnapp/VpnTunnelService;->connectedSince:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 728
    iget-object v4, p0, Lcom/vpnapp/MainActivity$7;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v4}, Lcom/vpnapp/MainActivity;->access$23(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-wide/16 v7, 0xe10

    div-long v9, v0, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    rem-long v7, v0, v7

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    rem-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/vpnapp/MainActivity$7;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 730
    return-void
.end method
