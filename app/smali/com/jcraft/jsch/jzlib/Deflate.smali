.class final Lcom/jcraft/jsch/jzlib/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final BL_CODES:I = 0x13

.field private static final BUSY_STATE:I = 0x71

.field private static final BlockDone:I = 0x1

.field private static final Buf_size:I = 0x10

.field private static final DEF_MEM_LEVEL:I = 0x8

.field private static final DYN_TREES:I = 0x2

.field private static final D_CODES:I = 0x1e

.field private static final END_BLOCK:I = 0x100

.field private static final FAST:I = 0x1

.field private static final FINISH_STATE:I = 0x29a

.field private static final FinishDone:I = 0x3

.field private static final FinishStarted:I = 0x2

.field private static final HEAP_SIZE:I = 0x23d

.field private static final INIT_STATE:I = 0x2a

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field private static final MAX_MATCH:I = 0x102

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final MIN_LOOKAHEAD:I = 0x106

.field private static final MIN_MATCH:I = 0x3

.field private static final NeedMore:I = 0x0

.field private static final PRESET_DICT:I = 0x20

.field private static final REPZ_11_138:I = 0x12

.field private static final REPZ_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final SLOW:I = 0x2

.field private static final STATIC_TREES:I = 0x1

.field private static final STORED:I = 0x0

.field private static final STORED_BLOCK:I = 0x0

.field private static final Z_ASCII:I = 0x1

.field private static final Z_BINARY:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFAULT_COMPRESSION:I = -0x1

.field private static final Z_DEFAULT_STRATEGY:I = 0x0

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FILTERED:I = 0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_HUFFMAN_ONLY:I = 0x2

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_UNKNOWN:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field bi_buf:S

.field bi_valid:I

