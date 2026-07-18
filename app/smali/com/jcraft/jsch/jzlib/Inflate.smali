.class final Lcom/jcraft/jsch/jzlib/Inflate;
.super Ljava/lang/Object;
.source "Inflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/jzlib/Inflate$Return;
    }
.end annotation


# static fields
.field private static final BAD:I = 0xd

.field private static final BLOCKS:I = 0x7

.field private static final CHECK1:I = 0xb

.field private static final CHECK2:I = 0xa

.field private static final CHECK3:I = 0x9

.field private static final CHECK4:I = 0x8

.field private static final COMMENT:I = 0x15

.field private static final DICT0:I = 0x6

.field private static final DICT1:I = 0x5

.field private static final DICT2:I = 0x4

.field private static final DICT3:I = 0x3

.field private static final DICT4:I = 0x2

.field private static final DONE:I = 0xc

.field private static final EXLEN:I = 0x12

.field private static final EXTRA:I = 0x13

.field private static final FLAG:I = 0x1

.field private static final FLAGS:I = 0x17

.field private static final HCRC:I = 0x16

.field private static final HEAD:I = 0xe

.field static final INFLATE_ANY:I = 0x40000000

.field private static final LENGTH:I = 0xf

.field private static final MAX_WBITS:I = 0xf

.field private static final METHOD:I = 0x0

.field private static final NAME:I = 0x14

.field private static final OS:I = 0x11

.field private static final PRESET_DICT:I = 0x20

.field private static final TIME:I = 0x10

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field static final Z_FINISH:I = 0x4

