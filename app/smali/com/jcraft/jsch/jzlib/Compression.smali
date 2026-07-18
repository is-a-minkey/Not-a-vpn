.class public Lcom/jcraft/jsch/jzlib/Compression;
.super Ljava/lang/Object;
.source "Compression.java"

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final PACKET_MAX_SIZE:I = 0x40000


# instance fields
.field private final buffer_margin:I

.field private deflater:Lcom/jcraft/jsch/jzlib/Deflater;

.field private inflated_buf:[B

.field private inflater:Lcom/jcraft/jsch/jzlib/Inflater;

.field private session:Lcom/jcraft/jsch/Session;

.field private tmpbuf:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x34

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->buffer_margin:I

    .line 41
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->tmpbuf:[B

    .line 45
    return-void
.end method

.method static synthetic lambda$0(Lcom/jcraft/jsch/jzlib/Compression;)Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zlib using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$1(I)Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compress: deflate returnd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$2(I)Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "compress: deflate returnd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private logMessage(ILjava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->session:Lcom/jcraft/jsch/Session;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    return-void

    .line 52
    :cond_1
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public compress([BI[I)[B
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iput-object p1, v0, Lcom/jcraft/jsch/jzlib/Deflater;->next_in:[B

    .line 92
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iput p2, v0, Lcom/jcraft/jsch/jzlib/Deflater;->next_in_index:I

    .line 93
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    const/4 v1, 0x0

    aget v2, p3, v1

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/jcraft/jsch/jzlib/Deflater;->avail_in:I

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->tmpbuf:[B

    iput-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflater;->next_out:[B

    .line 100
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iput v1, v0, Lcom/jcraft/jsch/jzlib/Deflater;->next_out_index:I

    .line 101
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    const/16 v2, 0x1000

    iput v2, v0, Lcom/jcraft/jsch/jzlib/Deflater;->avail_out:I

    .line 102
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/Deflater;->deflate(I)I

    move-result v0

    .line 103
    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 115
    new-instance v2, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$qo8AVbgDKTY0vmJ-IHcZqGv4ynU;

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$qo8AVbgDKTY0vmJ-IHcZqGv4ynU;-><init>(I)V

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/jzlib/Compression;->logMessage(ILjava/util/function/Supplier;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflater;->avail_out:I

    sub-int v0, v2, v0

    .line 106
    array-length v2, p1

    add-int v4, p2, v0

    add-int/lit8 v5, v4, 0x34

    if-ge v2, v5, :cond_2

    .line 107
    mul-int v2, v5, v3

    new-array v2, v2, [B

    .line 108
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    move-object p1, v2

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->tmpbuf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    nop

    .line 113
    move p2, v4

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflater;->avail_out:I

    if-eqz v0, :cond_0

    .line 119
    aput p2, p3, v1

    .line 120
    return-object p1
.end method

.method public end()V
    .locals 2

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    .line 58
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/Inflater;->end()I

    .line 60
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/Deflater;->end()I

    .line 64
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 66
    :cond_1
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->session:Lcom/jcraft/jsch/Session;

    .line 67
    return-void
.end method

.method public init(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 78
    :try_start_0
    new-instance p1, Lcom/jcraft/jsch/jzlib/Deflater;

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(I)V

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Compression;->deflater:Lcom/jcraft/jsch/jzlib/Deflater;

    .line 79
    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Lcom/jcraft/jsch/jzlib/GZIPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 83
    new-instance p1, Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-direct {p1}, Lcom/jcraft/jsch/jzlib/Inflater;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 84
    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    .line 86
    :cond_1
    :goto_0
    new-instance p1, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$vh_iHcBGWeXRQ_VZWW0p-1qVCIg;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$vh_iHcBGWeXRQ_VZWW0p-1qVCIg;-><init>(Lcom/jcraft/jsch/jzlib/Compression;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/jzlib/Compression;->logMessage(ILjava/util/function/Supplier;)V

    .line 87
    return-void
.end method

.method public init(IILcom/jcraft/jsch/Session;)V
    .locals 0

    .line 71
    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/Compression;->session:Lcom/jcraft/jsch/Session;

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/jzlib/Compression;->init(II)V

    .line 73
    return-void
.end method

.method public uncompress([BI[I)[B
    .locals 7

    .line 125
    nop

    .line 127
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iput-object p1, v0, Lcom/jcraft/jsch/jzlib/Inflater;->next_in:[B

    .line 128
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iput p2, v0, Lcom/jcraft/jsch/jzlib/Inflater;->next_in_index:I

    .line 129
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    const/4 v1, 0x0

    aget v2, p3, v1

    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflater;->avail_in:I

    move v0, v1

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Compression;->tmpbuf:[B

    iput-object v3, v2, Lcom/jcraft/jsch/jzlib/Inflater;->next_out:[B

    .line 133
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/Inflater;->next_out_index:I

    .line 134
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    const/16 v3, 0x1000

    iput v3, v2, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    .line 135
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/jzlib/Inflater;->inflate(I)I

    move-result v2

    .line 136
    const/4 v4, 0x0

    const/4 v5, 0x2

    sparse-switch v2, :sswitch_data_0

    .line 168
    new-instance p1, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$oiOH7JxzUtSJNczo--ulYn5J5Dc;

    invoke-direct {p1, v2}, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$oiOH7JxzUtSJNczo--ulYn5J5Dc;-><init>(I)V

    invoke-direct {p0, v5, p1}, Lcom/jcraft/jsch/jzlib/Compression;->logMessage(ILjava/util/function/Supplier;)V

    .line 169
    return-object v4

    .line 140
    :sswitch_0
    add-int v2, v0, v3

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    sub-int v4, v2, v4

    const v6, 0x3fffb

    if-le v4, v6, :cond_0

    .line 141
    new-instance p1, Lcom/jcraft/jsch/Compression$InflaterException;

    .line 142
    const-string p2, "Decompressed packet exceeds PACKET_MAX_SIZE"

    .line 141
    invoke-direct {p1, p2}, Lcom/jcraft/jsch/Compression$InflaterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    array-length v4, v4

    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    sub-int v6, v2, v6

    if-ge v4, v6, :cond_2

    .line 145
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    array-length v4, v4

    mul-int/2addr v4, v5

    .line 146
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    sub-int v5, v2, v5

    if-ge v4, v5, :cond_1

    .line 147
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    sub-int v4, v2, v4

    .line 148
    :cond_1
    new-array v2, v4, [B

    .line 149
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iput-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->tmpbuf:[B

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    sub-int v5, v3, v5

    invoke-static {v2, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflater:Lcom/jcraft/jsch/jzlib/Inflater;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/Inflater;->avail_out:I

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    .line 154
    aput v0, p3, v1

    .line 155
    goto :goto_0

    .line 157
    :sswitch_1
    array-length v2, p1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_3

    .line 158
    add-int v2, v0, p2

    new-array v2, v2, [B

    .line 159
    invoke-static {p1, v1, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    invoke-static {p1, v1, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    nop

    .line 162
    move-object v4, v2

    goto :goto_1

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Compression;->inflated_buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p1

    .line 165
    :goto_1
    aput v0, p3, v1

    .line 166
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
