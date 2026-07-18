.class Lcom/jcraft/jsch/DHEC384;
.super Lcom/jcraft/jsch/DHECN;
.source "DHEC384.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jcraft/jsch/DHECN;-><init>()V

    .line 31
    const-string v0, "sha-384"

    iput-object v0, p0, Lcom/jcraft/jsch/DHEC384;->sha_name:Ljava/lang/String;

    .line 32
    const/16 v0, 0x180

    iput v0, p0, Lcom/jcraft/jsch/DHEC384;->key_size:I

    .line 33
    return-void
.end method
