.class Lcom/vpnapp/SplitTunnelActivity$AppInfo;
.super Ljava/lang/Object;
.source "SplitTunnelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/SplitTunnelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppInfo"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->pkg:Ljava/lang/String;

    return-void
.end method
