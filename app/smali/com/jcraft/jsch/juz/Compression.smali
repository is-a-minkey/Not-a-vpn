.class public Lcom/jcraft/jsch/juz/Compression;
.super Ljava/lang/Object;
.source "Compression.java"

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final PACKET_MAX_SIZE:I = 0x40000


# instance fields
.field private final buffer_margin:I

.field private deflater:Ljava/util/zip/Deflater;

.field private inflated_buf:[B

.field private inflater:Ljava/util/zip/Inflater;

.field private session:Lcom/jcraft/jsch/Session;

.field private tmpbuf:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x34

    iput v0, p0, Lcom/jcraft/jsch/juz/Compression;->buffer_margin:I

    .line 32
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    .line 36
    return-void
.end method

.method static synthetic lambda$0(Lcom/jcraft/jsch/juz/Compression;)Ljava/lang/String;
    .locals 2

    .line 74
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

.method static synthetic lambda$1(Ljava/util/zip/DataFormatException;)Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "an exception during uncompress\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/zip/DataFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 39
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->session:Lcom/jcraft/jsch/Session;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    return-void

    .line 43
    :cond_1
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public compress([BI[I)[B
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    array-length v0, v0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x2

    if-ge v0, v2, :cond_0

    .line 84
    aget v0, p3, v1

    mul-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->deflater:Ljava/util/zip/Deflater;

    aget v2, p3, v1

    sub-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 89
    nop

    .line 90
    nop

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->deflater:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    iget-object v4, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    array-length v4, v4

    invoke-virtual {v0, v2, v1, v4, v3}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    .line 94
    array-length v2, p1

    add-int v4, p2, v0

    add-int/lit8 v5, v4, 0x34

    if-ge v2, v5, :cond_1

    .line 95
    mul-int v2, v5, v3

    new-array v2, v2, [B

    .line 96
    array-length v5, p1

    invoke-static {p1, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    move-object p1, v2

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    nop

    .line 101
    iget-object p2, p0, Lcom/jcraft/jsch/juz/Compression;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 103
    aput v4, p3, v1

    .line 104
    return-object p1

    :cond_2
    move p2, v4

    goto :goto_0
.end method

.method public end()V
    .locals 2

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    .line 49
    iget-object v1, p0, Lcom/jcraft/jsch/juz/Compression;->inflater:Ljava/util/zip/Inflater;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/jcraft/jsch/juz/Compression;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 51
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->inflater:Ljava/util/zip/Inflater;

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/juz/Compression;->deflater:Ljava/util/zip/Deflater;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/jcraft/jsch/juz/Compression;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 55
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->deflater:Ljava/util/zip/Deflater;

    .line 57
    :cond_1
    iput-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->session:Lcom/jcraft/jsch/Session;

    .line 58
    return-void
.end method

.method public init(II)V
    .locals 1

    .line 68
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object p1, p0, Lcom/jcraft/jsch/juz/Compression;->deflater:Ljava/util/zip/Deflater;

    .line 70
    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 71
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/juz/Compression;->inflater:Ljava/util/zip/Inflater;

    .line 72
    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    .line 74
    :cond_1
    :goto_0
    new-instance p1, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1AEtQ__U6WBM9BLX5DISqYi9mDU;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1AEtQ__U6WBM9BLX5DISqYi9mDU;-><init>(Lcom/jcraft/jsch/juz/Compression;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/juz/Compression;->logMessage(ILjava/util/function/Supplier;)V

    .line 75
    return-void
.end method

.method public init(IILcom/jcraft/jsch/Session;)V
    .locals 0

    .line 62
    iput-object p3, p0, Lcom/jcraft/jsch/juz/Compression;->session:Lcom/jcraft/jsch/Session;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/juz/Compression;->init(II)V

    .line 64
    return-void
.end method

.method public uncompress([BI[I)[B
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->inflater:Ljava/util/zip/Inflater;

    const/4 v1, 0x0

    aget v2, p3, v1

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 111
    move v0, v1

    .line 114
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    iget-object v4, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 117
    add-int v3, v0, v2

    const v4, 0x3fffb

    if-le v3, v4, :cond_0

    .line 118
    new-instance v2, Lcom/jcraft/jsch/Compression$InflaterException;

    .line 119
    const-string v3, "Decompressed packet exceeds PACKET_MAX_SIZE"

    .line 118
    invoke-direct {v2, v3}, Lcom/jcraft/jsch/Compression$InflaterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    array-length v4, v4

    if-ge v4, v3, :cond_1

    .line 122
    new-array v4, v3, [B

    .line 123
    iget-object v5, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iput-object v4, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    .line 126
    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/juz/Compression;->tmpbuf:[B

    iget-object v5, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    nop

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    .line 113
    if-gtz v0, :cond_2

    .line 129
    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move v3, v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :goto_1
    new-instance v0, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1uzenL2aBsCDjbqyC23ilz9ju84;

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1uzenL2aBsCDjbqyC23ilz9ju84;-><init>(Ljava/util/zip/DataFormatException;)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/juz/Compression;->logMessage(ILjava/util/function/Supplier;)V

    .line 133
    :goto_2
    array-length v0, p1

    iget-object v2, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    array-length v2, v2

    add-int/2addr v2, p2

    if-ge v0, v2, :cond_3

    .line 134
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v0, v0, [B

    .line 135
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    move-object p1, v0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/juz/Compression;->inflated_buf:[B

    invoke-static {v0, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    aput v3, p3, v1

    .line 140
    return-object p1
.end method
