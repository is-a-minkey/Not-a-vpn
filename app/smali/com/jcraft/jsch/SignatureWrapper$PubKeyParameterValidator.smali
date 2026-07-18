.class interface abstract Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;
.super Ljava/lang/Object;
.source "SignatureWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/SignatureWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PubKeyParameterValidator"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public varargs abstract validatePublicKeyParameter([[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
