.class final Lcom/jcraft/jsch/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field private static final BAD:I = 0x9

.field private static final BTREE:I = 0x4

.field private static final CODES:I = 0x6

.field private static final DONE:I = 0x8

.field private static final DRY:I = 0x7

.field private static final DTREE:I = 0x5

.field private static final LENS:I = 0x1

.field private static final MANY:I = 0x5a0

.field private static final STORED:I = 0x2

.field private static final TABLE:I = 0x3

.field private static final TYPE:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field static final border:[I

.field private static final inflate_mask:[I


# instance fields
.field bb:[I

.field bd:[I

.field bitb:I

.field bitk:I

.field bl:[I

.field blens:[I

.field private check:Z

.field private final codes:Lcom/jcraft/jsch/jzlib/InfCodes;

.field end:I

.field hufts:[I

.field index:I

.field private final inftree:Lcom/jcraft/jsch/jzlib/InfTree;

.field last:I

.field left:I

.field mode:I

.field read:I

.field table:I

.field tb:[I

.field td:[[I

.field tdi:[I

.field tl:[[I

.field tli:[I

.field window:[B

.field write:I

.field private final z:Lcom/jcraft/jsch/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 37
    const/16 v0, 0x11

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    aput v4, v1, v3

    const/4 v5, 0x7

    aput v5, v1, v4

    .line 38
    const/4 v6, 0x4

    const/16 v7, 0xf

    aput v7, v1, v6

    const/4 v8, 0x5

    const/16 v9, 0x1f

    aput v9, v1, v8

    const/4 v9, 0x6

    const/16 v10, 0x3f

    aput v10, v1, v9

    const/16 v10, 0x7f

    aput v10, v1, v5

    const/16 v10, 0x8

    const/16 v11, 0xff

    aput v11, v1, v10

    const/16 v11, 0x9

    const/16 v12, 0x1ff

    aput v12, v1, v11

    const/16 v12, 0xa

    const/16 v13, 0x3ff

    aput v13, v1, v12

    .line 39
    const/16 v13, 0xb

    const/16 v14, 0x7ff

    aput v14, v1, v13

    const/16 v14, 0xc

    const/16 v15, 0xfff

    aput v15, v1, v14

    const/16 v15, 0xd

    const/16 v16, 0x1fff

    aput v16, v1, v15

    const/16 v16, 0xe

    const/16 v17, 0x3fff

    aput v17, v1, v16

    const/16 v17, 0x7fff

    aput v17, v1, v7

    const/16 v17, 0x10

    const v18, 0xffff

    aput v18, v1, v17

    .line 37
    sput-object v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_mask:[I

    .line 42
    const/16 v1, 0x13

    new-array v1, v1, [I

    .line 43
    const/16 v18, 0x0

    aput v17, v1, v18

    aput v0, v1, v2

    const/16 v18, 0x12

    aput v18, v1, v3

    aput v10, v1, v6

    aput v5, v1, v8

    aput v11, v1, v9

    aput v9, v1, v5

    aput v12, v1, v10

    aput v8, v1, v11

    aput v13, v1, v12

    aput v6, v1, v13

    aput v14, v1, v14

    aput v4, v1, v15

    aput v15, v1, v16

    aput v3, v1, v7

    aput v16, v1, v17

    aput v2, v1, v0

    aput v7, v1, v18

    .line 42
    sput-object v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->border:[I

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;I)V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bb:[I

    .line 74
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tb:[I

    .line 76
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bl:[I

    .line 77
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bd:[I

    .line 79
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tl:[[I

    .line 80
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->td:[[I

    .line 81
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tli:[I

    .line 82
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tdi:[I

    .line 98
    new-instance v1, Lcom/jcraft/jsch/jzlib/InfTree;

    invoke-direct {v1}, Lcom/jcraft/jsch/jzlib/InfTree;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->inftree:Lcom/jcraft/jsch/jzlib/InfTree;

    .line 103
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 104
    new-instance v1, Lcom/jcraft/jsch/jzlib/InfCodes;

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-direct {v1, v2, p0}, Lcom/jcraft/jsch/jzlib/InfCodes;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;Lcom/jcraft/jsch/jzlib/InfBlocks;)V

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->codes:Lcom/jcraft/jsch/jzlib/InfCodes;

    .line 105
    const/16 v1, 0x10e0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    .line 106
    new-array v1, p2, [B

    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    .line 107
    iput p2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    .line 108
    iget-object p1, p1, Lcom/jcraft/jsch/jzlib/ZStream;->istate:Lcom/jcraft/jsch/jzlib/Inflate;

    iget p1, p1, Lcom/jcraft/jsch/jzlib/Inflate;->wrap:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move v0, p2

    :cond_0
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->check:Z

    .line 109
    iput p2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 110
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->reset()V

    .line 111
    return-void
.end method


# virtual methods
.method free()V
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->reset()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    .line 608
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    .line 610
    return-void
.end method

.method inflate_flush(I)I
    .locals 10

    .line 630
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    .line 631
    iget v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    .line 634
    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    if-gt v1, v2, :cond_0

    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    :goto_0
    sub-int/2addr v2, v1

    .line 635
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-le v2, v3, :cond_1

    .line 636
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 637
    :cond_1
    const/4 v3, 0x0

    const/4 v4, -0x5

    if-eqz v2, :cond_2

    if-ne p1, v4, :cond_2

    .line 638
    move p1, v3

    .line 641
    :cond_2
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    sub-int/2addr v6, v2

    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 642
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    .line 645
    iget-boolean v5, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->check:Z

    if-eqz v5, :cond_3

    if-lez v2, :cond_3

    .line 646
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    invoke-interface {v5, v6, v1, v2}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 650
    :cond_3
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    iget-object v6, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    invoke-static {v5, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    add-int/2addr v0, v2

    .line 652
    add-int/2addr v1, v2

    .line 655
    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v1, v2, :cond_8

    .line 657
    nop

    .line 658
    iget v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    iget v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v1, v2, :cond_4

    .line 659
    iput v3, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 662
    :cond_4
    iget v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    sub-int/2addr v1, v3

    .line 663
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    if-le v1, v2, :cond_5

    .line 664
    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 665
    :cond_5
    if-eqz v1, :cond_6

    if-ne p1, v4, :cond_6

    .line 666
    move p1, v3

    .line 669
    :cond_6
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v1

    iput v4, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_out:I

    .line 670
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v4, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_out:J

    .line 673
    iget-boolean v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->check:Z

    if-eqz v2, :cond_7

    if-lez v1, :cond_7

    .line 674
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    invoke-interface {v2, v4, v3, v1}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 678
    :cond_7
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_out:[B

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    add-int/2addr v0, v1

    .line 680
    add-int/2addr v1, v3

    .line 684
    :cond_8
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_out_index:I

    .line 685
    iput v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    .line 688
    return p1
.end method

.method proc(I)I
    .locals 38

    move-object/from16 v0, p0

    .line 140
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 141
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 142
    iget v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 143
    iget v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 146
    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 147
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    :goto_0
    const/4 v8, 0x0

    move v9, v3

    move/from16 v3, p1

    .line 152
    :goto_1
    iget v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    const/4 v15, 0x7

    const/4 v12, 0x4

    const/16 v7, 0xe

    const/4 v13, -0x3

    const/4 v14, 0x5

    const/16 v19, 0x102

    packed-switch v10, :pswitch_data_0

    .line 592
    nop

    .line 594
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 595
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 596
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 597
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v6, v1, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 598
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 599
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 600
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 581
    :pswitch_0
    nop

    .line 583
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 584
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 585
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 586
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v6, v1, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 587
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 588
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 589
    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 312
    :pswitch_1
    nop

    .line 312
    :goto_2
    if-lt v4, v7, :cond_20

    .line 329
    and-int/lit16 v6, v9, 0x3fff

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->table:I

    .line 330
    and-int/lit8 v10, v6, 0x1f

    const/16 v11, 0x1d

    if-gt v10, v11, :cond_1f

    shr-int/2addr v6, v14

    and-int/lit8 v6, v6, 0x1f

    if-le v6, v11, :cond_1

    goto/16 :goto_14

    .line 343
    :cond_1
    add-int v10, v19, v10

    add-int/2addr v6, v10

    .line 344
    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    array-length v10, v10

    if-ge v10, v6, :cond_2

    goto :goto_4

    .line 347
    :cond_2
    move v10, v8

    :goto_3
    if-lt v10, v6, :cond_3

    goto :goto_5

    .line 348
    :cond_3
    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    aput v8, v11, v10

    .line 347
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 345
    :cond_4
    :goto_4
    new-array v6, v6, [I

    iput-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    .line 346
    nop

    .line 353
    :goto_5
    ushr-int/2addr v9, v7

    .line 354
    add-int/lit8 v4, v4, -0xe

    .line 357
    iput v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    .line 358
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 360
    :pswitch_2
    nop

    .line 360
    :goto_6
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    iget v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->table:I

    ushr-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v12

    if-lt v6, v10, :cond_1c

    .line 386
    nop

    .line 386
    :goto_7
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    const/16 v10, 0x13

    if-lt v6, v10, :cond_1b

    .line 390
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bb:[I

    aput v15, v6, v8

    .line 391
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->inftree:Lcom/jcraft/jsch/jzlib/InfTree;

    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bb:[I

    iget-object v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tb:[I

    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    iget-object v15, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    move-object/from16 v21, v6

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v15

    invoke-virtual/range {v21 .. v26}, Lcom/jcraft/jsch/jzlib/InfTree;->inflate_trees_bits([I[I[I[ILcom/jcraft/jsch/jzlib/ZStream;)I

    move-result v6

    .line 392
    if-eqz v6, :cond_6

    .line 393
    nop

    .line 394
    if-ne v6, v13, :cond_5

    .line 395
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    .line 396
    const/16 v3, 0x9

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 399
    :cond_5
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 400
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 401
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 402
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v7, v1, v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 403
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 404
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 405
    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 408
    :cond_6
    iput v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    .line 409
    iput v14, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 412
    :goto_8
    :pswitch_3
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->table:I

    .line 413
    iget v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    and-int/lit8 v10, v6, 0x1f

    add-int v10, v19, v10

    shr-int/2addr v6, v14

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v10

    if-lt v7, v6, :cond_e

    .line 414
    nop

    .line 504
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tb:[I

    const/4 v7, -0x1

    aput v7, v6, v8

    .line 505
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bl:[I

    const/16 v7, 0x9

    aput v7, v6, v8

    .line 506
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bd:[I

    const/4 v7, 0x6

    aput v7, v6, v8

    .line 507
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->table:I

    .line 508
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->inftree:Lcom/jcraft/jsch/jzlib/InfTree;

    and-int/lit8 v10, v6, 0x1f

    const/16 v11, 0x101

    add-int v28, v11, v10

    shr-int/2addr v6, v14

    and-int/lit8 v6, v6, 0x1f

    const/4 v10, 0x1

    add-int v29, v10, v6

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bl:[I

    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bd:[I

    .line 509
    iget-object v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tli:[I

    iget-object v14, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tdi:[I

    iget-object v15, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 508
    move-object/from16 v27, v7

    move-object/from16 v30, v6

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object/from16 v36, v8

    invoke-virtual/range {v27 .. v36}, Lcom/jcraft/jsch/jzlib/InfTree;->inflate_trees_dynamic(II[I[I[I[I[I[ILcom/jcraft/jsch/jzlib/ZStream;)I

    move-result v6

    .line 511
    if-eqz v6, :cond_8

    .line 512
    if-ne v6, v13, :cond_7

    .line 513
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    .line 514
    const/16 v3, 0x9

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 516
    :cond_7
    nop

    .line 518
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 519
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 520
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 521
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v7, v1, v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 522
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 523
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 524
    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 526
    :cond_8
    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->codes:Lcom/jcraft/jsch/jzlib/InfCodes;

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bl:[I

    const/4 v7, 0x0

    aget v11, v6, v7

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bd:[I

    aget v12, v6, v7

    iget-object v13, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tli:[I

    aget v14, v6, v7

    iget-object v15, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tdi:[I

    aget v16, v6, v7

    invoke-virtual/range {v10 .. v16}, Lcom/jcraft/jsch/jzlib/InfCodes;->init(II[II[II)V

    .line 528
    const/4 v6, 0x6

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 530
    :pswitch_4
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 531
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 532
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 533
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 534
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 535
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 537
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->codes:Lcom/jcraft/jsch/jzlib/InfCodes;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/jzlib/InfCodes;->proc(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 538
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 540
    :cond_9
    nop

    .line 541
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->codes:Lcom/jcraft/jsch/jzlib/InfCodes;

    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/jzlib/InfCodes;->free(Lcom/jcraft/jsch/jzlib/ZStream;)V

    .line 543
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 544
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 545
    iget v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 546
    iget v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 547
    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 548
    iget v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-ge v5, v3, :cond_a

    iget v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v3, v5

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    :goto_9
    move v6, v3

    goto :goto_a

    :cond_a
    iget v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v3, v5

    goto :goto_9

    .line 550
    :goto_a
    iget v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->last:I

    if-nez v3, :cond_b

    .line 551
    const/4 v3, 0x0

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 552
    :goto_b
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 554
    :cond_b
    const/4 v3, 0x7

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    const/4 v3, 0x0

    .line 556
    :pswitch_5
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 557
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v3

    .line 558
    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 559
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-ge v5, v6, :cond_c

    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    goto :goto_c

    :cond_c
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    .line 560
    :goto_c
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    iget v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    if-eq v6, v7, :cond_d

    .line 561
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 562
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 563
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 564
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 565
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 566
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 567
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 569
    :cond_d
    const/16 v3, 0x8

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 571
    :pswitch_6
    nop

    .line 573
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 574
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 575
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 576
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v6, v1, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 577
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 578
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 579
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 420
    :cond_e
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bb:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    .line 422
    nop

    .line 422
    :goto_d
    if-lt v4, v6, :cond_19

    .line 439
    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tb:[I

    aget v8, v8, v7

    .line 443
    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tb:[I

    aget v10, v10, v7

    sget-object v11, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_mask:[I

    aget v6, v11, v6

    and-int/2addr v6, v9

    add-int/2addr v6, v10

    const/4 v10, 0x3

    mul-int/2addr v6, v10

    const/4 v11, 0x1

    add-int/2addr v6, v11

    aget v6, v8, v6

    .line 444
    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->hufts:[I

    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tb:[I

    aget v11, v11, v7

    sget-object v7, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_mask:[I

    aget v7, v7, v6

    and-int/2addr v7, v9

    add-int/2addr v7, v11

    mul-int/2addr v7, v10

    const/4 v10, 0x2

    add-int/2addr v7, v10

    aget v7, v8, v7

    .line 446
    const/16 v8, 0x10

    if-ge v7, v8, :cond_f

    .line 447
    ushr-int/2addr v9, v6

    .line 448
    sub-int/2addr v4, v6

    .line 449
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    iget v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    const/4 v11, 0x1

    add-int v12, v8, v11

    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    aput v7, v6, v8

    .line 450
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 451
    :cond_f
    const/16 v8, 0x12

    if-ne v7, v8, :cond_10

    const/16 v11, 0xe

    const/4 v15, 0x7

    goto :goto_e

    :cond_10
    const/16 v11, 0xe

    sub-int v15, v7, v11

    .line 452
    :goto_e
    const/16 v12, 0xb

    if-ne v7, v8, :cond_11

    goto :goto_f

    :cond_11
    const/4 v12, 0x3

    .line 454
    :goto_f
    nop

    .line 454
    :goto_10
    add-int v8, v6, v15

    if-lt v4, v8, :cond_17

    .line 471
    ushr-int v8, v9, v6

    .line 472
    sub-int/2addr v4, v6

    .line 474
    sget-object v6, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_mask:[I

    aget v6, v6, v15

    and-int/2addr v6, v8

    add-int/2addr v6, v12

    .line 476
    ushr-int v9, v8, v15

    .line 477
    sub-int/2addr v4, v15

    .line 479
    iget v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    .line 480
    iget v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->table:I

    .line 481
    add-int v15, v8, v6

    and-int/lit8 v17, v12, 0x1f

    add-int v17, v19, v17

    shr-int/2addr v12, v14

    and-int/lit8 v12, v12, 0x1f

    add-int v12, v17, v12

    if-gt v15, v12, :cond_16

    const/16 v12, 0x10

    if-ne v7, v12, :cond_12

    const/4 v15, 0x1

    if-ge v8, v15, :cond_13

    goto :goto_12

    :cond_12
    const/4 v15, 0x1

    .line 496
    :cond_13
    if-ne v7, v12, :cond_14

    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    sub-int v12, v8, v15

    aget v7, v7, v12

    goto :goto_11

    :cond_14
    const/4 v7, 0x0

    .line 498
    :goto_11
    iget-object v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v15, v8, 0x1

    aput v7, v12, v8

    .line 499
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_15

    .line 500
    iput v15, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    .line 411
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_15
    move v8, v15

    goto :goto_11

    .line 482
    :cond_16
    :goto_12
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    .line 483
    const/16 v3, 0x9

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 484
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v6, "invalid bit length repeat"

    iput-object v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 485
    nop

    .line 487
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 488
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 489
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 490
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v6, v1, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 491
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 492
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 493
    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :cond_17
    const/4 v8, 0x0

    .line 455
    if-eqz v2, :cond_18

    .line 456
    nop

    .line 457
    nop

    .line 466
    add-int/lit8 v2, v2, -0x1

    .line 467
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v17, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v9, v1

    .line 468
    add-int/lit8 v4, v4, 0x8

    move/from16 v1, v17

    const/4 v3, 0x0

    goto/16 :goto_10

    .line 458
    :cond_18
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 459
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 460
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 461
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 462
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 463
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 464
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :cond_19
    const/16 v11, 0xe

    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 423
    if-eqz v2, :cond_1a

    .line 424
    nop

    .line 425
    nop

    .line 434
    add-int/lit8 v2, v2, -0x1

    .line 435
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v9, v1

    .line 436
    add-int/lit8 v4, v4, 0x8

    move v1, v7

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_d

    .line 426
    :cond_1a
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 427
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 428
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 429
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 430
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 431
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 432
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :cond_1b
    move v11, v7

    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 387
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    sget-object v7, Lcom/jcraft/jsch/jzlib/InfBlocks;->border:[I

    iget v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    const/4 v15, 0x1

    add-int v8, v12, v15

    iput v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    aget v7, v7, v12

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v15, 0x7

    move v7, v11

    goto/16 :goto_7

    :cond_1c
    move v11, v7

    const/4 v10, 0x2

    .line 361
    :goto_13
    const/4 v6, 0x3

    if-lt v4, v6, :cond_1d

    .line 378
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->blens:[I

    sget-object v8, Lcom/jcraft/jsch/jzlib/InfBlocks;->border:[I

    iget v15, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    const/16 v17, 0x1

    add-int v10, v15, v17

    iput v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->index:I

    aget v8, v8, v15

    const/4 v10, 0x7

    and-int v15, v9, v10

    aput v15, v7, v8

    .line 381
    ushr-int/2addr v9, v6

    .line 382
    add-int/lit8 v4, v4, -0x3

    const/4 v15, 0x7

    move v7, v11

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 362
    :cond_1d
    if-eqz v2, :cond_1e

    .line 363
    nop

    .line 364
    nop

    .line 373
    add-int/lit8 v2, v2, -0x1

    .line 374
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v9, v1

    .line 375
    add-int/lit8 v4, v4, 0x8

    const/4 v10, 0x2

    move v1, v6

    const/4 v3, 0x0

    goto :goto_13

    .line 365
    :cond_1e
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 366
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 367
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 368
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 369
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 370
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 371
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 331
    :cond_1f
    :goto_14
    const/16 v3, 0x9

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 332
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v6, "too many length or distance symbols"

    iput-object v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 333
    nop

    .line 335
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 336
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 337
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 338
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v6, v1, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 339
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 340
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 341
    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :cond_20
    move v11, v7

    .line 313
    if-eqz v2, :cond_21

    .line 314
    nop

    .line 315
    nop

    .line 324
    add-int/lit8 v2, v2, -0x1

    .line 325
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v9, v1

    .line 326
    add-int/lit8 v4, v4, 0x8

    const/4 v15, 0x7

    move v7, v11

    const/4 v8, 0x0

    move v1, v6

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 316
    :cond_21
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 317
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 318
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 319
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 320
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 321
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 322
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 260
    :pswitch_7
    if-nez v2, :cond_22

    .line 261
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 262
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 263
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 264
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 265
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 266
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 267
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 270
    :cond_22
    if-nez v6, :cond_28

    .line 271
    iget v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v5, v7, :cond_24

    iget v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_24

    .line 272
    nop

    .line 273
    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_23

    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    const/4 v6, 0x0

    sub-int/2addr v5, v6

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_15
    move v6, v5

    goto :goto_16

    :cond_23
    const/4 v6, 0x0

    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v6

    goto :goto_15

    :goto_16
    const/4 v5, 0x0

    .line 275
    :cond_24
    if-nez v6, :cond_28

    .line 276
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 277
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v3

    .line 278
    iget v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 279
    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-ge v8, v5, :cond_25

    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v8

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto :goto_17

    :cond_25
    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v8

    .line 280
    :goto_17
    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v8, v6, :cond_27

    iget v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-eqz v6, :cond_27

    .line 281
    nop

    .line 282
    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_26

    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    const/4 v6, 0x0

    sub-int/2addr v5, v6

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    goto :goto_18

    :cond_26
    const/4 v6, 0x0

    iget v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v6

    :goto_18
    move v6, v5

    const/4 v5, 0x0

    goto :goto_19

    :cond_27
    move v6, v5

    move v5, v8

    .line 284
    :goto_19
    if-nez v6, :cond_28

    .line 285
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 286
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 287
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 288
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 289
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 290
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 291
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 295
    :cond_28
    nop

    .line 297
    iget v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->left:I

    .line 298
    if-le v3, v2, :cond_29

    .line 299
    move v3, v2

    .line 300
    :cond_29
    if-le v3, v6, :cond_2a

    .line 301
    move v3, v6

    .line 302
    :cond_2a
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v7, v7, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    invoke-static {v7, v1, v8, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    add-int/2addr v1, v3

    .line 304
    sub-int/2addr v2, v3

    .line 305
    add-int/2addr v5, v3

    .line 306
    sub-int/2addr v6, v3

    .line 307
    iget v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->left:I

    sub-int v3, v7, v3

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->left:I

    if-eqz v3, :cond_2b

    .line 308
    goto/16 :goto_b

    .line 309
    :cond_2b
    iget v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->last:I

    if-eqz v3, :cond_2c

    const/4 v3, 0x7

    goto :goto_1a

    :cond_2c
    const/4 v3, 0x0

    :goto_1a
    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 310
    goto/16 :goto_b

    .line 225
    :pswitch_8
    nop

    .line 225
    :goto_1b
    const/16 v7, 0x20

    if-lt v4, v7, :cond_30

    .line 242
    not-int v7, v9

    const/16 v8, 0x10

    ushr-int/2addr v7, v8

    const v8, 0xffff

    and-int/2addr v7, v8

    and-int/2addr v8, v9

    if-eq v7, v8, :cond_2d

    .line 243
    const/16 v3, 0x9

    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 244
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v6, "invalid stored block lengths"

    iput-object v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 245
    nop

    .line 247
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 248
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 249
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 250
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v6, v1, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 251
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 252
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 253
    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 255
    :cond_2d
    iput v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->left:I

    .line 256
    nop

    .line 257
    iget v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->left:I

    if-eqz v4, :cond_2e

    const/4 v4, 0x2

    goto :goto_1c

    :cond_2e
    iget v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->last:I

    if-eqz v4, :cond_2f

    const/4 v4, 0x7

    goto :goto_1c

    :cond_2f
    const/4 v4, 0x0

    :goto_1c
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 258
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_30
    const/16 v8, 0x10

    .line 226
    if-eqz v2, :cond_31

    .line 227
    nop

    .line 228
    nop

    .line 237
    add-int/lit8 v2, v2, -0x1

    .line 238
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v9, v1

    .line 239
    add-int/lit8 v4, v4, 0x8

    move v1, v7

    const/4 v3, 0x0

    goto :goto_1b

    .line 229
    :cond_31
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 230
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 231
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 232
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 233
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 234
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 235
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 154
    :pswitch_9
    nop

    .line 154
    :goto_1d
    const/4 v7, 0x3

    if-lt v4, v7, :cond_32

    .line 170
    const/4 v8, 0x7

    and-int v10, v9, v8

    .line 171
    const/4 v8, 0x1

    and-int v11, v10, v8

    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->last:I

    .line 173
    ushr-int/2addr v10, v8

    packed-switch v10, :pswitch_data_1

    const/4 v10, 0x0

    const/4 v14, 0x1

    .line 223
    move v7, v14

    :goto_1e
    move v8, v10

    goto/16 :goto_1

    .line 208
    :pswitch_a
    ushr-int v3, v9, v7

    .line 209
    add-int/lit8 v4, v4, -0x3

    .line 211
    const/16 v7, 0x9

    iput v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 212
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v7, "invalid block type"

    iput-object v7, v6, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 213
    nop

    .line 215
    iput v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 216
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 217
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 218
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v6, v1, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 219
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 220
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 221
    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 200
    :pswitch_b
    const/4 v7, 0x3

    ushr-int/2addr v9, v7

    .line 201
    add-int/lit8 v4, v4, -0x3

    .line 204
    iput v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 205
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 188
    :pswitch_c
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bl:[I

    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bd:[I

    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tl:[[I

    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->td:[[I

    iget-object v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-static {v7, v8, v10, v11, v12}, Lcom/jcraft/jsch/jzlib/InfTree;->inflate_trees_fixed([I[I[[I[[ILcom/jcraft/jsch/jzlib/ZStream;)I

    .line 189
    iget-object v7, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->codes:Lcom/jcraft/jsch/jzlib/InfCodes;

    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bl:[I

    const/4 v10, 0x0

    aget v19, v8, v10

    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bd:[I

    aget v20, v8, v10

    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->tl:[[I

    aget-object v21, v8, v10

    iget-object v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->td:[[I

    aget-object v23, v8, v10

    const/16 v24, 0x0

    move-object/from16 v18, v7

    move/from16 v22, v24

    invoke-virtual/range {v18 .. v24}, Lcom/jcraft/jsch/jzlib/InfCodes;->init(II[II[II)V

    .line 192
    const/4 v8, 0x3

    ushr-int/2addr v9, v8

    .line 193
    add-int/lit8 v4, v4, -0x3

    .line 196
    const/4 v11, 0x6

    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 197
    const/4 v7, 0x1

    goto :goto_1e

    :pswitch_d
    move v8, v7

    const/4 v10, 0x0

    .line 176
    ushr-int v7, v9, v8

    .line 177
    add-int/lit8 v4, v4, -0x3

    .line 179
    const/4 v12, 0x7

    and-int v8, v4, v12

    .line 182
    ushr-int v9, v7, v8

    .line 183
    sub-int/2addr v4, v8

    .line 185
    const/4 v14, 0x1

    iput v14, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 186
    move v7, v14

    goto :goto_1e

    :cond_32
    move v8, v7

    const/16 v7, 0x9

    const/4 v14, 0x1

    const/4 v11, 0x6

    const/4 v12, 0x7

    const/4 v10, 0x0

    .line 155
    if-eqz v2, :cond_33

    .line 156
    nop

    .line 157
    nop

    .line 166
    add-int/lit8 v2, v2, -0x1

    .line 167
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v15, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v9, v1

    .line 168
    add-int/lit8 v4, v4, 0x8

    move v1, v15

    move v3, v10

    goto/16 :goto_1d

    .line 158
    :cond_33
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 159
    iput v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 160
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 161
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v1, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 162
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 163
    iput v5, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 164
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method reset()V
    .locals 2

    .line 114
    iget v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 116
    iget v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->codes:Lcom/jcraft/jsch/jzlib/InfCodes;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/InfCodes;->free(Lcom/jcraft/jsch/jzlib/ZStream;)V

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    .line 120
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 121
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 122
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    .line 123
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->check:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->adler:Lcom/jcraft/jsch/jzlib/Checksum;

    invoke-interface {v0}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 126
    :cond_1
    return-void
.end method

.method set_dictionary([BII)V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    iput p3, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    iput p3, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    .line 615
    return-void
.end method

.method sync_point()I
    .locals 3

    .line 620
    iget v0, p0, Lcom/jcraft/jsch/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method
