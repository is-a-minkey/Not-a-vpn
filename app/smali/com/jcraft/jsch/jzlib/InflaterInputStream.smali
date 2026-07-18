.class final Lcom/jcraft/jsch/jzlib/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# static fields
.field protected static final DEFAULT_BUFSIZE:I = 0x200


# instance fields
.field private b:[B

.field protected buf:[B

.field private byte1:[B

.field private close_in:Z

.field private closed:Z

.field protected eof:Z

.field protected final inflater:Lcom/jcraft/jsch/jzlib/Inflater;

.field protected myinflater:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 49
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;I)V

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;IZ)V

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    .line 41
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->eof:Z

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->close_in:Z

    .line 77
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->myinflater:Z

    .line 79
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->byte1:[B

    .line 141
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    .line 67
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    if-gtz p3, :cond_1

    .line 70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer size must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 73
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->buf:[B

    .line 74
    iput-boolean p4, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->close_in:Z

    .line 75
    return-void

    .line 68
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-direct {v0, p2}, Lcom/jcraft/jsch/jzlib/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;)V

    .line 53
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->myinflater:Z

    .line 54
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->eof:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 135
    return v2

    .line 137
    :cond_1
    move v2, v1

    return v2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    if-nez v0, :cond_2

    .line 173
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->myinflater:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflater;->end()I

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->close_in:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 177
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    .line 179
    :cond_2
    return-void
.end method

.method protected fill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->buf:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 186
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 187
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Inflater;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->buf:[B

    aput-byte v3, v0, v3

    .line 189
    nop

    .line 190
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Inflater;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    iget-wide v0, v0, Lcom/jcraft/jsch/jzlib/Inflate;->was:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 191
    new-instance v0, Ljava/io/IOException;

    const-string v1, "footer is not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->buf:[B

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/jcraft/jsch/jzlib/Inflater;->setInput([BIIZ)V

    .line 197
    return-void
.end method

.method getAvailIn()[B
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflater;->avail_in:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 222
    return-object v1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflater;->avail_in:I

    new-array v1, v0, [B

    .line 224
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Inflater;->next_in:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/Inflater;->next_in_index:I

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/Inflater;->avail_in:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    return-object v1
.end method

.method getInflater()Lcom/jcraft/jsch/jzlib/Inflater;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    return-object v0
.end method

.method getTotalIn()J
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflater;->getTotalIn()J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalOut()J
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflater;->getTotalOut()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 205
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->byte1:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->byte1:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 96
    :cond_1
    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    goto :goto_2

    .line 98
    :cond_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p3, :cond_3

    .line 99
    move v0, v1

    return v0

    .line 100
    :cond_3
    iget-boolean v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->eof:Z

    if-eqz v2, :cond_4

    .line 101
    return v0

    .line 104
    :cond_4
    nop

    .line 105
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Inflater;->setOutput([BII)V

    .line 106
    move p1, v1

    .line 106
    :cond_5
    iget-boolean p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->eof:Z

    if-eqz p3, :cond_6

    :goto_0
    move v0, p1

    return v0

    .line 107
    :cond_6
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget p3, p3, Lcom/jcraft/jsch/jzlib/Inflater;->avail_in:I

    if-nez p3, :cond_7

    .line 108
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->fill()V

    .line 109
    :cond_7
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {p3, v1}, Lcom/jcraft/jsch/jzlib/Inflater;->inflate(I)I

    move-result p3

    .line 110
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/Inflater;->next_out_index:I

    sub-int p2, v2, p2

    add-int/2addr p1, p2

    .line 111
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget p2, p2, Lcom/jcraft/jsch/jzlib/Inflater;->next_out_index:I

    .line 112
    sparse-switch p3, :sswitch_data_0

    goto :goto_1

    .line 117
    :sswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->eof:Z

    .line 118
    const/4 v2, 0x2

    if-ne p3, v2, :cond_8

    .line 119
    return v0

    .line 114
    :sswitch_1
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object p2, p2, Lcom/jcraft/jsch/jzlib/Inflater;->msg:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_8
    :goto_1
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget p3, p3, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    if-nez p3, :cond_5

    .line 124
    goto :goto_0

    .line 126
    return v0

    .line 97
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method readHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const-string v0, ""

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/jcraft/jsch/jzlib/Inflater;->setInput([BIIZ)V

    .line 232
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v1, v0, v2, v2}, Lcom/jcraft/jsch/jzlib/Inflater;->setOutput([BII)V

    .line 234
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/jzlib/Inflater;->inflate(I)I

    .line 235
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Inflater;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Inflate;->inParsingHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 242
    if-gtz v1, :cond_2

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/jzlib/Inflater;->setInput([B)V

    .line 245
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/jzlib/Inflater;->inflate(I)I

    move-result v1

    .line 246
    if-eqz v1, :cond_3

    .line 247
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/Inflater;->msg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/Inflater;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/Inflate;->inParsingHeader()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 146
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative skip length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 150
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    .line 154
    nop

    .line 155
    const/4 p2, 0x0

    move v0, p2

    .line 155
    :goto_0
    if-lt v0, p1, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    sub-int v1, p1, v0

    .line 157
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 158
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    array-length v1, v1

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    invoke-virtual {p0, v2, p2, v1}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->read([BII)I

    move-result v1

    .line 161
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 162
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->eof:Z

    .line 163
    nop

    .line 167
    :goto_1
    int-to-long p1, v0

    return-wide p1

    .line 165
    :cond_4
    add-int/2addr v0, v1

    goto :goto_0
.end method
