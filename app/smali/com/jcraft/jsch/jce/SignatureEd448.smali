.class public Lcom/jcraft/jsch/jce/SignatureEd448;
.super Lcom/jcraft/jsch/jce/SignatureEdDSA;
.source "SignatureEd448.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/SignatureEdDSA;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SignatureEd448 requires Java15+."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/SignatureEdDSA;->init()V

    return-void
.end method

.method public bridge synthetic setPrvKey([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureEdDSA;->setPrvKey([B)V

    return-void
.end method

.method public bridge synthetic setPubKey([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureEdDSA;->setPubKey([B)V

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
    invoke-super {p0}, Lcom/jcraft/jsch/jce/SignatureEdDSA;->sign()[B

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
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureEdDSA;->update([B)V

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
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/SignatureEdDSA;->verify([B)Z

    move-result p1

    return p1
.end method
