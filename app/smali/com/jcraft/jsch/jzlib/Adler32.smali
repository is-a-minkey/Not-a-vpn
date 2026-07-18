.class final Lcom/jcraft/jsch/jzlib/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Lcom/jcraft/jsch/jzlib/Checksum;


# static fields
.field private static final BASE:I = 0xfff1

.field private static final NMAX:I = 0x15b0


# instance fields
.field private s1:J

.field private s2:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    .line 33
    return-void
.end method

.method static combine(JJJ)J
    .locals 18

    .line 104
    nop

    .line 109
    const-wide/32 v4, 0xfff1

    rem-long v6, p4, v4

    .line 110
    const-wide/32 v8, 0xffff

    and-long v10, p0, v8

    .line 111
    mul-long v12, v6, v10

    .line 112
    rem-long/2addr v12, v4

    .line 113
    and-long v14, p2, v8

    add-long/2addr v14, v4

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    add-long/2addr v10, v14

    .line 114
    const/16 v14, 0x10

    shr-long v0, p0, v14

    and-long/2addr v0, v8

    shr-long v2, p2, v14

    and-long/2addr v2, v8

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    sub-long/2addr v0, v6

    add-long/2addr v0, v12

    .line 115
    cmp-long v2, v10, v4

    if-ltz v2, :cond_0

    .line 116
    sub-long/2addr v10, v4

    .line 117
    :cond_0
    cmp-long v2, v10, v4

    if-ltz v2, :cond_1

    .line 118
    sub-long/2addr v10, v4

    .line 119
    :cond_1
    const-wide/32 v2, 0x1ffe2

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    .line 120
    sub-long/2addr v0, v2

    .line 121
    :cond_2
    cmp-long v2, v0, v4

    if-ltz v2, :cond_3

    .line 122
    sub-long/2addr v0, v4

    .line 123
    :cond_3
    shl-long/2addr v0, v14

    or-long/2addr v0, v10

    return-wide v0
.end method


# virtual methods
.method public copy()Lcom/jcraft/jsch/jzlib/Adler32;
    .locals 3

    .line 96
    new-instance v0, Lcom/jcraft/jsch/jzlib/Adler32;

    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/Adler32;-><init>()V

    .line 97
    iget-wide v1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 98
    iget-wide v1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    .line 99
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/jcraft/jsch/jzlib/Checksum;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Adler32;->copy()Lcom/jcraft/jsch/jzlib/Adler32;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 4

    .line 57
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 51
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    .line 53
    return-void
.end method

.method public reset(J)V
    .locals 4

    .line 45
    const-wide/32 v0, 0xffff

    and-long v2, p1, v0

    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 46
    const/16 v2, 0x10

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    .line 47
    return-void
.end method

.method public update([BII)V
    .locals 10

    .line 63
    const-wide/32 v0, 0xfff1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 64
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 65
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    .line 66
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    rem-long/2addr p1, v0

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 67
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    rem-long/2addr p1, v0

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    .line 68
    return-void

    .line 71
    :cond_0
    const/16 v2, 0x15b0

    div-int v3, p3, v2

    .line 72
    rem-int/2addr p3, v2

    .line 73
    nop

    .line 73
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-gtz v3, :cond_2

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 86
    :goto_1
    add-int/lit8 v2, p3, -0x1

    if-gtz p3, :cond_1

    .line 90
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    rem-long/2addr p1, v0

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 91
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    rem-long/2addr p1, v0

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    .line 92
    return-void

    .line 87
    :cond_1
    iget-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    add-int/lit8 p3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 88
    iget-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    move p2, p3

    move p3, v2

    goto :goto_1

    .line 74
    :cond_2
    nop

    .line 75
    nop

    .line 76
    move v3, v2

    .line 76
    :goto_2
    add-int/lit8 v5, v3, -0x1

    if-gtz v3, :cond_3

    .line 80
    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    rem-long/2addr v5, v0

    iput-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 81
    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    rem-long/2addr v5, v0

    iput-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    move v3, v4

    goto :goto_0

    .line 77
    :cond_3
    iget-wide v6, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v8, p2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    .line 78
    iget-wide v6, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    iget-wide v8, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s1:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/jcraft/jsch/jzlib/Adler32;->s2:J

    move p2, v3

    move v3, v5

    goto :goto_2
.end method
