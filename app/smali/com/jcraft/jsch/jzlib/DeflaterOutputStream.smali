.class final Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# static fields
.field protected static final DEFAULT_BUFSIZE:I = 0x200


# instance fields
.field private final buf1:[B

.field protected buffer:[B

.field private close_out:Z

.field private closed:Z

.field protected final deflater:Lcom/jcraft/jsch/jzlib/Deflater;

.field protected mydeflater:Z

.field private syncFlush:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(I)V

    const/16 v1, 0x200

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V

    .line 53
    iput-boolean v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->mydeflater:Z

    .line 54
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/16 v0, 0x200

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jsch/jzlib/Deflater;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->closed:Z

    .line 41
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->syncFlush:Z

    .line 43
    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buf1:[B

    .line 45
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->mydeflater:Z

    .line 47
    iput-boolean v1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->close_out:Z

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
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 73
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buffer:[B

    .line 74
    iput-boolean p4, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->close_out:Z

    .line 75
    return-void

    .line 68
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->closed:Z

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->finish()V

    .line 112
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->mydeflater:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflater;->end()I

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->close_out:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->closed:Z

    .line 119
    :cond_2
    return-void
.end method

.method protected deflate(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buffer:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buffer:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/jcraft/jsch/jzlib/Deflater;->setOutput([BII)V

    .line 124
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jzlib/Deflater;->deflate(I)I

    move-result v0

    .line 125
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 128
    :sswitch_0
    goto :goto_0

    .line 130
    :sswitch_1
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/Deflater;->avail_in:I

    if-gtz v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 132
    nop

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget p1, p1, Lcom/jcraft/jsch/jzlib/Deflater;->next_out_index:I

    .line 139
    if-lez p1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buffer:[B

    invoke-virtual {v1, v2, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    :cond_0
    return v0

    .line 135
    :cond_1
    :goto_1
    new-instance p1, Ljava/io/IOException;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to deflate: error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " avail_out="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflater;->avail_out:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    nop

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflate(I)I

    goto :goto_0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->syncFlush:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflate(I)I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/Deflater;->next_out_index:I

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 157
    return-void
.end method

.method getDeflater()Lcom/jcraft/jsch/jzlib/Deflater;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    return-object v0
.end method

.method getSyncFlush()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->syncFlush:Z

    return v0
.end method

.method getTotalIn()J
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflater;->getTotalIn()J

    move-result-wide v0

    return-wide v0
.end method

.method getTotalOut()J
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflater;->getTotalOut()J

    move-result-wide v0

    return-wide v0
.end method

.method setSyncFlush(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->syncFlush:Z

    .line 169
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buf1:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 80
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->buf1:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->write([BII)V

    .line 81
    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance p1, Ljava/io/IOException;

    const-string p2, "finished"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_0
    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    if-nez p3, :cond_2

    .line 90
    return-void

    .line 92
    :cond_2
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->syncFlush:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/jcraft/jsch/jzlib/Deflater;->setInput([BIIZ)V

    .line 94
    nop

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget p1, p1, Lcom/jcraft/jsch/jzlib/Deflater;->avail_in:I

    if-gtz p1, :cond_5

    return-void

    .line 95
    :cond_5
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/jzlib/DeflaterOutputStream;->deflate(I)I

    move-result p1

    .line 96
    if-ne p1, v1, :cond_4

    .line 97
    nop

    .line 100
    return-void

    .line 88
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
