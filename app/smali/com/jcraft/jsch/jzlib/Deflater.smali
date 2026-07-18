.class final Lcom/jcraft/jsch/jzlib/Deflater;
.super Lcom/jcraft/jsch/jzlib/ZStream;
.source "Deflater.java"


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
.field private finished:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 60
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 63
    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(II)V

    .line 64
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(IIZ)V

    .line 72
    return-void
.end method

.method constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflater;->init(III)I

    move-result p1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    new-instance p2, Lcom/jcraft/jsch/jzlib/GZIPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflater;->msg:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 93
    :cond_0
    return-void
.end method

.method constructor <init>(IIILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 83
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/jzlib/Deflater;->init(IIILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)I

    move-result p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    new-instance p2, Lcom/jcraft/jsch/jzlib/GZIPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflater;->msg:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 86
    :cond_0
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflater;->init(IIZ)I

    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    new-instance p2, Lcom/jcraft/jsch/jzlib/GZIPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflater;->msg:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 79
    :cond_0
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 67
    const/16 v0, 0xf

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(IIZ)V

    .line 68
    return-void
.end method


# virtual methods
.method copy(Lcom/jcraft/jsch/jzlib/Deflater;)I
    .locals 1

    .line 174
    iget-boolean v0, p1, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 175
    invoke-static {p0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateCopy(Lcom/jcraft/jsch/jzlib/ZStream;Lcom/jcraft/jsch/jzlib/ZStream;)I

    move-result p1

    return p1
.end method

.method deflate(I)I
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->deflate(I)I

    move-result v1

    .line 140
    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    .line 141
    iput-boolean p1, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 142
    :cond_1
    return v1
.end method

.method end()I
    .locals 2

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 148
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 149
    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateEnd()I

    move-result v1

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 152
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflater;->free()V

    .line 153
    return v1
.end method

.method finished()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    return v0
.end method

.method init(I)I
    .locals 1

    .line 96
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/Deflater;->init(II)I

    move-result p1

    return p1
.end method

.method init(II)I
    .locals 1

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/jzlib/Deflater;->init(IIZ)I

    move-result p1

    return p1
.end method

.method init(III)I
    .locals 1

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 124
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Deflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 125
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateInit(III)I

    move-result p1

    return p1
.end method

.method init(IIILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)I
    .locals 2

    .line 108
    const/4 v0, -0x2

    const/16 v1, 0x9

    if-lt p2, v1, :cond_4

    const/16 v1, 0xf

    if-le p2, v1, :cond_0

    return v0

    .line 111
    :cond_0
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->W_NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p4, v1, :cond_1

    .line 112
    mul-int/lit8 p2, p2, -0x1

    .line 113
    goto :goto_0

    :cond_1
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p4, v1, :cond_2

    .line 114
    add-int/lit8 p2, p2, 0x10

    .line 115
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->W_ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    if-ne p4, v1, :cond_3

    .line 116
    return v0

    .line 117
    :cond_3
    sget-object p4, Lcom/jcraft/jsch/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 119
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflater;->init(III)I

    move-result v0

    return v0

    .line 109
    :cond_4
    return v0
.end method

.method init(IIZ)I
    .locals 1

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->finished:Z

    .line 130
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Deflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 131
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    if-eqz p3, :cond_0

    neg-int p2, p2

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method init(IZ)I
    .locals 1

    .line 100
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/jzlib/Deflater;->init(IIZ)I

    move-result p1

    return p1
.end method

.method params(II)I
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 158
    return v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateParams(II)I

    move-result v1

    return v1
.end method

.method setDictionary([BI)I
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateSetDictionary([BI)I

    move-result v1

    return v1
.end method
