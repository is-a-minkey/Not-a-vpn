.class public Lcom/jcraft/jsch/jce/HMACSHA196;
.super Lcom/jcraft/jsch/jce/HMACSHA1;
.source "HMACSHA196.java"


# instance fields
.field private final _buf20:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACSHA1;-><init>()V

    .line 40
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->_buf20:[B

    .line 32
    const-string v0, "hmac-sha1-96"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->name:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->_buf20:[B

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/jcraft/jsch/jce/HMACSHA1;->doFinal([BI)V

    .line 45
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACSHA196;->_buf20:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-void
.end method

.method public getBlockSize()I
    .locals 1

    .line 37
    const/16 v0, 0xc

    return v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMACSHA1;->getName()Ljava/lang/String;

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
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMACSHA1;->init([B)V

    return-void
.end method

.method public bridge synthetic isEtM()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMACSHA1;->isEtM()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMACSHA1;->update(I)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/HMACSHA1;->update([BII)V

    return-void
.end method
