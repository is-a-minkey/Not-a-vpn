.class public interface abstract Lcom/jcraft/jsch/KDF;
.super Ljava/lang/Object;
.source "KDF.java"


# virtual methods
.method public abstract getKey([BI)[B
.end method

.method public initWithASN1([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "initWithASN1() not supported"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initWithOpenSSHv1KDFOptions([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "initWithOpenSSHv1KDFOptions() not supported"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initWithPPKv3Header(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "initWithPPKv3Header() not supported"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
