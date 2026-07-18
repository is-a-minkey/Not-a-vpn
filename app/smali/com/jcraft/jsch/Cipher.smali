.class public interface abstract Lcom/jcraft/jsch/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# static fields
.field public static final DECRYPT_MODE:I = 0x1

.field public static final ENCRYPT_MODE:I


# virtual methods
.method public doFinal([BII[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public abstract getBlockSize()I
.end method

.method public abstract getIVSize()I
.end method

.method public getTagSize()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public abstract init(I[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isAEAD()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isCBC()Z
.end method

.method public isChaCha20()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public update(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public abstract update([BII[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public updateAAD([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    return-void
.end method
