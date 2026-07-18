.class public interface abstract Lcom/jcraft/jsch/Compression;
.super Ljava/lang/Object;
.source "Compression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Compression$InflaterException;
    }
.end annotation


# static fields
.field public static final DEFLATER:I = 0x1

.field public static final INFLATER:I


# virtual methods
.method public abstract compress([BI[I)[B
.end method

.method public end()V
    .locals 0

    .line 37
    return-void
.end method

.method public abstract init(II)V
.end method

.method public init(IILcom/jcraft/jsch/Session;)V
    .locals 0

    .line 34
    invoke-interface {p0, p1, p2}, Lcom/jcraft/jsch/Compression;->init(II)V

    .line 35
    return-void
.end method

.method public abstract uncompress([BI[I)[B
.end method
