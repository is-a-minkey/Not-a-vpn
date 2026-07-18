.class public Lcom/jcraft/jsch/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field private static final buffer_margin:I = 0x80


# instance fields
.field buffer:[B

.field index:I

.field s:I

.field final tmp:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/16 v0, 0x5000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    .line 44
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 45
    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 46
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    .line 50
    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 51
    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 52
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 53
    return-void
.end method

.method static fromBytes([[B)Lcom/jcraft/jsch/Buffer;
    .locals 4

    .line 290
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 291
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 294
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 295
    :goto_1
    array-length v0, p0

    if-lt v1, v0, :cond_0

    .line 298
    return-object v3

    .line 296
    :cond_0
    aget-object v0, p0, v1

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    :cond_1
    aget-object v3, p0, v2

    array-length v3, v3

    add-int/2addr v0, v3

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkFreeSize(I)V
    .locals 3

    .line 259
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x80

    .line 260
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 262
    if-ge v0, p1, :cond_0

    .line 263
    move v0, p1

    .line 264
    :cond_0
    new-array p1, v0, [B

    .line 265
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 268
    :cond_1
    return-void
.end method

.method public getByte()I
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getByte(I)I
    .locals 2

    .line 182
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 183
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 184
    return v0
.end method

.method public getByte([B)V
    .locals 2

    .line 173
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 174
    return-void
.end method

.method getByte([BII)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 179
    return-void
.end method

.method getBytes(ILjava/lang/String;)[[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 271
    new-array v0, p1, [[B

    .line 272
    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    .line 280
    return-object v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    .line 274
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 275
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_1
    new-array v2, v2, [B

    aput-object v2, v0, v1

    .line 278
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getCommand()B
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0
.end method

.method public getInt()I
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    move-result v0

    .line 147
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 148
    return v0
.end method

.method public getLength()I
    .locals 2

    .line 128
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLong()J
    .locals 6

    .line 140
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 141
    const/16 v4, 0x20

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 142
    return-wide v0
.end method

.method public getMPInt()[B
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 189
    const/16 v1, 0x2000

    if-ltz v0, :cond_0

    .line 190
    if-le v0, v1, :cond_1

    .line 192
    :cond_0
    move v0, v1

    .line 194
    :cond_1
    new-array v1, v0, [B

    .line 195
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 196
    return-object v1
.end method

.method public getMPIntBits()[B
    .locals 5

    .line 200
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 201
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 202
    new-array v1, v0, [B

    .line 203
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 204
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 205
    array-length v0, v1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 206
    aput-byte v2, v0, v2

    .line 207
    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    move-object v1, v0

    .line 210
    :cond_0
    return-object v1
.end method

.method public getOffSet()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return v0
.end method

.method getShort()I
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    .line 164
    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 165
    return v0
.end method

.method public getString()[B
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 215
    const/high16 v1, 0x40000

    if-ltz v0, :cond_0

    .line 216
    if-le v0, v1, :cond_1

    .line 218
    :cond_0
    move v0, v1

    .line 220
    :cond_1
    new-array v1, v0, [B

    .line 221
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 222
    return-object v1
.end method

.method getString([I[I)[B
    .locals 3

    .line 226
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->getByte(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 228
    aput v0, p2, v2

    .line 229
    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object p1
.end method

.method public getUInt()J
    .locals 7

    .line 152
    nop

    .line 153
    nop

    .line 154
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    int-to-long v0, v0

    .line 155
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const-wide/32 v3, 0xff00

    and-long/2addr v0, v3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v0, v5

    .line 156
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v5

    int-to-long v5, v5

    .line 157
    shl-long/2addr v5, v2

    and-long v2, v5, v3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 158
    const/16 v4, 0x10

    shl-long/2addr v0, v4

    const-wide/32 v4, -0x10000

    and-long/2addr v0, v4

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 159
    return-wide v0
.end method

.method public putByte(B)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    aput-byte p1, v0, v1

    .line 61
    return-void
.end method

.method public putByte([B)V
    .locals 2

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 65
    return-void
.end method

.method public putByte([BII)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 70
    return-void
.end method

.method public putInt(I)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 83
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 84
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 85
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 86
    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x4

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 88
    return-void
.end method

.method public putLong(J)V
    .locals 10

    .line 91
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x38

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 92
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x30

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 93
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x28

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 94
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x20

    ushr-long v5, p1, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    .line 95
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v6, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v7, 0x4

    invoke-static {v0, v2, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x18

    ushr-long v8, p1, v1

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 97
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x10

    ushr-long v8, p1, v1

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 98
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x8

    ushr-long v8, p1, v1

    long-to-int v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 99
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    .line 100
    iget-object p1, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    iget-object p2, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v0, v7

    invoke-static {p1, v2, p2, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 102
    return-void
.end method

.method public putMPInt([B)V
    .locals 3

    .line 116
    array-length v0, p1

    .line 117
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 124
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 125
    return-void
.end method

.method putPad(I)V
    .locals 3

    .line 109
    nop

    .line 109
    :goto_0
    if-gtz p1, :cond_0

    .line 113
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 111
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public putString([B)V
    .locals 2

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 74
    return-void
.end method

.method public putString([BII)V
    .locals 0

    .line 77
    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 79
    return-void
.end method

.method readSkip(I)V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 311
    iget p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 312
    return-void

    .line 314
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 315
    return-void
.end method

.method public reset()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 234
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 235
    return-void
.end method

.method rewind()V
    .locals 1

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 247
    return-void
.end method

.method public setOffSet(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 137
    return-void
.end method

.method public shift()V
    .locals 5

    .line 238
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    if-nez v0, :cond_0

    .line 239
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    iget-object v2, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v4, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 242
    iput v4, p0, Lcom/jcraft/jsch/Buffer;->s:I

    .line 243
    return-void
.end method

.method skip(I)V
    .locals 1

    .line 105
    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 106
    return-void
.end method
