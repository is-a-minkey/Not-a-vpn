.class public Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;
.super Ljava/lang/Object;
.source "WireGuardUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/WireGuardUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReleaseInfo"
.end annotation


# instance fields
.field public final apkUrl:Ljava/lang/String;

.field public final tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->tagName:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->apkUrl:Ljava/lang/String;

    .line 98
    return-void
.end method
