.class public interface abstract Lcom/jcraft/jsch/IdentityRepository;
.super Ljava/lang/Object;
.source "IdentityRepository.java"


# static fields
.field public static final NOTRUNNING:I = 0x1

.field public static final RUNNING:I = 0x2

.field public static final UNAVAILABLE:I


# virtual methods
.method public abstract add([B)Z
.end method

.method public abstract getIdentities()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract remove([B)Z
.end method

.method public abstract removeAll()V
.end method
