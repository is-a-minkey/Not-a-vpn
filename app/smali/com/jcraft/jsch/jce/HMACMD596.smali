.class public Lcom/jcraft/jsch/jce/HMACMD596;
.super Lcom/jcraft/jsch/jce/HMACMD5;
.source "HMACMD596.java"


# instance fields
.field private final _buf16:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/HMACMD5;-><init>()V

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    .line 31
    const-string v0, "hmac-md5-96"

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->name:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/jcraft/jsch/jce/HMACMD5;->doFinal([BI)V

    .line 44
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD596;->_buf16:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-void
.end method

.method public getBlockSize()I
    .locals 1

    .line 36
    const/16 v0, 0xc

    return v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMACMD5;->getName()Ljava/lang/String;

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
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMACMD5;->init([B)V

    return-void
.end method

.method public bridge synthetic isEtM()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/HMACMD5;->isEtM()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/HMACMD5;->update(I)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/HMACMD5;->update([BII)V

    return-void
.end method
