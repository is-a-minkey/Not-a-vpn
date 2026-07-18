.class Lcom/jcraft/jsch/DHGEX512;
.super Lcom/jcraft/jsch/DHGEX;
.source "DHGEX512.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jcraft/jsch/DHGEX;-><init>()V

    .line 31
    const-string v0, "sha-512"

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX512;->hash:Ljava/lang/String;

    .line 32
    return-void
.end method
