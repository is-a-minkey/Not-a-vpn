.class Lcom/jcraft/jsch/jce/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bzero([B)V
    .locals 3

    .line 31
    if-nez p0, :cond_0

    .line 32
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 35
    return-void

    .line 34
    :cond_1
    aput-byte v0, p0, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
