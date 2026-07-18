.class Lcom/jcraft/jsch/jzlib/ZStream;
.super Ljava/lang/Object;
.source "ZStream.java"


# static fields
.field private static final DEF_WBITS:I = 0xf

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6


# instance fields
.field adler:Lcom/jcraft/jsch/jzlib/Checksum;

.field avail_in:I

.field avail_out:I

.field data_type:I

.field dstate:Lcom/jcraft/jsch/jzlib/Deflate;

.field istate:Lcom/jcraft/jsch/jzlib/Inflate;

.field msg:Ljava/lang/String;

.field next_in:[B

.field next_in_index:I

.field next_out:[B

.field next_out_index:I

.field total_in:J

.field total_out:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/jcraft/jsch/jzlib/Adler32;

    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/Adler32;-><init>()V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>(Lcom/jcraft/jsch/jzlib/Checksum;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/jzlib/Checksum;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 81
    return-void
.end method


# virtual methods
.method deflate(I)I
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 192
    return v1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->deflate(I)I

    move-result v1

    return v1
.end method

.method deflateEnd()I
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 199
    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateEnd()I

    move-result v1

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 202
    return v1
.end method

.method deflateInit(I)I
    .locals 1

    .line 154
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/ZStream;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method deflateInit(II)I
    .locals 1

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/jzlib/ZStream;->deflateInit(IIZ)I

    move-result p1

    return p1
.end method

.method deflateInit(III)I
    .locals 1

    .line 181
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Deflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 182
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateInit(III)I

    move-result p1

    return p1
.end method

.method deflateInit(IIILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)I
    .locals 2

    .line 166
    const/4 v0, -0x2

    const/16 v1, 0x9

    if-lt p2, v1, :cond_4

    const/16 v1, 0xf

    if-le p2, v1, :cond_0

    return v0

    .line 169
    :cond_0
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->W_NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p4, v1, :cond_1

    .line 170
    mul-int/lit8 p2, p2, -0x1

    .line 171
    goto :goto_0

    :cond_1
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p4, v1, :cond_2

    .line 172
    add-int/lit8 p2, p2, 0x10

    .line 173
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->W_ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p4, v1, :cond_3

    .line 174
    return v0

    .line 175
    :cond_3
    sget-object p4, Lcom/jcraft/jsch/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 177
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/ZStream;->deflateInit(III)I

    move-result v0

    return v0

    .line 167
    :cond_4
    return v0
.end method

.method deflateInit(IIZ)I
    .locals 1

    .line 186
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Deflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 187
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    if-eqz p3, :cond_0

    neg-int p2, p2

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method deflateInit(IZ)I
    .locals 1

    .line 158
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/jzlib/ZStream;->deflateInit(IIZ)I

    move-result p1

    return p1
.end method

.method deflateParams(II)I
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 207
    return v1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateParams(II)I

    move-result v1

    return v1
.end method

.method deflateSetDictionary([BI)I
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 213
    return v1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateSetDictionary([BI)I

    move-result v1

    return v1
.end method

.method end()I
    .locals 1

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method finished()Z
    .locals 1

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method flush_pending()V
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    .line 224
    iget v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-le v0, v1, :cond_0

    .line 225
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 226
    :cond_0
    if-nez v0, :cond_1

    .line 227
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/Deflate;->pending_out:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    if-le v1, v2, :cond_2

    .line 230
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    .line 231
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/Deflate;->pending_out:I

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    iget v4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    .line 240
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget v2, v1, Lcom/jcraft/jsch/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/jcraft/jsch/jzlib/Deflate;->pending_out:I

    .line 241
    iget-wide v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    .line 242
    iget v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 243
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget v2, v1, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    .line 244
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    if-nez v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_out:I

    .line 247
    :cond_3
    return-void
.end method

.method free()V
    .locals 1

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    .line 279
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    .line 280
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 281
    return-void
.end method

.method getAdler()J
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getAvailIn()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    return v0
.end method

.method getAvailOut()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    return v0
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    return-object v0
.end method

.method getNextIn()[B
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    return-object v0
.end method

.method getNextInIndex()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    return v0
.end method

.method getNextOut()[B
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    return-object v0
.end method

.method getNextOutIndex()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    return v0
.end method

.method getTotalIn()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    return-wide v0
.end method

.method getTotalOut()J
    .locals 2

    .line 368
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    return-wide v0
.end method

.method inflate(I)I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 119
    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jzlib/Inflate;->inflate(I)I

    move-result v1

    return v1
.end method

.method inflateEnd()I
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateEnd()I

    move-result v1

    .line 128
    return v1
.end method

.method inflateFinished()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method inflateInit()I
    .locals 1

    .line 84
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/ZStream;->inflateInit(I)I

    move-result v0

    return v0
.end method

.method inflateInit(I)I
    .locals 1

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method inflateInit(ILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)I
    .locals 3

    .line 100
    nop

    .line 101
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->W_NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 102
    nop

    .line 103
    move v2, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p2, v0, :cond_1

    .line 104
    add-int/lit8 p1, p1, 0x10

    .line 105
    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->W_ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p2, v0, :cond_2

    .line 106
    const/high16 p2, 0x40000000    # 2.0f

    or-int/2addr p1, p2

    .line 107
    goto :goto_0

    :cond_2
    sget-object p2, Lcom/jcraft/jsch/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 109
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/jcraft/jsch/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method inflateInit(IZ)I
    .locals 1

    .line 113
    new-instance v0, Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Inflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    .line 114
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    if-eqz p2, :cond_0

    neg-int p1, p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateInit(I)I

    move-result p1

    return p1
.end method

.method inflateInit(Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;)I
    .locals 1

    .line 96
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/jzlib/ZStream;->inflateInit(ILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)I

    move-result p1

    return p1
.end method

.method inflateInit(Z)I
    .locals 1

    .line 88
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method inflateSetDictionary([BI)I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 145
    return v1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateSetDictionary([BI)I

    move-result v1

    return v1
.end method

.method inflateSync()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 133
    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateSync()I

    move-result v1

    return v1
.end method

.method inflateSyncPoint()I
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 139
    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateSyncPoint()I

    move-result v1

    return v1
.end method

.method read_buf([BII)I
    .locals 3

    .line 255
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 257
    if-le v0, p3, :cond_0

    .line 258
    move v0, p3

    .line 259
    :cond_0
    const/4 p3, 0x0

    if-nez v0, :cond_1

    .line 260
    return p3

    .line 262
    :cond_1
    iget p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 264
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iget p3, p3, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    if-eqz p3, :cond_2

    .line 265
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    invoke-interface {p3, v1, v2, v0}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 267
    :cond_2
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 269
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    int-to-long v1, v0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 270
    move p3, v0

    return p3
.end method

.method setAvailIn(I)V
    .locals 0

    .line 340
    iput p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 341
    return-void
.end method

.method setAvailOut(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 365
    return-void
.end method

.method setInput([B)V
    .locals 2

    .line 294
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/jcraft/jsch/jzlib/ZStream;->setInput([BIIZ)V

    .line 295
    return-void
.end method

.method setInput([BIIZ)V
    .locals 4

    .line 302
    if-gtz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    if-eqz v0, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-lez v0, :cond_1

    if-eqz p4, :cond_1

    .line 306
    iget p4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    add-int/2addr p4, p3

    new-array p4, p4, [B

    .line 307
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    iput-object p4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    .line 310
    iput v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 311
    iget p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 312
    return-void

    .line 313
    :cond_1
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    .line 314
    iput p2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 315
    iput p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 317
    return-void
.end method

.method setInput([BZ)V
    .locals 2

    .line 298
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/jcraft/jsch/jzlib/ZStream;->setInput([BIIZ)V

    .line 299
    return-void
.end method

.method setNextIn([B)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    .line 325
    return-void
.end method

.method setNextInIndex(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 333
    return-void
.end method

.method setNextOut([B)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    .line 349
    return-void
.end method

.method setNextOutIndex(I)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    .line 357
    return-void
.end method

.method setOutput([B)V
    .locals 2

    .line 284
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/jzlib/ZStream;->setOutput([BII)V

    .line 285
    return-void
.end method

.method setOutput([BII)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    .line 289
    iput p2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    .line 290
    iput p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 291
    return-void
.end method
