.class Lcom/jcraft/jsch/DHEC256;
.super Lcom/jcraft/jsch/DHECN;
.source "DHEC256.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jcraft/jsch/DHECN;-><init>()V

    .line 31
    const-string v0, "sha-256"

    iput-object v0, p0, Lcom/jcraft/jsch/DHEC256;->sha_name:Ljava/lang/String;

    .line 32
    const/16 v0, 0x100

    iput v0, p0, Lcom/jcraft/jsch/DHEC256;->key_size:I

    .line 33
    return-void
.end method
