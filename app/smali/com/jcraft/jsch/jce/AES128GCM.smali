.class public Lcom/jcraft/jsch/jce/AES128GCM;
.super Lcom/jcraft/jsch/jce/AESGCM;
.source "AES128GCM.java"


# static fields
.field private static final bsize:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/AESGCM;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/jcraft/jsch/jce/AESGCM;->doFinal([BII[BI)V

    return-void
.end method

.method public getBlockSize()I
    .locals 1

    .line 35
    const/16 v0, 0x10

    return v0
.end method

.method public bridge synthetic getIVSize()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/AESGCM;->getIVSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTagSize()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/AESGCM;->getTagSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic init(I[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/AESGCM;->init(I[B[B)V

    return-void
.end method

.method public bridge synthetic isAEAD()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/AESGCM;->isAEAD()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isCBC()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/AESGCM;->isCBC()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/jcraft/jsch/jce/AESGCM;->update([BII[BI)V

    return-void
.end method

.method public bridge synthetic updateAAD([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jce/AESGCM;->updateAAD([BII)V

    return-void
.end method
