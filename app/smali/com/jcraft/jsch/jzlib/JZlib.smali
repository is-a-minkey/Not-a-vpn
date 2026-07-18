.class final Lcom/jcraft/jsch/jzlib/JZlib;
.super Ljava/lang/Object;
.source "JZlib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;
    }
.end annotation


# static fields
.field static final DEF_WBITS:I = 0xf

.field static final MAX_WBITS:I = 0xf

.field static final W_ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field static final W_GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field static final W_NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field static final W_ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field static final Z_ASCII:B = 0x1t

.field static final Z_BEST_COMPRESSION:I = 0x9

.field static final Z_BEST_SPEED:I = 0x1

.field static final Z_BINARY:B = 0x0t

.field static final Z_BUF_ERROR:I = -0x5

.field static final Z_DATA_ERROR:I = -0x3

.field static final Z_DEFAULT_COMPRESSION:I = -0x1

.field static final Z_DEFAULT_STRATEGY:I = 0x0

.field static final Z_ERRNO:I = -0x1

.field static final Z_FILTERED:I = 0x1

.field static final Z_FINISH:I = 0x4

.field static final Z_FULL_FLUSH:I = 0x3

.field static final Z_HUFFMAN_ONLY:I = 0x2

.field static final Z_MEM_ERROR:I = -0x4

.field static final Z_NEED_DICT:I = 0x2

.field static final Z_NO_COMPRESSION:I = 0x0

.field static final Z_NO_FLUSH:I = 0x0

.field static final Z_OK:I = 0x0

.field static final Z_PARTIAL_FLUSH:I = 0x1

.field static final Z_STREAM_END:I = 0x1

.field static final Z_STREAM_ERROR:I = -0x2

.field static final Z_SYNC_FLUSH:I = 0x2

.field static final Z_UNKNOWN:B = 0x2t

.field static final Z_VERSION_ERROR:I = -0x6

.field private static final version:Ljava/lang/String; = "1.1.3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->W_NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 48
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 49
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 50
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->W_ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 82
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adler32_combine(JJJ)J
    .locals 0

    .line 85
    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/jzlib/Adler32;->combine(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static crc32_combine(JJJ)J
    .locals 0

    .line 89
    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/jzlib/CRC32;->combine(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static version()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "1.1.3"

    return-object v0
.end method