.field static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static mark:[B


# instance fields
.field blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

.field private crcbuf:[B

.field private flags:I

.field gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

.field marker:I

.field method:I

.field mode:I

.field need:J

.field private need_bytes:I

.field private tmp_string:Ljava/io/ByteArrayOutputStream;

.field was:J

.field wbits:I

.field wrap:I

.field private final z:Lcom/jcraft/jsch/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 619
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/jzlib/Inflate;->mark:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->was:J

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->crcbuf:[B

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 717
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 140
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 141
    return-void
.end method

.method private checksum(IJ)V
    .locals 5

    .line 762
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    .line 766
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object p2, p2, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->crcbuf:[B

    invoke-interface {p2, p3, v0, p1}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 767
    return-void

    .line 763
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->crcbuf:[B

    const-wide/16 v3, 0xff

    and-long/2addr v3, p2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 764
    const/16 v2, 0x8

    shr-long/2addr p2, v2

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readBytes(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/Inflate$Return;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 745
    nop

    .line 745
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 758
    return p1

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_2

    .line 747
    new-instance p2, Lcom/jcraft/jsch/jzlib/Inflate$Return;

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/jzlib/Inflate$Return;-><init>(I)V

    throw p2

    .line 749
    :cond_2
    nop

    .line 750
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 751
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, p1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 752
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object p1, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte p1, p1, v0

    .line 753
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 754
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object p1, p1, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    invoke-interface {p1, v0, v2, v1}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 755
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 756
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    move p1, p2

    goto :goto_0
.end method

.method private readBytes(III)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/Inflate$Return;
        }
    .end annotation

    .line 685
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 686
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    .line 687
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 689
    nop

    .line 689
    :cond_0
    :goto_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    if-gtz v0, :cond_3

    .line 699
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 700
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 701
    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    .line 702
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 704
    :cond_2
    :goto_1
    iput v1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    .line 705
    return p2

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_4

    .line 691
    new-instance p1, Lcom/jcraft/jsch/jzlib/Inflate$Return;

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/jzlib/Inflate$Return;-><init>(I)V

    throw p1

    .line 693
    :cond_4
    nop

    .line 694
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, p2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 695
    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, p2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 696
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object p2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object p2, p2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte p2, p2, v4

    and-int/lit16 p2, p2, 0xff

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x8

    shl-int/2addr p2, v0

    int-to-long v4, p2

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 697
    iget p2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    move p2, p3

    goto :goto_0
.end method

.method private readString(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/Inflate$Return;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 723
    :cond_0
    nop

    .line 725
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_1

    .line 726
    new-instance p2, Lcom/jcraft/jsch/jzlib/Inflate$Return;

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/jzlib/Inflate$Return;-><init>(I)V

    throw p2

    .line 728
    :cond_1
    nop

    .line 729
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 730
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, p1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 731
    iget-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object p1, p1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte p1, p1, v0

    .line 732
    if-eqz p1, :cond_2

    .line 733
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    invoke-interface {v0, v2, v3, v1}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 735
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 736
    if-nez p1, :cond_3

    .line 737
    return p2

    :cond_3
    move p1, p2

    goto :goto_0
.end method


# virtual methods
.method getGZIPHeader()Lcom/jcraft/jsch/jzlib/GZIPHeader;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    return-object v0
.end method

.method inParsingHeader()Z
    .locals 3

    .line 774
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 790
    :pswitch_0
    return v2

    .line 788
    :pswitch_1
    move v2, v1

    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method inflate(I)I
    .locals 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 192
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x4

    if-eqz v3, :cond_37

    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    if-nez v3, :cond_0

    goto/16 :goto_10

    .line 198
    :cond_0
    const/4 v3, -0x5

    if-ne v2, v9, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 199
    :goto_0
    nop

    .line 202
    :goto_1
    iget v10, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    const v12, 0xffff

    const/4 v13, 0x0

    const-wide/32 v17, 0xffff

    const-wide/16 v19, 0xff

    const/4 v15, 0x5

    const-wide/32 v21, 0xff00

    const/16 v14, 0x8

    const-wide/32 v23, 0xff0000

    const/16 v6, 0x10

    const-wide v25, 0xff000000L

    const/16 v16, 0x18

    const-wide/16 v27, 0x1

    const/16 v11, 0xd

    packed-switch v10, :pswitch_data_0

    .line 586
    goto/16 :goto_11

    .line 443
    :pswitch_0
    :try_start_0
    invoke-direct {v1, v4, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(III)I

    move-result v3
    :try_end_0
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    nop

    .line 448
    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    long-to-int v7, v7

    and-int/2addr v7, v12

    iput v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    .line 450
    iget v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v7, v7, 0xff

    if-eq v7, v14, :cond_2

    .line 451
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "unknown compression method"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 452
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 453
    goto :goto_1

    .line 455
    :cond_2
    iget v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    const v8, 0xe000

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 456
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "unknown header flags set"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 457
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 458
    goto :goto_1

    .line 461
    :cond_3
    iget v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_4

    .line 462
    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    invoke-direct {v1, v4, v7, v8}, Lcom/jcraft/jsch/jzlib/Inflate;->checksum(IJ)V

    .line 465
    :cond_4
    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    goto :goto_2

    :catch_0
    move-exception v0

    .line 445
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 469
    :goto_2
    :pswitch_1
    :try_start_1
    invoke-direct {v1, v9, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(III)I

    move-result v3
    :try_end_1
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_1 .. :try_end_1} :catch_7

    .line 470
    nop

    .line 473
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_5

    .line 474
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    invoke-virtual {v6, v7, v8}, Lcom/jcraft/jsch/jzlib/GZIPHeader;->setModifiedTime(J)V

    .line 476
    :cond_5
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_6

    .line 477
    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    invoke-direct {v1, v9, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->checksum(IJ)V

    .line 479
    :cond_6
    const/16 v6, 0x11

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 482
    :pswitch_2
    :try_start_2
    invoke-direct {v1, v4, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(III)I

    move-result v3
    :try_end_2
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_2 .. :try_end_2} :catch_6

    .line 483
    nop

    .line 486
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_7

    .line 487
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->xflags:I

    .line 488
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    long-to-int v7, v7

    shr-int/2addr v7, v14

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->os:I

    .line 490
    :cond_7
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_8

    .line 491
    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    invoke-direct {v1, v4, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->checksum(IJ)V

    .line 493
    :cond_8
    const/16 v6, 0x12

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 495
    :pswitch_3
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_a

    .line 497
    :try_start_3
    invoke-direct {v1, v4, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(III)I

    move-result v3
    :try_end_3
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_3 .. :try_end_3} :catch_1

    .line 498
    nop

    .line 501
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_9

    .line 502
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    long-to-int v7, v7

    and-int/2addr v7, v12

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    .line 504
    :cond_9
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_b

    .line 505
    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    invoke-direct {v1, v4, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->checksum(IJ)V

    .line 507
    goto :goto_3

    :catch_1
    move-exception v0

    .line 499
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    :cond_a
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_b

    .line 508
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iput-object v13, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    .line 510
    :cond_b
    :goto_3
    const/16 v6, 0x13

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 513
    :pswitch_4
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_d

    .line 515
    :try_start_4
    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(II)I

    move-result v3

    .line 516
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_e

    .line 517
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 518
    iput-object v13, v1, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 519
    array-length v7, v6

    iget-object v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-object v8, v8, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    array-length v8, v8

    if-ne v7, v8, :cond_c

    .line 520
    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-object v7, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    array-length v8, v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    goto :goto_4

    .line 522
    :cond_c
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "bad extra field length"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 523
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I
    :try_end_4
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_4 .. :try_end_4} :catch_2

    .line 524
    goto/16 :goto_1

    .line 527
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 527
    nop

    .line 528
    iget v4, v1, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 530
    :cond_d
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_e

    .line 531
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iput-object v13, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    .line 533
    :cond_e
    :goto_4
    const/16 v6, 0x14

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 535
    :pswitch_5
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_10

    .line 537
    :try_start_5
    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readString(II)I

    move-result v3

    .line 538
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_f

    .line 539
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    .line 541
    :cond_f
    iput-object v13, v1, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;
    :try_end_5
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_5 .. :try_end_5} :catch_3

    .line 542
    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 543
    iget v4, v1, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 545
    :cond_10
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_11

    .line 546
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iput-object v13, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    .line 548
    :cond_11
    :goto_5
    const/16 v6, 0x15

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 550
    :pswitch_6
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_13

    .line 552
    :try_start_6
    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readString(II)I

    move-result v3

    .line 553
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_12

    .line 554
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    .line 556
    :cond_12
    iput-object v13, v1, Lcom/jcraft/jsch/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;
    :try_end_6
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_6 .. :try_end_6} :catch_4

    .line 557
    goto :goto_6

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 558
    iget v4, v1, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 560
    :cond_13
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_14

    .line 561
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iput-object v13, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    .line 563
    :cond_14
    :goto_6
    const/16 v6, 0x16

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 565
    :pswitch_7
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_16

    .line 567
    :try_start_7
    invoke-direct {v1, v4, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(III)I

    move-result v3
    :try_end_7
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_7 .. :try_end_7} :catch_5

    .line 568
    nop

    .line 571
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v6, :cond_15

    .line 572
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    and-long v7, v7, v17

    long-to-int v7, v7

    iput v7, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->hcrc:I

    .line 574
    :cond_15
    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v8, v8, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v8}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v12

    and-long v12, v12, v17

    cmp-long v6, v6, v12

    if-eqz v6, :cond_16

    .line 575
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 576
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "header crc mismatch"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 577
    iput v15, v1, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 578
    goto/16 :goto_1

    :catch_5
    move-exception v0

    .line 569
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 581
    :cond_16
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    new-instance v7, Lcom/jcraft/jsch/jzlib/CRC32;

    invoke-direct {v7}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 583
    const/4 v6, 0x7

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 584
    goto/16 :goto_1

    :catch_6
    move-exception v0

    .line 484
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    :catch_7
    move-exception v0

    .line 471
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 204
    :pswitch_8
    iget v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-nez v7, :cond_17

    .line 205
    const/4 v6, 0x7

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 206
    goto/16 :goto_1

    .line 210
    :cond_17
    :try_start_8
    invoke-direct {v1, v4, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(III)I

    move-result v3
    :try_end_8
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_8 .. :try_end_8} :catch_8

    .line 211
    nop

    .line 215
    iget v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-eq v7, v9, :cond_18

    iget v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_1b

    :cond_18
    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    const-wide/32 v12, 0x8b1f

    cmp-long v7, v7, v12

    if-nez v7, :cond_1b

    .line 216
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-ne v6, v9, :cond_19

    .line 217
    iput v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    .line 219
    :cond_19
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    new-instance v7, Lcom/jcraft/jsch/jzlib/CRC32;

    invoke-direct {v7}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 220
    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    invoke-direct {v1, v4, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->checksum(IJ)V

    .line 222
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-nez v6, :cond_1a

    .line 223
    new-instance v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    invoke-direct {v6}, Lcom/jcraft/jsch/jzlib/GZIPHeader;-><init>()V

    iput-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 225
    :cond_1a
    const/16 v6, 0x17

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 226
    goto/16 :goto_1

    .line 229
    :cond_1b
    iget v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_1c

    .line 230
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 231
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "incorrect header check"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 232
    goto/16 :goto_1

    .line 235
    :cond_1c
    const/4 v7, 0x0

    iput v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    .line 237
    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->method:I

    .line 238
    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    shr-long/2addr v7, v14

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    .line 240
    iget v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_1d

    .line 241
    iget v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->method:I

    shl-int/2addr v8, v14

    add-int/2addr v8, v7

    rem-int/lit8 v8, v8, 0x1f

    if-eqz v8, :cond_1f

    :cond_1d
    iget v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->method:I

    const/16 v10, 0xf

    and-int/2addr v8, v10

    if-eq v8, v14, :cond_1f

    .line 242
    iget v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-ne v6, v9, :cond_1e

    .line 243
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v7, v4

    iput v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 244
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    add-int/2addr v7, v4

    iput v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 245
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    const-wide/16 v10, 0x2

    sub-long/2addr v7, v10

    iput-wide v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 246
    const/4 v6, 0x0

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    .line 247
    const/4 v6, 0x7

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 248
    goto/16 :goto_1

    .line 250
    :cond_1e
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 251
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "incorrect header check"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 256
    goto/16 :goto_1

    .line 259
    :cond_1f
    iget v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->method:I

    const/16 v10, 0xf

    and-int/2addr v8, v10

    if-eq v8, v14, :cond_20

    .line 260
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 261
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "unknown compression method"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 266
    goto/16 :goto_1

    .line 269
    :cond_20
    iget v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-ne v8, v9, :cond_21

    .line 270
    iput v5, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    .line 273
    :cond_21
    iget v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->method:I

    shr-int/2addr v8, v9

    add-int/2addr v8, v14

    iget v10, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wbits:I

    if-le v8, v10, :cond_22

    .line 274
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 275
    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "invalid window size"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 280
    goto/16 :goto_1

    .line 283
    :cond_22
    iget-object v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    new-instance v10, Lcom/jcraft/jsch/jzlib/Adler32;

    invoke-direct {v10}, Lcom/jcraft/jsch/jzlib/Adler32;-><init>()V

    iput-object v10, v8, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 285
    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_23

    .line 286
    const/4 v6, 0x7

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 287
    goto/16 :goto_1

    .line 289
    :cond_23
    iput v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    goto/16 :goto_c

    :catch_8
    move-exception v0

    .line 212
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 439
    :pswitch_9
    const/4 v4, -0x3

    return v4

    :pswitch_a
    move v4, v3

    goto/16 :goto_8

    :pswitch_b
    move v4, v3

    goto/16 :goto_7

    .line 334
    :pswitch_c
    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v7, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->proc(I)I

    move-result v3

    .line 335
    const/4 v7, -0x3

    if-ne v3, v7, :cond_24

    .line 336
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 337
    const/4 v6, 0x0

    iput v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 338
    goto/16 :goto_1

    .line 340
    :cond_24
    if-nez v3, :cond_25

    .line 341
    move v3, v2

    .line 343
    :cond_25
    if-eq v3, v5, :cond_26

    .line 344
    move v4, v3

    return v4

    .line 346
    :cond_26
    nop

    .line 347
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v3}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->was:J

    .line 348
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->reset()V

    .line 349
    iget v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-nez v3, :cond_27

    .line 350
    const/16 v3, 0xc

    iput v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 351
    move v3, v2

    goto/16 :goto_1

    .line 353
    :cond_27
    iput v14, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v3, v2

    .line 355
    :pswitch_d
    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v7, :cond_28

    .line 356
    move v4, v3

    return v4

    .line 357
    :cond_28
    nop

    .line 359
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v7, v5

    iput v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 360
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v7, v7, v27

    iput-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 361
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v8, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int v10, v8, v5

    iput v10, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v16

    int-to-long v7, v3

    and-long v7, v7, v25

    iput-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 362
    const/16 v3, 0x9

    iput v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v3, v2

    .line 364
    :pswitch_e
    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v7, :cond_29

    .line 365
    move v4, v3

    return v4

    .line 366
    :cond_29
    nop

    .line 368
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v7, v5

    iput v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 369
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v7, v7, v27

    iput-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 370
    iget-wide v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v10, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v12, v10, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int v4, v12, v5

    iput v4, v10, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v12

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    int-to-long v3, v3

    and-long v3, v3, v23

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 371
    const/16 v3, 0xa

    iput v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v4, v2

    .line 373
    :goto_7
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_2a

    .line 374
    return v4

    .line 375
    :cond_2a
    nop

    .line 377
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 378
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v6, v6, v27

    iput-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 379
    iget-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v8, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int v10, v8, v5

    iput v10, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v14

    int-to-long v6, v6

    and-long v6, v6, v21

    add-long/2addr v3, v6

    iput-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 380
    const/16 v3, 0xb

    iput v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v4, v2

    .line 382
    :goto_8
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_2b

    .line 383
    return v4

    .line 384
    :cond_2b
    nop

    .line 386
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 387
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v6, v6, v27

    iput-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 388
    iget-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v8, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int v10, v8, v5

    iput v10, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v8

    int-to-long v6, v6

    and-long v6, v6, v19

    add-long/2addr v3, v6

    iput-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 390
    iget v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    if-eqz v3, :cond_2c

    .line 391
    iget-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    const-wide/32 v6, -0x1000000

    and-long/2addr v3, v6

    shr-long v3, v3, v16

    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    and-long v6, v6, v23

    shr-long/2addr v6, v14

    or-long/2addr v3, v6

    .line 392
    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    and-long v6, v6, v21

    shl-long/2addr v6, v14

    or-long/2addr v3, v6

    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    and-long v6, v6, v17

    shl-long v6, v6, v16

    or-long/2addr v3, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    .line 391
    iput-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 395
    :cond_2c
    iget-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->was:J

    long-to-int v3, v3

    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    long-to-int v4, v6

    if-eq v3, v4, :cond_2d

    .line 396
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v4, "incorrect data check"

    iput-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 401
    goto :goto_9

    :cond_2d
    iget v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    if-eqz v3, :cond_2e

    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    if-eqz v3, :cond_2e

    .line 402
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->gheader:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iput-wide v6, v3, Lcom/jcraft/jsch/jzlib/GZIPHeader;->crc:J

    .line 405
    :cond_2e
    :goto_9
    const/16 v3, 0xf

    iput v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v3, v2

    .line 407
    :pswitch_f
    iget v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-eqz v4, :cond_31

    iget v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->flags:I

    if-eqz v4, :cond_31

    .line 410
    :try_start_9
    invoke-direct {v1, v9, v3, v2}, Lcom/jcraft/jsch/jzlib/Inflate;->readBytes(III)I

    move-result v3
    :try_end_9
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_9 .. :try_end_9} :catch_9

    .line 411
    nop

    .line 415
    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    if-eqz v4, :cond_2f

    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    const-string v6, "incorrect data check"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 416
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 417
    iput v15, v1, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 418
    goto :goto_a

    .line 421
    :cond_2f
    iget-wide v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v14, v4, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    cmp-long v4, v6, v14

    if-eqz v4, :cond_30

    .line 422
    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v6, "incorrect length check"

    iput-object v6, v4, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 423
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 424
    goto :goto_a

    .line 426
    :cond_30
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput-object v13, v2, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 427
    goto :goto_b

    :catch_9
    move-exception v0

    .line 412
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->r:I

    return v4

    .line 428
    :cond_31
    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    if-eqz v4, :cond_32

    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    const-string v6, "incorrect data check"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 429
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 430
    iput v15, v1, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 431
    :goto_a
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 435
    :cond_32
    :goto_b
    const/16 v2, 0xc

    iput v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 437
    :pswitch_10
    move v4, v5

    return v4

    .line 329
    :pswitch_11
    iput v11, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 330
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v3, "need dictionary"

    iput-object v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 331
    const/4 v4, 0x0

    iput v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 332
    goto/16 :goto_11

    :pswitch_12
    move v4, v3

    goto/16 :goto_f

    :pswitch_13
    move v4, v3

    goto :goto_e

    :pswitch_14
    move v4, v3

    goto :goto_d

    :goto_c
    :pswitch_15
    move v4, v3

    .line 291
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_33

    .line 292
    return v4

    .line 293
    :cond_33
    nop

    .line 295
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 296
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v7, v7, v27

    iput-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 297
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int v8, v7, v5

    iput v8, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v16

    int-to-long v3, v3

    and-long v3, v3, v25

    iput-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 298
    const/4 v3, 0x3

    iput v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v4, v2

    .line 300
    :goto_d
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_34

    .line 301
    return v4

    .line 302
    :cond_34
    nop

    .line 304
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 305
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v7, v7, v27

    iput-wide v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 306
    iget-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v8, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v10, v8, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int v11, v10, v5

    iput v11, v8, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0xff

    shl-int v6, v7, v6

    int-to-long v6, v6

    and-long v6, v6, v23

    add-long/2addr v3, v6

    iput-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 307
    iput v9, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v4, v2

    .line 309
    :goto_e
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_35

    .line 310
    return v4

    .line 311
    :cond_35
    nop

    .line 313
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 314
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v6, v6, v27

    iput-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 315
    iget-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v7, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v8, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int v9, v8, v5

    iput v9, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v14

    int-to-long v6, v6

    and-long v6, v6, v21

    add-long/2addr v3, v6

    iput-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 316
    iput v15, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    move v4, v2

    .line 318
    :goto_f
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v2, :cond_36

    .line 319
    return v4

    .line 320
    :cond_36
    nop

    .line 322
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v3, v5

    iput v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 323
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    add-long v3, v3, v27

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 324
    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    iget-object v4, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v6, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    add-int/2addr v5, v7

    iput v5, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v7

    int-to-long v4, v4

    and-long v4, v4, v19

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    .line 325
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    iget-wide v3, v1, Lcom/jcraft/jsch/jzlib/Inflate;->need:J

    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/jzlib/Checksum;->reset(J)V

    .line 326
    const/4 v2, 0x6

    iput v2, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 327
    const/4 v4, 0x2

    return v4

    :cond_37
    :goto_10
    const/4 v4, 0x0

    .line 193
    if-ne v2, v9, :cond_38

    iget v1, v1, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_38

    .line 194
    return v4

    .line 195
    :cond_38
    :goto_11
    const/4 v4, -0x2

    return v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method inflateEnd()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->free()V

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method inflateInit(I)I
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    .line 149
    const/4 v2, 0x1

    const/16 v3, 0xf

    if-gez p1, :cond_0

    .line 150
    neg-int p1, p1

    .line 151
    goto :goto_0

    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p1

    const/16 v5, 0x30

    const/4 v6, 0x4

    if-eqz v4, :cond_1

    .line 152
    iput v6, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    .line 153
    const v4, -0x40000001    # -1.9999999f

    and-int/2addr p1, v4

    .line 154
    if-ge p1, v5, :cond_3

    .line 155
    and-int/2addr p1, v3

    .line 156
    goto :goto_0

    :cond_1
    and-int/lit8 v4, p1, -0x20

    if-eqz v4, :cond_2

    .line 157
    iput v6, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    .line 158
    and-int/2addr p1, v3

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    shr-int v4, p1, v6

    add-int/2addr v4, v2

    iput v4, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    .line 161
    if-ge p1, v5, :cond_3

    .line 162
    and-int/2addr p1, v3

    .line 165
    :cond_3
    :goto_0
    const/4 v4, -0x2

    const/16 v5, 0x8

    if-lt p1, v5, :cond_6

    if-le p1, v3, :cond_4

    goto :goto_1

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wbits:I

    if-eq v3, p1, :cond_5

    .line 170
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->free()V

    .line 171
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 175
    :cond_5
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wbits:I

    .line 177
    new-instance v1, Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    shl-int p1, v2, p1

    invoke-direct {v1, v3, p1}, Lcom/jcraft/jsch/jzlib/InfBlocks;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;I)V

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 180
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateReset()I

    .line 182
    move v4, v0

    return v4

    .line 166
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateEnd()I

    .line 167
    return v4
.end method

.method inflateReset()I
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    .line 122
    return v2

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    iput-wide v3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 125
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 126
    const/16 v0, 0xe

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->need_bytes:I

    .line 128
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->reset()V

    .line 129
    move v2, v1

    return v2
.end method

.method inflateSetDictionary([BI)I
    .locals 8

    .line 592
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, -0x3

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    if-eqz v0, :cond_0

    return v3

    .line 596
    :cond_0
    nop

    .line 597
    nop

    .line 599
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    if-ne v0, v4, :cond_1

    .line 600
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v3

    .line 601
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 602
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0, p1, v2, p2}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 603
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    .line 604
    move v3, v1

    return v3

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 610
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wbits:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-lt p2, v0, :cond_2

    .line 611
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->wbits:I

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 612
    sub-int/2addr p2, v0

    move v7, v0

    move v0, p2

    move p2, v7

    goto :goto_0

    :cond_2
    move v0, v2

    .line 614
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v1, p1, v0, p2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->set_dictionary([BII)V

    .line 615
    const/4 p1, 0x7

    iput p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 616
    move v3, v2

    return v3

    .line 593
    :cond_3
    return v3
.end method

.method inflateSync()I
    .locals 11

    .line 628
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, -0x3

    const/4 v2, -0x5

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-nez v0, :cond_0

    .line 629
    return v4

    .line 630
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    const/16 v4, 0xd

    if-eq v0, v4, :cond_1

    .line 631
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 632
    iput v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_2

    .line 635
    move v4, v2

    return v4

    .line 637
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 638
    iget v4, p0, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 640
    nop

    .line 640
    :goto_0
    const/4 v5, 0x4

    if-eqz v0, :cond_6

    if-lt v4, v5, :cond_3

    goto :goto_2

    .line 641
    :cond_3
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    aget-byte v6, v6, v2

    sget-object v7, Lcom/jcraft/jsch/jzlib/Inflate;->mark:[B

    aget-byte v7, v7, v4

    if-ne v6, v7, :cond_4

    .line 642
    add-int/lit8 v4, v4, 0x1

    .line 643
    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    aget-byte v6, v6, v2

    if-eqz v6, :cond_5

    .line 644
    nop

    .line 645
    move v4, v3

    goto :goto_1

    .line 646
    :cond_5
    sub-int v4, v5, v4

    .line 648
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 649
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 653
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v9, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v9, v9, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v9, v2, v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 654
    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 655
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 656
    iput v4, p0, Lcom/jcraft/jsch/jzlib/Inflate;->marker:I

    .line 659
    if-eq v4, v5, :cond_7

    .line 660
    move v4, v1

    return v4

    .line 662
    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 663
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v4, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    .line 664
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Inflate;->inflateReset()I

    .line 665
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput-wide v0, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 666
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput-wide v4, v0, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    .line 667
    const/4 v0, 0x7

    iput v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->mode:I

    .line 669
    move v4, v3

    return v4
.end method

.method inflateSyncPoint()I
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    if-nez v0, :cond_0

    return v1

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->blocks:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->sync_point()I

    move-result v1

    return v1

    .line 680
    :cond_1
    return v1
.end method