.field bl_count:[S

.field bl_desc:Lcom/jcraft/jsch/jzlib/Tree;

.field bl_tree:[S

.field block_start:I

.field d_buf:I

.field d_desc:Lcom/jcraft/jsch/jzlib/Tree;

.field data_type:B

.field depth:[B

.field dyn_dtree:[S

.field dyn_ltree:[S

.field gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

.field good_match:I

.field hash_bits:I

.field hash_mask:I

.field hash_shift:I

.field hash_size:I

.field head:[S

.field heap:[I

.field heap_len:I

.field heap_max:I

.field ins_h:I

.field l_buf:[B

.field l_desc:Lcom/jcraft/jsch/jzlib/Tree;

.field last_eob_len:I

.field last_flush:I

.field last_lit:I

.field level:I

.field lit_bufsize:I

.field lookahead:I

.field match_available:I

.field match_length:I

.field match_start:I

.field matches:I

.field max_chain_length:I

.field max_lazy_match:I

.field method:B

.field next_code:[S

.field nice_match:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field pending_buf_size:I

.field pending_out:I

.field prev:[S

.field prev_length:I

.field prev_match:I

.field static_len:I

.field status:I

.field strategy:I

.field strm:Lcom/jcraft/jsch/jzlib/ZStream;

.field strstart:I

.field w_bits:I

.field w_mask:I

.field w_size:I

.field window:[B

.field window_size:I

.field wrap:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 64
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/jcraft/jsch/jzlib/Deflate$Config;

    sput-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 66
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 67
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v6, 0x1

    move-object v1, v7

    move v2, v5

    move v3, v5

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x1

    aput-object v7, v0, v1

    .line 68
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0x10

    const/16 v5, 0x8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x2

    aput-object v7, v0, v1

    .line 69
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/4 v3, 0x6

    const/16 v5, 0x20

    move-object v1, v7

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x3

    aput-object v7, v0, v1

    .line 71
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/4 v3, 0x4

    const/16 v5, 0x10

    const/4 v6, 0x2

    move-object v1, v7

    move v2, v3

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x4

    aput-object v7, v0, v1

    .line 72
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/16 v2, 0x8

    const/16 v3, 0x10

    const/16 v5, 0x20

    move-object v1, v7

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x5

    aput-object v7, v0, v1

    .line 73
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/16 v5, 0x80

    move-object v1, v7

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x6

    aput-object v7, v0, v1

    .line 74
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/16 v5, 0x100

    const/16 v3, 0x20

    const/16 v4, 0x80

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/4 v1, 0x7

    aput-object v7, v0, v1

    .line 75
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/16 v3, 0x80

    const/16 v5, 0x400

    const/16 v2, 0x20

    const/16 v4, 0x102

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/16 v1, 0x8

    aput-object v7, v0, v1

    .line 76
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    new-instance v7, Lcom/jcraft/jsch/jzlib/Deflate$Config;

    const/16 v5, 0x1000

    move-object v1, v7

    move v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/jzlib/Deflate$Config;-><init>(IIIII)V

    const/16 v1, 0x9

    aput-object v7, v0, v1

    .line 79
    const-string v8, "need dictionary"

    .line 80
    const-string v9, "stream end"

    .line 81
    const-string v10, ""

    .line 82
    const-string v11, "file error"

    .line 83
    const-string v12, "stream error"

    .line 84
    const-string v13, "data error"

    .line 85
    const-string v14, "insufficient memory"

    .line 86
    const-string v15, "buffer error"

    .line 87
    const-string v16, "incompatible version"

    .line 88
    const-string v17, ""

    filled-new-array/range {v8 .. v17}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 164
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;)V
    .locals 2

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    .line 254
    new-instance v0, Lcom/jcraft/jsch/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_desc:Lcom/jcraft/jsch/jzlib/Tree;

    .line 255
    new-instance v0, Lcom/jcraft/jsch/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_desc:Lcom/jcraft/jsch/jzlib/Tree;

    .line 256
    new-instance v0, Lcom/jcraft/jsch/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_desc:Lcom/jcraft/jsch/jzlib/Tree;

    .line 259
    const/16 v0, 0x10

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    .line 261
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->next_code:[S

    .line 264
    const/16 v0, 0x23d

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    .line 272
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 319
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 320
    const/16 p1, 0x47a

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    .line 321
    const/16 p1, 0x7a

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    .line 322
    const/16 p1, 0x4e

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    .line 323
    return-void
.end method

.method static deflateCopy(Lcom/jcraft/jsch/jzlib/ZStream;Lcom/jcraft/jsch/jzlib/ZStream;)I
    .locals 4

    .line 1670
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    .line 1671
    return v2

    .line 1674
    :cond_0
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    if-eqz v0, :cond_1

    .line 1675
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    .line 1676
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v3, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1678
    :cond_1
    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 1679
    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 1680
    iget-wide v2, p1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 1682
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    if-eqz v0, :cond_2

    .line 1683
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    .line 1684
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    iget-object v3, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1687
    :cond_2
    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    .line 1688
    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 1689
    iget-wide v2, p1, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    .line 1691
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1692
    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->data_type:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->data_type:I

    .line 1693
    iget-object v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0}, Lcom/jcraft/jsch/jzlib/Checksum;->copy()Lcom/jcraft/jsch/jzlib/Checksum;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 1696
    :try_start_0
    iget-object p1, p1, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-virtual {p1}, Lcom/jcraft/jsch/jzlib/Deflate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/jzlib/Deflate;

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 1697
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    iput-object p0, p1, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 1698
    goto :goto_0

    :catch_0
    move-exception p0

    .line 1701
    :goto_0
    move v2, v1

    return v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private deflateInit(IIIII)I
    .locals 8

    .line 1346
    nop

    .line 1355
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1357
    const/4 v0, 0x6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1358
    move p1, v0

    .line 1360
    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez p3, :cond_1

    .line 1361
    nop

    .line 1362
    neg-int p3, p3

    .line 1363
    goto :goto_0

    :cond_1
    if-le p3, v2, :cond_2

    .line 1364
    nop

    .line 1365
    add-int/lit8 p3, p3, -0x10

    .line 1366
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    new-instance v5, Lcom/jcraft/jsch/jzlib/CRC32;

    invoke-direct {v5}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    iput-object v5, v3, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1369
    :goto_0
    const/4 v5, -0x2

    if-lt p4, v4, :cond_4

    const/16 v6, 0x9

    if-gt p4, v6, :cond_4

    const/16 v7, 0x8

    if-ne p2, v7, :cond_4

    if-lt p3, v6, :cond_4

    .line 1370
    if-gt p3, v2, :cond_4

    if-ltz p1, :cond_4

    if-gt p1, v6, :cond_4

    if-ltz p5, :cond_4

    if-le p5, v1, :cond_3

    return v5

    .line 1374
    :cond_3
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iput-object p0, v2, Lcom/jcraft/jsch/jzlib/ZStream;->dstate:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 1376
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    .line 1377
    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_bits:I

    .line 1378
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_bits:I

    shl-int p3, v4, p3

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    .line 1379
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int/2addr p3, v4

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_mask:I

    .line 1381
    add-int/lit8 p3, p4, 0x7

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_bits:I

    .line 1382
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_bits:I

    shl-int p3, v4, p3

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_size:I

    .line 1383
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_size:I

    sub-int/2addr p3, v4

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    .line 1384
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_bits:I

    add-int/lit8 p3, p3, 0x3

    sub-int/2addr p3, v4

    div-int/lit8 p3, p3, 0x3

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    .line 1386
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    mul-int/2addr p3, v1

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    .line 1387
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    new-array p3, p3, [S

    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    .line 1388
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_size:I

    new-array p3, p3, [S

    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    .line 1390
    add-int p3, p4, v0

    shl-int p3, v4, p3

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lit_bufsize:I

    .line 1394
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 p3, p3, 0x3

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    .line 1395
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 p3, p3, 0x3

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf_size:I

    .line 1397
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lit_bufsize:I

    iput p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_buf:I

    .line 1398
    iget p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lit_bufsize:I

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_buf:[B

    .line 1400
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    .line 1402
    iput p5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strategy:I

    .line 1403
    int-to-byte p1, p2

    iput-byte p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->method:B

    .line 1405
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateReset()I

    move-result v5

    return v5

    .line 1371
    :cond_4
    return v5
.end method

.method private dup([B)[B
    .locals 3

    .line 1740
    array-length v0, p1

    new-array v0, v0, [B

    .line 1741
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1742
    return-object v0
.end method

.method private dup([I)[I
    .locals 3

    .line 1752
    array-length v0, p1

    new-array v0, v0, [I

    .line 1753
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1754
    return-object v0
.end method

.method private dup([S)[S
    .locals 3

    .line 1746
    array-length v0, p1

    new-array v0, v0, [S

    .line 1747
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1748
    return-object v0
.end method

.method static smaller([SII[B)Z
    .locals 3

    .line 409
    mul-int/lit8 v0, p1, 0x2

    aget-short v0, p0, v0

    .line 410
    mul-int/lit8 v1, p2, 0x2

    aget-short p0, p0, v1

    .line 411
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, p0, :cond_1

    if-ne v0, p0, :cond_0

    aget-byte p0, p3, p1

    aget-byte p1, p3, p2

    if-le p0, p1, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method


# virtual methods
.method _tr_align()V
    .locals 5

    .line 615
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 616
    sget-object v2, Lcom/jcraft/jsch/jzlib/StaticTree;->static_ltree:[S

    const/16 v3, 0x100

    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 618
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->bi_flush()V

    .line 624
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_eob_len:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0xa

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v2, v4

    const/16 v4, 0x9

    if-ge v2, v4, :cond_0

    .line 625
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 626
    sget-object v0, Lcom/jcraft/jsch/jzlib/StaticTree;->static_ltree:[S

    invoke-virtual {p0, v3, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 627
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->bi_flush()V

    .line 629
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_eob_len:I

    .line 630
    return-void
.end method

.method _tr_flush_block(IIZ)V
    .locals 8

    .line 871
    nop

    .line 874
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 876
    iget-byte v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->data_type:B

    if-ne v0, v2, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->set_data_type()V

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_desc:Lcom/jcraft/jsch/jzlib/Tree;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/jzlib/Tree;->build_tree(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 882
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_desc:Lcom/jcraft/jsch/jzlib/Tree;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/jzlib/Tree;->build_tree(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 889
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->build_bl_tree()I

    move-result v0

    .line 892
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x7

    ushr-int/2addr v4, v1

    .line 893
    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->static_len:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x7

    ushr-int/2addr v5, v1

    .line 895
    if-gt v5, v4, :cond_2

    .line 896
    nop

    .line 897
    move v4, v5

    goto :goto_0

    .line 898
    :cond_1
    add-int/lit8 v4, p2, 0x5

    move v5, v4

    move v0, v3

    .line 901
    :cond_2
    :goto_0
    const/4 v6, 0x4

    add-int v7, p2, v6

    if-gt v7, v4, :cond_3

    const/4 v7, -0x1

    if-eq p1, v7, :cond_3

    .line 908
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 909
    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    if-ne v5, v4, :cond_5

    .line 910
    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 911
    sget-object p1, Lcom/jcraft/jsch/jzlib/StaticTree;->static_ltree:[S

    sget-object p2, Lcom/jcraft/jsch/jzlib/StaticTree;->static_dtree:[S

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->compress_block([S[S)V

    .line 912
    goto :goto_2

    .line 913
    :cond_5
    if-eqz p3, :cond_6

    move v3, p1

    :cond_6
    add-int p2, v6, v3

    invoke-virtual {p0, p2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 914
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget p2, p2, Lcom/jcraft/jsch/jzlib/Tree;->max_code:I

    add-int/2addr p2, p1

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/Tree;->max_code:I

    add-int/2addr v1, p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, v1, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_all_trees(III)V

    .line 915
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->compress_block([S[S)V

    .line 921
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->init_block()V

    .line 923
    if-eqz p3, :cond_7

    .line 924
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->bi_windup()V

    .line 926
    :cond_7
    return-void
.end method

.method _tr_stored_block(IIZ)V
    .locals 2

    .line 860
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    add-int/2addr p3, v1

    const/4 v1, 0x3

    invoke-virtual {p0, p3, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 861
    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->copy_block(IIZ)V

    .line 862
    return-void
.end method

.method _tr_tally(II)Z
    .locals 7

    .line 638
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_buf:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 639
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_buf:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-byte v4, p1

    aput-byte v4, v0, v1

    .line 641
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_buf:[B

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    int-to-byte v4, p2

    aput-byte v4, v0, v1

    .line 642
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    .line 644
    if-nez p1, :cond_0

    .line 646
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    mul-int/2addr p2, v3

    aget-short v0, p1, p2

    add-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p1, p2

    .line 647
    goto :goto_0

    .line 648
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->matches:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->matches:I

    .line 650
    add-int/lit8 p1, p1, -0x1

    .line 651
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    sget-object v1, Lcom/jcraft/jsch/jzlib/Tree;->_length_code:[B

    aget-byte p2, v1, p2

    add-int/lit16 p2, p2, 0x100

    add-int/2addr p2, v2

    mul-int/2addr p2, v3

    aget-short v1, v0, p2

    add-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v0, p2

    .line 652
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    invoke-static {p1}, Lcom/jcraft/jsch/jzlib/Tree;->d_code(I)I

    move-result p1

    mul-int/2addr p1, v3

    aget-short v0, p2, p1

    add-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p2, p1

    .line 655
    :goto_0
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    and-int/lit16 p1, p1, 0x1fff

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    if-le p1, v3, :cond_2

    .line 657
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    mul-int/lit8 p1, p1, 0x8

    .line 658
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    sub-int/2addr v0, v1

    .line 660
    move v1, p2

    :goto_1
    const/16 v4, 0x1e

    if-lt v1, v4, :cond_1

    .line 663
    ushr-int/lit8 p1, p1, 0x3

    .line 664
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->matches:I

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    div-int/2addr v4, v3

    if-ge v1, v4, :cond_2

    div-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    .line 665
    return v2

    .line 661
    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    mul-int v5, v1, v3

    aget-short v4, v4, v5

    sget-object v5, Lcom/jcraft/jsch/jzlib/Tree;->extra_dbits:[I

    aget v5, v5, v1

    const/4 v6, 0x5

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr p1, v4

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 668
    :cond_2
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lit_bufsize:I

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_3

    return v2

    :cond_3
    move v2, p2

    return v2
.end method

.method bi_flush()V
    .locals 2

    .line 745
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 746
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_short(I)V

    .line 747
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    .line 748
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    .line 749
    return-void

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 750
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 751
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    ushr-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    .line 752
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    .line 754
    :cond_1
    return-void
.end method

.method bi_windup()V
    .locals 2

    .line 758
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 759
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_short(I)V

    .line 760
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    if-lez v0, :cond_1

    .line 761
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 763
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    .line 764
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    .line 765
    return-void
.end method

.method build_bl_tree()I
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/Tree;->max_code:I

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->scan_tree([SI)V

    .line 471
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/Tree;->max_code:I

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->scan_tree([SI)V

    .line 474
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_desc:Lcom/jcraft/jsch/jzlib/Tree;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/jzlib/Tree;->build_tree(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 481
    const/16 v0, 0x12

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    sget-object v3, Lcom/jcraft/jsch/jzlib/Tree;->bl_order:[B

    aget-byte v3, v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-short v2, v2, v3

    if-eqz v2, :cond_1

    .line 483
    nop

    .line 486
    :goto_1
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    .line 488
    return v0

    .line 481
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1706
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/jzlib/Deflate;

    .line 1708
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    .line 1709
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->l_buf:[B

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->l_buf:[B

    .line 1710
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    .line 1712
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([S)[S

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    .line 1713
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([S)[S

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    .line 1714
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([S)[S

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    .line 1715
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([S)[S

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    .line 1716
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([S)[S

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    .line 1718
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([S)[S

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_count:[S

    .line 1719
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->next_code:[S

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([S)[S

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->next_code:[S

    .line 1720
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    .line 1721
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->dup([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    .line 1723
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->l_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    iput-object v2, v1, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 1724
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->d_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    iput-object v2, v1, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 1725
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    iput-object v2, v1, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 1732
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v1, :cond_0

    .line 1733
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/GZIPHeader;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 1736
    :cond_0
    return-object v0
.end method

.method compress_block([S[S)V
    .locals 7

    .line 678
    nop

    .line 682
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    const/16 v1, 0x100

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 684
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    .line 685
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_buf:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 684
    or-int/2addr v2, v3

    .line 686
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_buf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    .line 687
    add-int/lit8 v0, v0, 0x1

    .line 689
    if-nez v2, :cond_1

    .line 690
    invoke-virtual {p0, v3, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 691
    goto :goto_0

    .line 693
    :cond_1
    sget-object v4, Lcom/jcraft/jsch/jzlib/Tree;->_length_code:[B

    aget-byte v4, v4, v3

    .line 695
    add-int v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 696
    sget-object v5, Lcom/jcraft/jsch/jzlib/Tree;->extra_lbits:[I

    aget v5, v5, v4

    .line 697
    if-eqz v5, :cond_2

    .line 698
    sget-object v6, Lcom/jcraft/jsch/jzlib/Tree;->base_length:[I

    aget v4, v6, v4

    sub-int/2addr v3, v4

    .line 699
    invoke-virtual {p0, v3, v5}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 701
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 702
    invoke-static {v2}, Lcom/jcraft/jsch/jzlib/Tree;->d_code(I)I

    move-result v3

    .line 704
    invoke-virtual {p0, v3, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 705
    sget-object v4, Lcom/jcraft/jsch/jzlib/Tree;->extra_dbits:[I

    aget v4, v4, v3

    .line 706
    if-eqz v4, :cond_3

    .line 707
    sget-object v5, Lcom/jcraft/jsch/jzlib/Tree;->base_dist:[I

    aget v3, v5, v3

    sub-int/2addr v2, v3

    .line 708
    invoke-virtual {p0, v2, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 713
    :cond_3
    :goto_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    .line 683
    if-lt v0, v2, :cond_0

    .line 716
    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 717
    const/16 p2, 0x201

    aget-short p1, p1, p2

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_eob_len:I

    .line 718
    return-void
.end method

.method copy_block(IIZ)V
    .locals 1

    .line 774
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->bi_windup()V

    .line 775
    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_eob_len:I

    .line 777
    if-eqz p3, :cond_0

    .line 778
    int-to-short p3, p2

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->put_short(I)V

    .line 779
    not-int p3, p2

    int-to-short p3, p3

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->put_short(I)V

    .line 786
    :cond_0
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    invoke-virtual {p0, p3, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte([BII)V

    .line 787
    return-void
.end method

.method deflate(I)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1507
    const/4 v3, 0x1

    const/4 v5, -0x2

    const/4 v6, 0x4

    if-gt v1, v6, :cond_1e

    if-gez v1, :cond_0

    goto/16 :goto_a

    .line 1511
    :cond_0
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    if-eqz v7, :cond_1d

    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    if-nez v7, :cond_1

    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v7, :cond_1d

    .line 1512
    :cond_1
    iget v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    const/16 v8, 0x29a

    if-ne v7, v8, :cond_2

    if-eq v1, v6, :cond_2

    goto/16 :goto_9

    .line 1516
    :cond_2
    iget-object v5, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    const/4 v7, 0x7

    if-nez v5, :cond_3

    .line 1517
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    sget-object v1, Lcom/jcraft/jsch/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1518
    goto/16 :goto_1

    .line 1521
    :cond_3
    iget v5, v0, Lcom/jcraft/jsch/jzlib/Deflate;->last_flush:I

    .line 1522
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->last_flush:I

    .line 1525
    iget v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    const-wide/32 v10, 0xffff

    const/16 v12, 0x10

    const/4 v13, 0x3

    const/16 v14, 0x8

    const/4 v15, 0x2

    const/16 v4, 0x2a

    if-ne v9, v4, :cond_8

    .line 1526
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    const/16 v9, 0x71

    if-ne v4, v15, :cond_4

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jsch/jzlib/GZIPHeader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/jzlib/GZIPHeader;->put(Lcom/jcraft/jsch/jzlib/Deflate;)V

    .line 1528
    iput v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    .line 1529
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v4}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 1530
    goto :goto_0

    .line 1531
    :cond_4
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->w_bits:I

    sub-int/2addr v4, v14

    shl-int/2addr v4, v6

    add-int/2addr v4, v14

    shl-int/2addr v4, v14

    .line 1532
    iget v14, v0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    sub-int/2addr v14, v3

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v3

    .line 1534
    if-le v14, v13, :cond_5

    .line 1535
    move v14, v13

    .line 1536
    :cond_5
    shl-int/lit8 v14, v14, 0x6

    or-int/2addr v4, v14

    .line 1537
    iget v14, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    if-eqz v14, :cond_6

    .line 1538
    or-int/lit8 v4, v4, 0x20

    .line 1539
    :cond_6
    rem-int/lit8 v14, v4, 0x1f

    rsub-int/lit8 v14, v14, 0x1f

    add-int/2addr v4, v14

    .line 1541
    iput v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    .line 1542
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->putShortMSB(I)V

    .line 1545
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    if-eqz v4, :cond_7

    .line 1546
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v4}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v16

    .line 1547
    ushr-long v2, v16, v12

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->putShortMSB(I)V

    .line 1548
    and-long v2, v16, v10

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->putShortMSB(I)V

    .line 1550
    :cond_7
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v2}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 1555
    :cond_8
    :goto_0
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    const/4 v3, -0x1

    if-eqz v2, :cond_9

    .line 1556
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/ZStream;->flush_pending()V

    .line 1557
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_a

    .line 1563
    iput v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->last_flush:I

    .line 1564
    const/4 v2, 0x0

    return v2

    .line 1570
    :cond_9
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v2, :cond_a

    if-gt v1, v5, :cond_a

    if-eq v1, v6, :cond_a

    .line 1571
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    sget-object v1, Lcom/jcraft/jsch/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1572
    goto :goto_1

    .line 1576
    :cond_a
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    if-ne v2, v8, :cond_b

    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_b

    .line 1577
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    sget-object v1, Lcom/jcraft/jsch/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v1, v1, v7

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1578
    :goto_1
    const/4 v2, -0x5

    return v2

    .line 1582
    :cond_b
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v2, :cond_d

    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_d

    if-eqz v1, :cond_c

    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    if-eq v2, v8, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_6

    .line 1583
    :cond_d
    :goto_2
    nop

    .line 1584
    sget-object v2, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/jcraft/jsch/jzlib/Deflate$Config;->func:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    goto :goto_3

    .line 1592
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/jzlib/Deflate;->deflate_slow(I)I

    move-result v2

    goto :goto_3

    .line 1589
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/jzlib/Deflate;->deflate_fast(I)I

    move-result v2

    .line 1590
    goto :goto_3

    .line 1586
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/jzlib/Deflate;->deflate_stored(I)I

    move-result v2

    .line 1587
    nop

    .line 1597
    :goto_3
    if-eq v2, v15, :cond_e

    if-ne v2, v13, :cond_f

    .line 1598
    :cond_e
    iput v8, v0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    .line 1600
    :cond_f
    if-eqz v2, :cond_1b

    if-ne v2, v15, :cond_10

    goto/16 :goto_8

    .line 1613
    :cond_10
    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    .line 1614
    if-ne v1, v4, :cond_11

    .line 1615
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_align()V

    .line 1616
    const/4 v2, 0x0

    goto :goto_5

    .line 1617
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 1620
    if-ne v1, v13, :cond_13

    .line 1622
    move v5, v2

    :goto_4
    iget v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_size:I

    if-lt v5, v7, :cond_12

    goto :goto_5

    .line 1623
    :cond_12
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    aput-short v2, v7, v5

    .line 1622
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1626
    :cond_13
    :goto_5
    iget-object v5, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-virtual {v5}, Lcom/jcraft/jsch/jzlib/ZStream;->flush_pending()V

    .line 1627
    iget-object v5, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_15

    .line 1628
    iput v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->last_flush:I

    .line 1629
    return v2

    :cond_14
    const/4 v2, 0x0

    .line 1634
    :cond_15
    :goto_6
    if-eq v1, v6, :cond_16

    .line 1635
    return v2

    .line 1636
    :cond_16
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    if-gtz v1, :cond_18

    .line 1637
    :cond_17
    move v2, v4

    return v2

    .line 1639
    :cond_18
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    if-ne v1, v15, :cond_19

    .line 1640
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v1}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v5

    .line 1641
    const-wide/16 v7, 0xff

    and-long v9, v5, v7

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1642
    const/16 v1, 0x8

    shr-long v9, v5, v1

    and-long/2addr v9, v7

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1643
    shr-long v9, v5, v12

    and-long/2addr v9, v7

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1644
    const/16 v1, 0x18

    shr-long v9, v5, v1

    and-long/2addr v9, v7

    long-to-int v3, v9

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1645
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v9, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    and-long/2addr v9, v7

    long-to-int v3, v9

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1646
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v9, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    const/16 v3, 0x8

    shr-long/2addr v9, v3

    and-long/2addr v9, v7

    long-to-int v3, v9

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1647
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v9, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    shr-long/2addr v9, v12

    and-long/2addr v9, v7

    long-to-int v3, v9

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1648
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v9, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    shr-long/2addr v9, v1

    and-long/2addr v7, v9

    long-to-int v1, v7

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 1650
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jsch/jzlib/GZIPHeader;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/jcraft/jsch/jzlib/GZIPHeader;->setCRC(J)V

    .line 1651
    goto :goto_7

    .line 1653
    :cond_19
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v1}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v5

    .line 1654
    ushr-long v7, v5, v12

    long-to-int v1, v7

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->putShortMSB(I)V

    .line 1655
    and-long/2addr v5, v10

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->putShortMSB(I)V

    .line 1658
    :goto_7
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/ZStream;->flush_pending()V

    .line 1663
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    if-lez v1, :cond_1a

    .line 1664
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    neg-int v1, v1

    iput v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    .line 1665
    :cond_1a
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    if-eqz v0, :cond_17

    return v2

    :cond_1b
    :goto_8
    const/4 v2, 0x0

    .line 1601
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v1, :cond_1c

    .line 1602
    iput v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->last_flush:I

    .line 1604
    :cond_1c
    return v2

    .line 1513
    :cond_1d
    :goto_9
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    sget-object v1, Lcom/jcraft/jsch/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1514
    nop

    .line 1508
    :cond_1e
    :goto_a
    move v2, v5

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method deflateEnd()I
    .locals 4

    .line 1430
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    const/4 v1, -0x2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    const/16 v3, 0x29a

    if-eq v0, v3, :cond_0

    .line 1431
    return v1

    .line 1434
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    .line 1435
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_buf:[B

    .line 1436
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    .line 1437
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    .line 1438
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    .line 1441
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    const/4 v1, 0x0

    const/4 v3, -0x3

    if-ne v0, v2, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method deflateInit(I)I
    .locals 1

    .line 1342
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method deflateInit(II)I
    .locals 6

    .line 1338
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v4

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateInit(IIIII)I

    move-result p1

    return p1
.end method

.method deflateInit(III)I
    .locals 6

    .line 1334
    const/16 v2, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/jzlib/Deflate;->deflateInit(IIIII)I

    move-result p1

    return p1
.end method

.method deflateParams(II)I
    .locals 5

    .line 1445
    nop

    .line 1447
    const/4 v0, 0x6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1448
    move p1, v0

    .line 1450
    :cond_0
    const/4 v0, -0x2

    if-ltz p1, :cond_4

    const/16 v1, 0x9

    if-gt p1, v1, :cond_4

    if-ltz p2, :cond_4

    const/4 v1, 0x2

    if-le p2, v1, :cond_1

    return v0

    .line 1454
    :cond_1
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->func:I

    sget-object v1, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->func:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 1456
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/ZStream;->deflate(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1459
    :goto_0
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    if-eq v1, p1, :cond_3

    .line 1460
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    .line 1461
    sget-object p1, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object p1, p1, v1

    iget p1, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->max_lazy:I

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->max_lazy_match:I

    .line 1462
    sget-object p1, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object p1, p1, v1

    iget p1, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->good_length:I

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->good_match:I

    .line 1463
    sget-object p1, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object p1, p1, v1

    iget p1, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->nice_length:I

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->nice_match:I

    .line 1464
    sget-object p1, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object p1, p1, v1

    iget p1, p1, Lcom/jcraft/jsch/jzlib/Deflate$Config;->max_chain:I

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->max_chain_length:I

    .line 1466
    :cond_3
    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strategy:I

    .line 1467
    return v0

    .line 1451
    :cond_4
    return v0
.end method

.method deflateReset()I
    .locals 4

    .line 1409
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    iput-wide v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 1410
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1411
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, 0x2

    iput v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->data_type:I

    .line 1413
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    .line 1414
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_out:I

    .line 1416
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    if-gez v1, :cond_0

    .line 1417
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    neg-int v1, v1

    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    .line 1419
    :cond_0
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->wrap:I

    const/16 v2, 0x2a

    const/16 v3, 0x71

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    .line 1420
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v1}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 1422
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_flush:I

    .line 1424
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->tr_init()V

    .line 1425
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->lm_init()V

    .line 1426
    return v0
.end method

.method deflateSetDictionary([BI)I
    .locals 6

    .line 1471
    nop

    .line 1472
    nop

    .line 1474
    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->status:I

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    return v0

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0, p1, v1, p2}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 1479
    const/4 v2, 0x3

    if-ge p2, v2, :cond_1

    .line 1480
    goto :goto_2

    .line 1481
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    add-int/lit16 v0, v0, -0x106

    if-le p2, v0, :cond_2

    .line 1482
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    add-int/lit16 v0, v0, -0x106

    .line 1483
    sub-int/2addr p2, v0

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, p2

    move p2, v1

    .line 1485
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1486
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1487
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    .line 1493
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1494
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr p1, p2

    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    const/4 v0, 0x1

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    xor-int/2addr p1, p2

    iget p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr p1, p2

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1496
    move p1, v1

    :goto_1
    sub-int p2, v3, v2

    if-le p1, p2, :cond_3

    .line 1501
    :goto_2
    move v0, v1

    return v0

    .line 1497
    :cond_3
    iget p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr p2, v0

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr p2, v0

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr p2, v0

    iput p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1498
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_mask:I

    and-int/2addr v0, p1

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v4, v4, v5

    aput-short v4, p2, v0

    .line 1499
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    int-to-short v4, p1

    aput-short v4, p2, v0

    .line 1496
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1475
    :cond_4
    return v0
.end method

.method deflate_fast(I)I
    .locals 12

    .line 1018
    const/4 v0, 0x0

    move v1, v0

    .line 1026
    :cond_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x106

    if-ge v2, v6, :cond_6

    .line 1027
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->fill_window()V

    .line 1028
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-ge v2, v6, :cond_1

    if-nez p1, :cond_1

    .line 1029
    return v0

    .line 1031
    :cond_1
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_6

    .line 1032
    nop

    .line 1108
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 1109
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_4

    .line 1110
    if-ne p1, v1, :cond_3

    .line 1111
    move v0, v4

    return v0

    .line 1113
    :cond_3
    return v0

    .line 1115
    :cond_4
    if-ne p1, v1, :cond_5

    move v0, v5

    return v0

    :cond_5
    move v0, v3

    return v0

    .line 1037
    :cond_6
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    const v7, 0xffff

    if-lt v2, v5, :cond_7

    .line 1038
    nop

    .line 1039
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v8, v4

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr v1, v2

    .line 1038
    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1042
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v1, v1, v2

    and-int/2addr v1, v7

    .line 1043
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v2, v8

    .line 1044
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v2, v8

    .line 1050
    :cond_7
    int-to-long v8, v1

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v7

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int v6, v8, v6

    if-gt v2, v6, :cond_8

    .line 1054
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strategy:I

    if-eq v2, v4, :cond_8

    .line 1055
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 1059
    :cond_8
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    if-lt v2, v5, :cond_b

    .line 1062
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_start:I

    sub-int/2addr v2, v6

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    sub-int/2addr v6, v5

    invoke-virtual {p0, v2, v6}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1064
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    sub-int/2addr v6, v8

    iput v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 1068
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->max_lazy_match:I

    if-gt v6, v8, :cond_a

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-lt v6, v5, :cond_a

    .line 1069
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 1071
    :cond_9
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1073
    nop

    .line 1074
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v1, v5

    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v1, v5

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr v1, v5

    .line 1073
    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1076
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v1, v1, v5

    and-int/2addr v1, v7

    .line 1077
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v8

    iget-object v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v8, v8, v9

    aput-short v8, v5, v6

    .line 1078
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    int-to-short v8, v8

    aput-short v8, v5, v6

    .line 1082
    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    if-nez v5, :cond_9

    .line 1083
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1084
    goto :goto_1

    .line 1085
    :cond_a
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1086
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 1087
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1089
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v6

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v3, v4

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr v3, v4

    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1093
    goto :goto_1

    .line 1096
    :cond_b
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1097
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 1098
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1100
    :goto_1
    if-eqz v2, :cond_0

    .line 1102
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 1103
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    .line 1104
    return v0
.end method

.method deflate_slow(I)I
    .locals 11

    .line 1123
    const/4 v0, 0x0

    move v1, v0

    .line 1133
    :cond_0
    :goto_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x106

    if-ge v2, v6, :cond_7

    .line 1134
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->fill_window()V

    .line 1135
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-ge v2, v6, :cond_1

    if-nez p1, :cond_1

    .line 1136
    return v0

    .line 1138
    :cond_1
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_7

    .line 1139
    nop

    .line 1239
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_available:I

    if-eqz v1, :cond_2

    .line 1240
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_tally(II)Z

    .line 1241
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_available:I

    .line 1243
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 1245
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_5

    .line 1246
    if-ne p1, v1, :cond_4

    .line 1247
    move v0, v4

    return v0

    .line 1249
    :cond_4
    return v0

    .line 1252
    :cond_5
    if-ne p1, v1, :cond_6

    move v0, v5

    return v0

    :cond_6
    move v0, v3

    return v0

    .line 1145
    :cond_7
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    const v7, 0xffff

    if-lt v2, v5, :cond_8

    .line 1146
    nop

    .line 1147
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v1, v2

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v8, v4

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr v1, v2

    .line 1146
    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1149
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v1, v1, v2

    and-int/2addr v1, v7

    .line 1150
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v2, v8

    .line 1151
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v2, v8

    .line 1155
    :cond_8
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    .line 1156
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_start:I

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_match:I

    .line 1157
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 1159
    if-eqz v1, :cond_b

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->max_lazy_match:I

    if-ge v2, v8, :cond_b

    .line 1160
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v7

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int v6, v8, v6

    if-gt v2, v6, :cond_b

    .line 1165
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strategy:I

    if-eq v2, v4, :cond_9

    .line 1166
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->longest_match(I)I

    move-result v2

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 1170
    :cond_9
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    const/4 v6, 0x5

    if-gt v2, v6, :cond_b

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strategy:I

    if-eq v2, v3, :cond_a

    .line 1171
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    if-ne v2, v5, :cond_b

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_start:I

    sub-int/2addr v2, v6

    const/16 v6, 0x1000

    if-le v2, v6, :cond_b

    .line 1175
    :cond_a
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 1181
    :cond_b
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    if-lt v2, v5, :cond_e

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    if-gt v2, v6, :cond_e

    .line 1182
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    add-int/2addr v2, v6

    sub-int/2addr v2, v5

    .line 1187
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    sub-int/2addr v6, v3

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_match:I

    sub-int/2addr v6, v8

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    sub-int v5, v8, v5

    invoke-virtual {p0, v6, v5}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_tally(II)Z

    move-result v5

    .line 1193
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    sub-int/2addr v8, v3

    sub-int/2addr v6, v8

    iput v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 1194
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    .line 1196
    :cond_c
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    if-gt v6, v2, :cond_d

    .line 1197
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v1, v6

    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v8, v4

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v1, v6

    .line 1198
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr v1, v6

    .line 1197
    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1200
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v1, v1, v6

    and-int/2addr v1, v7

    .line 1201
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v6, v8

    .line 1202
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v6, v8

    .line 1204
    :cond_d
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    if-nez v6, :cond_c

    .line 1205
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_available:I

    .line 1206
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 1207
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1209
    if-eqz v5, :cond_0

    .line 1210
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 1211
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    .line 1212
    return v0

    .line 1214
    :cond_e
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_available:I

    if-eqz v2, :cond_10

    .line 1220
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    sub-int/2addr v4, v3

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_tally(II)Z

    move-result v2

    .line 1222
    if-eqz v2, :cond_f

    .line 1223
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 1225
    :cond_f
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1226
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 1227
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v2, :cond_0

    .line 1228
    return v0

    .line 1233
    :cond_10
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_available:I

    .line 1234
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1235
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 1127
    goto/16 :goto_0
.end method

.method deflate_stored(I)I
    .locals 4

    .line 806
    nop

    .line 809
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v0, v0, -0x5

    const v1, 0xffff

    if-le v1, v0, :cond_0

    .line 810
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v1, v0, -0x5

    .line 816
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_5

    .line 817
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->fill_window()V

    .line 818
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 819
    return v2

    .line 820
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-nez v0, :cond_5

    .line 821
    nop

    .line 848
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 849
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v1, :cond_3

    .line 850
    const/4 v1, 0x2

    if-ne p1, v0, :cond_8

    :goto_1
    move v2, v1

    return v2

    .line 852
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    return v2

    .line 824
    :cond_5
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 825
    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 828
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    add-int/2addr v0, v1

    .line 829
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    if-lt v3, v0, :cond_7

    .line 831
    :cond_6
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 832
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 834
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 835
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_7

    .line 836
    return v2

    .line 841
    :cond_7
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    add-int/lit16 v3, v3, -0x106

    if-lt v0, v3, :cond_0

    .line 842
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->flush_block_only(Z)V

    .line 843
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_0

    .line 844
    :cond_8
    return v2
.end method

.method fill_window()V
    .locals 9

    .line 942
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window_size:I

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    sub-int/2addr v0, v1

    .line 945
    const/16 v1, 0x106

    if-nez v0, :cond_1

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-nez v2, :cond_1

    .line 946
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    .line 947
    goto/16 :goto_2

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 950
    add-int/lit8 v0, v0, -0x1

    .line 954
    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    if-lt v2, v3, :cond_7

    .line 955
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 956
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_start:I

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_start:I

    .line 957
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 958
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    .line 966
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_size:I

    .line 967
    move v3, v2

    .line 969
    :cond_3
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 970
    iget-object v7, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    if-lt v4, v8, :cond_4

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v8

    int-to-short v4, v4

    goto :goto_0

    :cond_4
    move v4, v6

    :goto_0
    aput-short v4, v7, v3

    .line 971
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3

    .line 973
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    .line 974
    move v3, v2

    .line 976
    :cond_5
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int/2addr v4, v5

    .line 977
    iget-object v7, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    if-lt v4, v8, :cond_6

    iget v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v8

    int-to-short v4, v4

    goto :goto_1

    :cond_6
    move v4, v6

    :goto_1
    aput-short v4, v7, v3

    .line 980
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_5

    .line 981
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    add-int/2addr v0, v2

    .line 984
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v2, :cond_8

    .line 985
    return-void

    .line 998
    :cond_8
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/jzlib/ZStream;->read_buf([BII)I

    move-result v0

    .line 999
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 1002
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_9

    .line 1003
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1004
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 1008
    :cond_9
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_0

    .line 1009
    :cond_a
    return-void
.end method

.method flush_block_only(Z)V
    .locals 3

    .line 790
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->_tr_flush_block(IIZ)V

    .line 791
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    .line 792
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strm:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-virtual {p1}, Lcom/jcraft/jsch/jzlib/ZStream;->flush_pending()V

    .line 793
    return-void
.end method

.method declared-synchronized getGZIPHeader()Lcom/jcraft/jsch/jzlib/GZIPHeader;
    .locals 1

    monitor-enter p0

    .line 1758
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-nez v0, :cond_0

    .line 1759
    new-instance v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/GZIPHeader;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method init_block()V
    .locals 4

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x11e

    if-lt v1, v2, :cond_2

    .line 371
    move v1, v0

    :goto_1
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 373
    move v1, v0

    :goto_2
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 376
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    const/4 v2, 0x1

    const/16 v3, 0x200

    aput-short v2, v1, v3

    .line 377
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->static_len:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->opt_len:I

    .line 378
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->matches:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_lit:I

    .line 379
    return-void

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v3, v1, 0x2

    aput-short v0, v2, v3

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method lm_init()V
    .locals 4

    .line 326
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window_size:I

    .line 328
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_size:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-short v3, v0, v2

    .line 329
    move v0, v3

    :goto_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->hash_size:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 334
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->max_lazy:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->max_lazy_match:I

    .line 335
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->good_length:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->good_match:I

    .line 336
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->nice_length:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->nice_match:I

    .line 337
    sget-object v0, Lcom/jcraft/jsch/jzlib/Deflate;->config_table:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate$Config;->max_chain:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->max_chain_length:I

    .line 339
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 340
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->block_start:I

    .line 341
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 342
    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    iput v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_length:I

    .line 343
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_available:I

    .line 344
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->ins_h:I

    .line 345
    return-void

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->head:[S

    aput-short v3, v2, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method longest_match(I)I
    .locals 13

    .line 1256
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->max_chain_length:I

    .line 1257
    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    .line 1260
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    .line 1261
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    add-int/lit16 v4, v4, -0x106

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_size:I

    add-int/lit16 v4, v4, -0x106

    sub-int v5, v3, v4

    .line 1262
    :cond_0
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->nice_match:I

    .line 1267
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->w_mask:I

    .line 1269
    iget v6, p0, Lcom/jcraft/jsch/jzlib/Deflate;->strstart:I

    add-int/lit16 v6, v6, 0x102

    .line 1270
    iget-object v7, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int v8, v1, v2

    add-int/lit8 v9, v8, -0x1

    aget-byte v7, v7, v9

    .line 1271
    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    aget-byte v8, v9, v8

    .line 1277
    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev_length:I

    iget v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->good_match:I

    if-lt v9, v10, :cond_1

    .line 1278
    shr-int/lit8 v0, v0, 0x2

    .line 1283
    :cond_1
    iget v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-le v3, v9, :cond_2

    .line 1284
    iget v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    .line 1287
    :cond_2
    nop

    .line 1291
    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int v10, p1, v2

    aget-byte v9, v9, v10

    if-ne v9, v8, :cond_8

    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v10, v10, -0x1

    aget-byte v9, v9, v10

    if-ne v9, v7, :cond_8

    .line 1292
    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    aget-byte v9, v9, p1

    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    aget-byte v10, v10, v1

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v10, p1, 0x1

    aget-byte v9, v9, v10

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v12, v1, 0x1

    aget-byte v11, v11, v12

    if-eq v9, v11, :cond_3

    .line 1293
    goto/16 :goto_0

    .line 1300
    :cond_3
    add-int/lit8 v1, v1, 0x2

    .line 1301
    add-int/lit8 v9, v10, 0x1

    .line 1306
    :cond_4
    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    .line 1307
    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    .line 1308
    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    .line 1309
    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v10, v10, v1

    iget-object v11, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v11, v11, v9

    if-ne v10, v11, :cond_5

    .line 1310
    nop

    .line 1305
    if-lt v1, v6, :cond_4

    .line 1314
    :cond_5
    sub-int v1, v6, v1

    rsub-int v1, v1, 0x102

    .line 1315
    add-int/lit16 v9, v6, -0x102

    .line 1317
    if-le v1, v2, :cond_7

    .line 1318
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->match_start:I

    .line 1319
    nop

    .line 1320
    if-lt v1, v3, :cond_6

    .line 1321
    move v2, v1

    goto :goto_1

    .line 1322
    :cond_6
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    add-int v7, v9, v1

    add-int/lit8 v8, v7, -0x1

    aget-byte v2, v2, v8

    .line 1323
    iget-object v8, p0, Lcom/jcraft/jsch/jzlib/Deflate;->window:[B

    aget-byte v7, v8, v7

    move v8, v7

    move v7, v2

    move v2, v1

    :cond_7
    move v1, v9

    .line 1326
    :cond_8
    :goto_0
    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Deflate;->prev:[S

    and-int/2addr p1, v4

    aget-short p1, v9, p1

    const v9, 0xffff

    and-int/2addr p1, v9

    if-le p1, v5, :cond_9

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 1328
    :cond_9
    :goto_1
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    if-gt v2, p1, :cond_a

    .line 1329
    return v2

    .line 1330
    :cond_a
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->lookahead:I

    return v2
.end method

.method pqdownheap([SI)V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v0, v0, p2

    .line 389
    shl-int/lit8 v1, p2, 0x1

    .line 390
    nop

    .line 390
    :goto_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap_len:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    invoke-static {p1, v2, v3, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    add-int/lit8 v1, v1, 0x1

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->depth:[B

    invoke-static {p1, v0, v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    nop

    .line 405
    :goto_1
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aput v0, p1, p2

    .line 406
    return-void

    .line 400
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->heap:[I

    aget v3, v3, v1

    aput v3, v2, p2

    .line 401
    nop

    .line 403
    shl-int/lit8 p2, v1, 0x1

    move v5, v1

    move v1, p2

    move p2, v5

    goto :goto_0
.end method

.method final putShortMSB(I)V
    .locals 1

    .line 580
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 581
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 582
    return-void
.end method

.method final put_byte(B)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    .line 572
    return-void
.end method

.method final put_byte([BII)V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->pending:I

    .line 568
    return-void
.end method

.method final put_short(I)V
    .locals 1

    .line 575
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 576
    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 577
    return-void
.end method

.method scan_tree([SI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 420
    nop

    .line 422
    const/4 v2, 0x1

    aget-short v3, p1, v2

    .line 423
    nop

    .line 424
    nop

    .line 425
    nop

    .line 427
    const/4 v4, 0x3

    const/16 v5, 0x8a

    const/4 v6, 0x7

    const/4 v7, 0x4

    if-nez v3, :cond_0

    .line 428
    nop

    .line 429
    move v8, v5

    move v9, v4

    goto :goto_0

    :cond_0
    move v8, v6

    move v9, v7

    .line 431
    :goto_0
    add-int v10, v1, v2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v2

    const/4 v11, -0x1

    aput-short v11, p1, v10

    .line 433
    const/4 v10, 0x0

    move v12, v8

    move v13, v9

    move v8, v3

    move v9, v10

    move v3, v9

    :goto_1
    if-le v3, v1, :cond_1

    .line 462
    return-void

    .line 434
    :cond_1
    nop

    .line 435
    add-int v14, v3, v2

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v2

    aget-short v14, p1, v14

    .line 436
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x6

    if-ge v9, v12, :cond_2

    if-ne v8, v14, :cond_2

    .line 437
    goto :goto_5

    .line 438
    :cond_2
    if-ge v9, v13, :cond_3

    .line 439
    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v12, v8, 0x2

    aget-short v13, v11, v12

    int-to-short v9, v9

    add-int/2addr v9, v13

    int-to-short v9, v9

    aput-short v9, v11, v12

    .line 440
    goto :goto_2

    :cond_3
    if-eqz v8, :cond_5

    .line 441
    if-eq v8, v11, :cond_4

    .line 442
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v11, v8, 0x2

    aget-short v12, v9, v11

    add-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, v9, v11

    .line 443
    :cond_4
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    const/16 v11, 0x20

    aget-short v12, v9, v11

    add-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, v9, v11

    .line 444
    goto :goto_2

    :cond_5
    const/16 v11, 0xa

    if-gt v9, v11, :cond_6

    .line 445
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    const/16 v11, 0x22

    aget-short v12, v9, v11

    add-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, v9, v11

    .line 446
    goto :goto_2

    .line 447
    :cond_6
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    const/16 v11, 0x24

    aget-short v12, v9, v11

    add-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, v9, v11

    .line 449
    :goto_2
    nop

    .line 450
    nop

    .line 451
    if-nez v14, :cond_7

    .line 452
    nop

    .line 453
    nop

    .line 454
    move v9, v10

    move v12, v5

    :goto_3
    move v13, v4

    :goto_4
    move v11, v8

    goto :goto_5

    :cond_7
    if-ne v8, v14, :cond_8

    .line 455
    nop

    .line 456
    nop

    .line 457
    move v9, v10

    move v12, v15

    goto :goto_3

    .line 458
    :cond_8
    nop

    .line 459
    move v9, v10

    move v12, v6

    move v13, v7

    goto :goto_4

    .line 433
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v8, v14

    goto :goto_1
.end method

.method send_all_trees(III)V
    .locals 3

    .line 497
    add-int/lit16 v0, p1, -0x101

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 498
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 499
    const/4 v0, 0x4

    sub-int v1, p3, v0

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 500
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    .line 503
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p3, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_tree([SI)V

    .line 504
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/jzlib/Deflate;->send_tree([SI)V

    .line 505
    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lcom/jcraft/jsch/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method send_bits(II)V
    .locals 3

    .line 590
    nop

    .line 591
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v1, p2, 0x10

    const v2, 0xffff

    if-le v0, v1, :cond_0

    .line 592
    nop

    .line 594
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    shl-int v1, p1, v1

    and-int/2addr v1, v2

    int-to-short v1, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    .line 595
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_short(I)V

    .line 596
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v0, v0, 0x10

    ushr-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    .line 597
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    add-int/lit8 p2, p2, -0x10

    add-int/2addr p1, p2

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    .line 598
    return-void

    .line 600
    :cond_0
    iget-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    iget v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    shl-int/2addr p1, v1

    and-int/2addr p1, v2

    int-to-short p1, p1

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    .line 601
    iget p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    .line 603
    return-void
.end method

.method final send_code(I[S)V
    .locals 2

    .line 585
    mul-int/lit8 p1, p1, 0x2

    .line 586
    aget-short v0, p2, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-short p1, p2, p1

    and-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 587
    return-void
.end method

.method send_tree([SI)V
    .locals 16

    move-object/from16 v0, p0

    .line 513
    nop

    .line 515
    const/4 v1, 0x1

    aget-short v2, p1, v1

    .line 516
    nop

    .line 517
    nop

    .line 518
    nop

    .line 520
    const/4 v3, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x4

    if-nez v2, :cond_0

    .line 521
    nop

    .line 522
    const/16 v7, 0x8a

    move v8, v3

    goto :goto_0

    :cond_0
    move v7, v5

    move v8, v6

    .line 525
    :goto_0
    const/4 v9, -0x1

    const/4 v10, 0x0

    move/from16 v13, p2

    move v11, v7

    move v12, v8

    move v7, v2

    move v8, v10

    move v2, v8

    :goto_1
    if-le v2, v13, :cond_1

    .line 561
    return-void

    .line 526
    :cond_1
    nop

    .line 527
    add-int v14, v2, v1

    const/4 v4, 0x2

    mul-int/2addr v14, v4

    add-int/2addr v14, v1

    aget-short v14, p1, v14

    .line 528
    add-int/lit8 v8, v8, 0x1

    const/4 v15, 0x6

    if-ge v8, v11, :cond_2

    if-ne v7, v14, :cond_2

    .line 529
    goto :goto_5

    .line 530
    :cond_2
    if-ge v8, v12, :cond_4

    .line 532
    :cond_3
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {v0, v7, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 533
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_3

    .line 534
    goto :goto_2

    :cond_4
    if-eqz v7, :cond_6

    .line 535
    if-eq v7, v9, :cond_5

    .line 536
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    invoke-virtual {v0, v7, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 537
    add-int/lit8 v8, v8, -0x1

    .line 539
    :cond_5
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    const/16 v11, 0x10

    invoke-virtual {v0, v11, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 540
    sub-int/2addr v8, v3

    invoke-virtual {v0, v8, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 541
    goto :goto_2

    :cond_6
    const/16 v4, 0xa

    if-gt v8, v4, :cond_7

    .line 542
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    const/16 v9, 0x11

    invoke-virtual {v0, v9, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 543
    sub-int v4, v8, v3

    invoke-virtual {v0, v4, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 544
    goto :goto_2

    .line 545
    :cond_7
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    const/16 v9, 0x12

    invoke-virtual {v0, v9, v4}, Lcom/jcraft/jsch/jzlib/Deflate;->send_code(I[S)V

    .line 546
    add-int/lit8 v4, v8, -0xb

    invoke-virtual {v0, v4, v5}, Lcom/jcraft/jsch/jzlib/Deflate;->send_bits(II)V

    .line 548
    :goto_2
    nop

    .line 549
    nop

    .line 550
    if-nez v14, :cond_8

    .line 551
    nop

    .line 552
    nop

    .line 553
    move v8, v10

    const/16 v11, 0x8a

    :goto_3
    move v12, v3

    :goto_4
    move v9, v7

    goto :goto_5

    :cond_8
    if-ne v7, v14, :cond_9

    .line 554
    nop

    .line 555
    nop

    .line 556
    move v8, v10

    move v11, v15

    goto :goto_3

    .line 557
    :cond_9
    nop

    .line 558
    move v8, v10

    move v11, v5

    move v12, v6

    goto :goto_4

    .line 525
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v7, v14

    goto :goto_1
.end method

.method set_data_type()V
    .locals 6

    .line 725
    nop

    .line 726
    nop

    .line 727
    nop

    .line 728
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 728
    :goto_0
    const/4 v3, 0x7

    if-lt v1, v3, :cond_3

    .line 732
    move v3, v0

    .line 732
    :goto_1
    const/16 v4, 0x80

    if-lt v1, v4, :cond_2

    .line 736
    nop

    .line 736
    :goto_2
    const/16 v4, 0x100

    if-lt v1, v4, :cond_1

    .line 740
    ushr-int/lit8 v1, v3, 0x2

    const/4 v3, 0x1

    if-le v2, v1, :cond_0

    goto :goto_3

    :cond_0
    move v0, v3

    :goto_3
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->data_type:B

    .line 741
    return-void

    .line 737
    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v1, 0x2

    aget-short v4, v4, v5

    add-int/2addr v2, v4

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 733
    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v1, 0x2

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 729
    :cond_3
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v1, 0x2

    aget-short v3, v3, v4

    add-int/2addr v2, v3

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method tr_init()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_ltree:[S

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 351
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->l_desc:Lcom/jcraft/jsch/jzlib/Tree;

    sget-object v1, Lcom/jcraft/jsch/jzlib/StaticTree;->static_l_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 353
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->dyn_dtree:[S

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 354
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->d_desc:Lcom/jcraft/jsch/jzlib/Tree;

    sget-object v1, Lcom/jcraft/jsch/jzlib/StaticTree;->static_d_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 356
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_desc:Lcom/jcraft/jsch/jzlib/Tree;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_tree:[S

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->dyn_tree:[S

    .line 357
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bl_desc:Lcom/jcraft/jsch/jzlib/Tree;

    sget-object v1, Lcom/jcraft/jsch/jzlib/StaticTree;->static_bl_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/Tree;->stat_desc:Lcom/jcraft/jsch/jzlib/StaticTree;

    .line 359
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_buf:S

    .line 360
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->bi_valid:I

    .line 361
    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Deflate;->last_eob_len:I

    .line 364
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Deflate;->init_block()V

    .line 365
    return-void
.end method
