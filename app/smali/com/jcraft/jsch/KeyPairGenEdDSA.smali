.class public interface abstract Lcom/jcraft/jsch/KeyPairGenEdDSA;
.super Ljava/lang/Object;
.source "KeyPairGenEdDSA.java"


# virtual methods
.method public abstract getPrv()[B
.end method

.method public abstract getPub()[B
.end method

.method public abstract init(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public init(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
