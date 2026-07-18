.class public Lcom/jcraft/jsch/jce/SignatureRSASHA512;
.super Lcom/jcraft/jsch/jce/SignatureRSAN;
.source "SignatureRSASHA512.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/SignatureRSAN;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "rsa-sha2-512"

    return-object v0
.end method

.method public bridge synthetic init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/SignatureRSAN;->init()V

    return-void
.end method

.method public bridge synthetic setPrvKey([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/SignatureRSAN;->setPrvKey([B[B)V

    return-void
.end method

.method public bridge synthetic setPubKey([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jce/SignatureRSAN;->setPubKey([B[B)V

    return-void
.end method

.method public bridge synthetic sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/SignatureRSAN;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic update([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureRSAN;->update([B)V

    return-void
.end method

.method public bridge synthetic verify([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureRSAN;->verify([B)Z

    move-result p1

    return p1
.end method
