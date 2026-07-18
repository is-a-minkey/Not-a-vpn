.class Lcom/jcraft/jsch/jzlib/Deflate$Config;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/jzlib/Deflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field func:I

.field good_length:I

.field max_chain:I

.field max_lazy:I

.field nice_length:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->good_length:I

    .line 51
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->max_lazy:I

    .line 52
    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->nice_length:I

    .line 53
    iput p4, p0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->max_chain:I

    .line 54
    iput p5, p0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->func:I

    .line 55
    return-void
.end method
