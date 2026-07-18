.class public interface abstract Lcom/jcraft/jsch/Identity;
.super Ljava/lang/Object;
.source "Identity.java"


# virtual methods
.method public abstract clear()V
.end method

.method public decrypt()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getAlgName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPublicKeyBlob()[B
.end method

.method public abstract getSignature([B)[B
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 0

    .line 82
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/Identity;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract setPassphrase([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation
.end method
