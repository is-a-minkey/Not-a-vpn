.class final Lcom/jcraft/jsch/jzlib/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Lcom/jcraft/jsch/jzlib/Checksum;


# static fields
.field private static final GF2_DIM:I = 0x20

.field private static crc_table:[I


# instance fields
.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/jzlib/CRC32;->crc_table:[I

    .line 42
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/jcraft/jsch/jzlib/CRC32;->crc_table:[I

    .line 43
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 79
    return-void

    .line 44
    :cond_0
    nop

    .line 45
    const/16 v2, 0x8

    move v3, v2

    move v2, v1

    .line 45
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    .line 51
    sget-object v3, Lcom/jcraft/jsch/jzlib/CRC32;->crc_table:[I

    aput v2, v3, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_2

    .line 47
    ushr-int/lit8 v2, v2, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v2, v4

    goto :goto_1

    .line 49
    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    .line 33
    return-void
.end method

.method static combine(JJJ)J
    .locals 15

    .line 83
    const/16 v0, 0x20

    new-array v1, v0, [J

    .line 84
    new-array v2, v0, [J

    .line 87
    const-wide/16 v3, 0x0

    cmp-long v7, p4, v3

    if-gtz v7, :cond_0

    .line 88
    move-wide v0, p0

    return-wide v0

    .line 91
    :cond_0
    const-wide v7, 0xedb88320L

    const/4 v9, 0x0

    aput-wide v7, v2, v9

    .line 92
    nop

    .line 93
    const/4 v7, 0x1

    const-wide/16 v8, 0x1

    move v12, v7

    move-wide v10, v8

    :goto_0
    if-lt v12, v0, :cond_5

    .line 99
    invoke-static {v1, v2}, Lcom/jcraft/jsch/jzlib/CRC32;->gf2_matrix_square([J[J)V

    .line 102
    invoke-static {v2, v1}, Lcom/jcraft/jsch/jzlib/CRC32;->gf2_matrix_square([J[J)V

    move-wide/from16 v5, p4

    move-wide v10, p0

    .line 108
    :cond_1
    invoke-static {v1, v2}, Lcom/jcraft/jsch/jzlib/CRC32;->gf2_matrix_square([J[J)V

    .line 109
    and-long v12, v5, v8

    cmp-long v0, v12, v3

    if-eqz v0, :cond_2

    .line 110
    invoke-static {v1, v10, v11}, Lcom/jcraft/jsch/jzlib/CRC32;->gf2_matrix_times([JJ)J

    move-result-wide v10

    .line 111
    :cond_2
    shr-long/2addr v5, v7

    .line 114
    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    .line 115
    goto :goto_1

    .line 118
    :cond_3
    invoke-static {v2, v1}, Lcom/jcraft/jsch/jzlib/CRC32;->gf2_matrix_square([J[J)V

    .line 119
    and-long v12, v5, v8

    cmp-long v0, v12, v3

    if-eqz v0, :cond_4

    .line 120
    invoke-static {v2, v10, v11}, Lcom/jcraft/jsch/jzlib/CRC32;->gf2_matrix_times([JJ)J

    move-result-wide v10

    .line 121
    :cond_4
    shr-long/2addr v5, v7

    .line 124
    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 127
    :goto_1
    xor-long v0, v10, p2

    .line 128
    return-wide v0

    .line 94
    :cond_5
    aput-wide v10, v2, v12

    .line 95
    shl-long/2addr v10, v7

    .line 93
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method static getCRC32Table()[I
    .locals 4

    .line 164
    sget-object v0, Lcom/jcraft/jsch/jzlib/CRC32;->crc_table:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 165
    sget-object v1, Lcom/jcraft/jsch/jzlib/CRC32;->crc_table:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return-object v0
.end method

.method static final gf2_matrix_square([J[J)V
    .locals 3

    .line 144
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 146
    return-void

    .line 145
    :cond_0
    aget-wide v1, p1, v0

    invoke-static {p1, v1, v2}, Lcom/jcraft/jsch/jzlib/CRC32;->gf2_matrix_times([JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static gf2_matrix_times([JJ)J
    .locals 7

    .line 132
    nop

    .line 133
    nop

    .line 134
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, p1

    move-wide p1, v0

    .line 134
    :goto_0
    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    .line 140
    return-wide p1

    .line 135
    :cond_0
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    cmp-long v5, v5, v0

    if-eqz v5, :cond_1

    .line 136
    aget-wide v5, p0, v2

    xor-long/2addr p1, v5

    .line 137
    :cond_1
    const/4 v5, 0x1

    shr-long/2addr v3, v5

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/jcraft/jsch/jzlib/CRC32;
    .locals 2

    .line 158
    new-instance v0, Lcom/jcraft/jsch/jzlib/CRC32;

    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    .line 159
    iget v1, p0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    iput v1, v0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    .line 160
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/jcraft/jsch/jzlib/Checksum;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/CRC32;->copy()Lcom/jcraft/jsch/jzlib/CRC32;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 4

    .line 75
    iget v0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    .line 66
    return-void
.end method

.method public reset(J)V
    .locals 2

    .line 70
    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    .line 71
    return-void
.end method

.method public update([BII)V
    .locals 3

    .line 57
    iget v0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    not-int v0, v0

    .line 58
    nop

    .line 58
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_0

    .line 60
    not-int p1, v0

    iput p1, p0, Lcom/jcraft/jsch/jzlib/CRC32;->v:I

    .line 61
    return-void

    .line 59
    :cond_0
    sget-object v1, Lcom/jcraft/jsch/jzlib/CRC32;->crc_table:[I

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    aget p2, v1, p2

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, p2

    move p2, v2

    goto :goto_0
.end method
