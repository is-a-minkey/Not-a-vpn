.class Lcom/jcraft/jsch/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field static final VERSION:Ljava/lang/String; = "0.2.20-vpnapp"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVersion()Ljava/lang/String;
    .locals 1

    .line 4
    const-string v0, "0.2.20-vpnapp"

    return-object v0
.end method
