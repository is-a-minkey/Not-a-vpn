.class public Lcom/jcraft/jsch/jce/MLKEM768;
.super Lcom/jcraft/jsch/jce/MLKEM;
.source "MLKEM768.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jsch/jce/MLKEM;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MLKEM768 requires Java24+."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic decapsulate([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/jce/MLKEM;->decapsulate([B)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPublicKey()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/jce/MLKEM;->getPublicKey()[B

    move-result-object v0

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
    invoke-super {p0}, Lcom/jcraft/jsch/jce/MLKEM;->init()V

    return-void
.end method
