.class Lcom/jcraft/jsch/jzlib/Inflate$Return;
.super Ljava/lang/Exception;
.source "Inflate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/jzlib/Inflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Return"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field r:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 712
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 713
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    .line 714
    return-void
.end method
