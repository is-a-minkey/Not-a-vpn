.class public Lcom/jcraft/jsch/jce/HMACSHA196ETM;
.super Lcom/jcraft/jsch/jce/HMACSHA196;
.source "HMACSHA196ETM.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACSHA196;-><init>()V

    .line 32
    const-string v0, "hmac-sha1-96-etm@openssh.com"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196ETM;->name:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196ETM;->etm:Z

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMACSHA196;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMACSHA196;->init([B)V

    return-void
.end method

.method public bridge synthetic isEtM()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMACSHA196;->isEtM()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMACSHA196;->update(I)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/HMACSHA196;->update([BII)V

    return-void
.end method
