.class final Lcom/jcraft/jsch/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final inflate_mask:[I


# instance fields
.field dbits:B

.field dist:I

.field dtree:[I

.field dtree_index:I

.field get:I

.field lbits:B

.field len:I

.field lit:I

.field ltree:[I

.field ltree_index:I

.field mode:I

.field need:I

.field private final s:Lcom/jcraft/jsch/jzlib/InfBlocks;

.field tree:[I

.field tree_index:I

.field private final z:Lcom/jcraft/jsch/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v1, v0, v2

    .line 36
    const/4 v2, 0x4

    const/16 v3, 0xf

    aput v3, v0, v2

    const/4 v2, 0x5

    const/16 v4, 0x1f

    aput v4, v0, v2

    const/4 v2, 0x6

    const/16 v4, 0x3f

    aput v4, v0, v2

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xff

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1ff

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3ff

    aput v2, v0, v1

    .line 37
    const/16 v1, 0xb

    const/16 v2, 0x7ff

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xfff

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1fff

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3fff

    aput v2, v0, v1

    const/16 v1, 0x7fff

    aput v1, v0, v3

    const/16 v1, 0x10

    const v2, 0xffff

    aput v2, v0, v1

    .line 35
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;Lcom/jcraft/jsch/jzlib/InfBlocks;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->tree_index:I

    .line 89
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 90
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 91
    return-void
.end method


# virtual methods
.method free(Lcom/jcraft/jsch/jzlib/ZStream;)V
    .locals 0

    .line 462
    return-void
.end method

.method inflate_fast(II[II[IILcom/jcraft/jsch/jzlib/InfBlocks;Lcom/jcraft/jsch/jzlib/ZStream;)I
    .locals 26

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 490
    iget v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 491
    iget v7, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 492
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 493
    iget v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 494
    iget v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 495
    iget v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    const/4 v12, 0x1

    if-ge v10, v11, :cond_0

    iget v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v11, v10

    sub-int/2addr v11, v12

    goto :goto_0

    :cond_0
    iget v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v11, v10

    .line 498
    :goto_0
    sget-object v13, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v13, v13, p1

    .line 499
    sget-object v14, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v14, v14, p2

    .line 504
    nop

    .line 504
    :goto_1
    const/16 v15, 0x14

    if-lt v9, v15, :cond_18

    .line 510
    and-int v15, v8, v13

    .line 511
    nop

    .line 512
    nop

    .line 513
    add-int v16, p4, v15

    mul-int/lit8 v16, v16, 0x3

    .line 514
    aget v17, p3, v16

    const/16 v18, -0x3

    const/16 v19, 0x0

    const/4 v12, 0x2

    if-nez v17, :cond_1

    .line 515
    const/4 v15, 0x1

    add-int v17, v16, v15

    aget v15, p3, v17

    shr-int/2addr v8, v15

    .line 516
    aget v15, p3, v17

    sub-int/2addr v9, v15

    .line 518
    iget-object v15, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v17, v10, 0x1

    add-int v12, v16, v12

    aget v12, p3, v12

    int-to-byte v12, v12

    aput-byte v12, v15, v10

    .line 519
    add-int/lit8 v10, v11, -0x1

    .line 520
    move/from16 v24, v13

    move v11, v10

    move/from16 v10, v17

    goto/16 :goto_b

    .line 524
    :cond_1
    :goto_2
    const/16 v20, 0x1

    add-int v21, v16, v20

    aget v22, p3, v21

    shr-int v8, v8, v22

    .line 525
    aget v21, p3, v21

    sub-int v9, v9, v21

    .line 527
    and-int/lit8 v21, v17, 0x10

    if-eqz v21, :cond_f

    .line 528
    const/16 v15, 0xf

    and-int v17, v17, v15

    .line 529
    add-int v16, v16, v12

    aget v16, p3, v16

    sget-object v21, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v21, v21, v17

    and-int v21, v8, v21

    add-int v12, v16, v21

    .line 531
    shr-int v8, v8, v17

    .line 532
    sub-int v9, v9, v17

    .line 535
    nop

    .line 535
    :goto_3
    if-lt v9, v15, :cond_e

    .line 541
    and-int v16, v8, v14

    .line 542
    nop

    .line 543
    nop

    .line 544
    add-int v17, p6, v16

    mul-int/lit8 v17, v17, 0x3

    .line 545
    aget v21, p5, v17

    .line 549
    :goto_4
    const/16 v20, 0x1

    add-int v22, v17, v20

    aget v23, p5, v22

    shr-int v8, v8, v23

    .line 550
    aget v22, p5, v22

    sub-int v9, v9, v22

    .line 552
    and-int/lit8 v22, v21, 0x10

    if-eqz v22, :cond_b

    .line 554
    and-int v15, v21, v15

    .line 555
    nop

    .line 555
    :goto_5
    if-lt v9, v15, :cond_a

    .line 561
    const/16 v16, 0x2

    add-int v17, v17, v16

    aget v16, p5, v17

    sget-object v17, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v17, v17, v15

    and-int v17, v8, v17

    move/from16 v24, v13

    add-int v13, v16, v17

    .line 563
    shr-int v16, v8, v15

    .line 564
    sub-int v18, v9, v15

    .line 567
    sub-int v21, v11, v12

    .line 568
    if-lt v10, v13, :cond_3

    .line 570
    sub-int v8, v10, v13

    .line 571
    sub-int v9, v10, v8

    if-lez v9, :cond_2

    const/4 v11, 0x2

    if-le v11, v9, :cond_2

    .line 572
    iget-object v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v11, v10, 0x1

    iget-object v13, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v15, v8, 0x1

    aget-byte v8, v13, v8

    aput-byte v8, v9, v10

    .line 573
    iget-object v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v10, v11, 0x1

    iget-object v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v13, v15, 0x1

    aget-byte v9, v9, v15

    aput-byte v9, v8, v11

    .line 574
    add-int/lit8 v12, v12, -0x2

    .line 575
    move v8, v13

    goto :goto_8

    .line 576
    :cond_2
    iget-object v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    iget-object v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    const/4 v13, 0x2

    invoke-static {v9, v8, v11, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    add-int/lit8 v10, v10, 0x2

    .line 578
    add-int/lit8 v8, v8, 0x2

    .line 579
    add-int/lit8 v12, v12, -0x2

    .line 581
    goto :goto_8

    .line 582
    :cond_3
    sub-int v8, v10, v13

    .line 584
    :cond_4
    iget v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    add-int/2addr v8, v9

    .line 585
    nop

    .line 583
    if-ltz v8, :cond_4

    .line 586
    iget v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v9, v8

    .line 587
    if-le v12, v9, :cond_7

    .line 588
    sub-int/2addr v12, v9

    .line 589
    sub-int v11, v10, v8

    if-lez v11, :cond_6

    if-le v9, v11, :cond_6

    .line 591
    :goto_6
    iget-object v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v13, v10, 0x1

    iget-object v15, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v17, v8, 0x1

    aget-byte v8, v15, v8

    aput-byte v8, v11, v10

    .line 592
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_5

    .line 593
    move v10, v13

    goto :goto_7

    :cond_5
    move v10, v13

    move/from16 v8, v17

    goto :goto_6

    .line 594
    :cond_6
    iget-object v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    iget-object v13, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    invoke-static {v11, v8, v13, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    add-int v8, v10, v9

    .line 596
    nop

    .line 597
    move v10, v8

    .line 599
    :goto_7
    move/from16 v8, v19

    .line 604
    :cond_7
    :goto_8
    sub-int v9, v10, v8

    if-lez v9, :cond_9

    if-le v12, v9, :cond_9

    .line 606
    :goto_9
    iget-object v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v11, v10, 0x1

    iget-object v13, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v15, v8, 0x1

    aget-byte v8, v13, v8

    aput-byte v8, v9, v10

    .line 607
    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_8

    .line 608
    move/from16 v8, v16

    move/from16 v9, v18

    move v10, v11

    move/from16 v11, v21

    goto/16 :goto_b

    :cond_8
    move v10, v11

    move v8, v15

    goto :goto_9

    .line 609
    :cond_9
    iget-object v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    iget-object v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    invoke-static {v9, v8, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    add-int v8, v10, v12

    .line 611
    nop

    .line 612
    nop

    .line 614
    move/from16 v11, v21

    move/from16 v9, v18

    move v10, v8

    move/from16 v8, v16

    goto/16 :goto_b

    :cond_a
    move/from16 v24, v13

    .line 556
    add-int/lit8 v7, v7, -0x1

    .line 557
    iget-object v13, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v16, v6, 0x1

    aget-byte v6, v13, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v9

    or-int/2addr v8, v6

    .line 558
    add-int/lit8 v9, v9, 0x8

    move/from16 v13, v24

    move/from16 v6, v16

    goto/16 :goto_5

    :cond_b
    move/from16 v24, v13

    .line 615
    and-int/lit8 v13, v21, 0x40

    if-nez v13, :cond_c

    .line 616
    const/4 v13, 0x2

    add-int v17, v17, v13

    aget v13, p5, v17

    add-int v13, v16, v13

    .line 617
    sget-object v16, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v16, v16, v21

    and-int v16, v8, v16

    add-int v16, v13, v16

    .line 618
    add-int v13, p6, v16

    mul-int/lit8 v17, v13, 0x3

    .line 619
    aget v21, p5, v17

    .line 620
    move/from16 v13, v24

    goto/16 :goto_4

    .line 621
    :cond_c
    const-string v0, "invalid distance code"

    iput-object v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 623
    iget v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v0, v7

    .line 624
    shr-int/lit8 v1, v9, 0x3

    if-ge v1, v0, :cond_d

    goto :goto_a

    :cond_d
    move v1, v0

    .line 625
    :goto_a
    add-int v0, v7, v1

    .line 626
    sub-int v2, v6, v1

    .line 627
    shl-int/lit8 v1, v1, 0x3

    sub-int v1, v9, v1

    .line 629
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 630
    iput v1, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 631
    iput v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 632
    iget-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget v3, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v3, v2, v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    iput-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 633
    iput v2, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 634
    iput v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 636
    goto/16 :goto_10

    :cond_e
    move/from16 v24, v13

    .line 536
    add-int/lit8 v7, v7, -0x1

    .line 537
    iget-object v13, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v16, v6, 0x1

    aget-byte v6, v13, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v9

    or-int/2addr v8, v6

    .line 538
    add-int/lit8 v9, v9, 0x8

    move/from16 v13, v24

    move/from16 v6, v16

    goto/16 :goto_3

    :cond_f
    move/from16 v24, v13

    .line 642
    and-int/lit8 v12, v17, 0x40

    if-nez v12, :cond_14

    .line 643
    const/4 v12, 0x2

    add-int v13, v16, v12

    aget v12, p3, v13

    add-int/2addr v12, v15

    .line 644
    sget-object v13, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v13, v13, v17

    and-int/2addr v13, v8

    add-int v15, v12, v13

    .line 645
    add-int v12, p4, v15

    mul-int/lit8 v16, v12, 0x3

    .line 646
    aget v17, p3, v16

    if-nez v17, :cond_13

    .line 648
    const/4 v12, 0x1

    add-int v13, v16, v12

    aget v15, p3, v13

    shr-int/2addr v8, v15

    .line 649
    aget v13, p3, v13

    sub-int/2addr v9, v13

    .line 651
    iget-object v13, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v15, v10, 0x1

    const/16 v20, 0x2

    add-int v16, v16, v20

    aget v12, p3, v16

    int-to-byte v12, v12

    aput-byte v12, v13, v10

    .line 652
    add-int/lit8 v10, v11, -0x1

    .line 653
    move v11, v10

    move v10, v15

    .line 690
    :goto_b
    const/16 v12, 0x102

    if-lt v11, v12, :cond_11

    .line 502
    const/16 v12, 0xa

    if-ge v7, v12, :cond_10

    goto :goto_c

    :cond_10
    const/4 v12, 0x1

    goto/16 :goto_11

    .line 693
    :cond_11
    :goto_c
    iget v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v0, v7

    .line 694
    shr-int/lit8 v1, v9, 0x3

    if-ge v1, v0, :cond_12

    goto :goto_d

    :cond_12
    move v1, v0

    .line 695
    :goto_d
    add-int v0, v7, v1

    .line 696
    sub-int v2, v6, v1

    .line 697
    shl-int/lit8 v1, v1, 0x3

    sub-int v1, v9, v1

    .line 699
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 700
    iput v1, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 701
    iput v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 702
    iget-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget v3, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v3, v2, v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    iput-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 703
    iput v2, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 704
    iput v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 706
    return v19

    :cond_13
    const/4 v12, 0x2

    move/from16 v13, v24

    goto/16 :goto_2

    .line 655
    :cond_14
    and-int/lit8 v0, v17, 0x20

    if-eqz v0, :cond_16

    .line 657
    iget v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v0, v7

    .line 658
    shr-int/lit8 v1, v9, 0x3

    if-ge v1, v0, :cond_15

    goto :goto_e

    :cond_15
    move v1, v0

    .line 659
    :goto_e
    add-int v0, v7, v1

    .line 660
    sub-int v2, v6, v1

    .line 661
    shl-int/lit8 v1, v1, 0x3

    sub-int v1, v9, v1

    .line 663
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 664
    iput v1, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 665
    iput v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 666
    iget-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget v3, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v3, v2, v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    iput-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 667
    iput v2, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 668
    iput v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 670
    const/16 v19, 0x1

    return v19

    .line 672
    :cond_16
    const-string v0, "invalid literal/length code"

    iput-object v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 674
    iget v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    sub-int/2addr v0, v7

    .line 675
    shr-int/lit8 v1, v9, 0x3

    if-ge v1, v0, :cond_17

    goto :goto_f

    :cond_17
    move v1, v0

    .line 676
    :goto_f
    add-int v0, v7, v1

    .line 677
    sub-int v2, v6, v1

    .line 678
    shl-int/lit8 v1, v1, 0x3

    sub-int v1, v9, v1

    .line 680
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 681
    iput v1, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 682
    iput v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 683
    iget-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget v3, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v3, v2, v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    iput-wide v0, v5, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 684
    iput v2, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 685
    iput v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 687
    :goto_10
    move/from16 v19, v18

    return v19

    :cond_18
    move/from16 v24, v13

    .line 505
    add-int/lit8 v7, v7, -0x1

    .line 506
    iget-object v12, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v13, v6, 0x1

    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v9

    or-int/2addr v8, v6

    .line 507
    add-int/lit8 v9, v9, 0x8

    const/4 v12, 0x1

    move v6, v13

    :goto_11
    move/from16 v13, v24

    goto/16 :goto_1
.end method

.method init(II[II[II)V
    .locals 1

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 95
    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->lbits:B

    .line 96
    int-to-byte p1, p2

    iput-byte p1, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->dbits:B

    .line 97
    iput-object p3, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->ltree:[I

    .line 98
    iput p4, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->ltree_index:I

    .line 99
    iput-object p5, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->dtree:[I

    .line 100
    iput p6, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->dtree_index:I

    .line 101
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    .line 102
    return-void
.end method

.method proc(I)I
    .locals 18

    move-object/from16 v9, p0

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 119
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 120
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 121
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 122
    iget-object v3, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 123
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 124
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    const/4 v10, 0x1

    if-ge v4, v5, :cond_0

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v10

    goto :goto_0

    :cond_0
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v4

    :goto_0
    const/4 v11, 0x0

    move v6, v4

    move/from16 v4, p1

    .line 128
    :goto_1
    iget v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    const/16 v12, 0x9

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, -0x3

    const/4 v8, 0x7

    packed-switch v7, :pswitch_data_0

    .line 447
    nop

    .line 449
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 450
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 451
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 452
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v0, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 453
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 454
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 455
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 436
    :pswitch_0
    nop

    .line 438
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 439
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 440
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 441
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v0, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 442
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 443
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 444
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    :goto_2
    invoke-virtual {v0, v15}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 404
    :pswitch_1
    if-le v3, v8, :cond_1

    .line 405
    add-int/lit8 v3, v3, -0x8

    .line 406
    add-int/lit8 v1, v1, 0x1

    .line 407
    add-int/lit8 v0, v0, -0x1

    .line 410
    :cond_1
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 411
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v4

    .line 412
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v6, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 413
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-ge v6, v5, :cond_2

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    goto :goto_3

    :cond_2
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    .line 415
    :goto_3
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    if-eq v5, v7, :cond_3

    .line 416
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 417
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 418
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 419
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v5, v0, v5

    int-to-long v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 420
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 421
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 422
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_1a

    .line 424
    :cond_3
    const/16 v4, 0x8

    iput v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 426
    :pswitch_2
    nop

    .line 427
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 428
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 429
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 430
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v0, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 431
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 432
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 433
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v0, v10}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 370
    :pswitch_3
    if-nez v5, :cond_9

    .line 371
    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v6, v7, :cond_5

    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_5

    .line 372
    nop

    .line 373
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_4

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v11

    sub-int/2addr v5, v10

    goto :goto_4

    :cond_4
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v11

    :goto_4
    move v6, v11

    .line 375
    :cond_5
    if-nez v5, :cond_9

    .line 376
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 377
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v4

    .line 378
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 379
    iget-object v6, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-ge v5, v6, :cond_6

    iget-object v6, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v10

    goto :goto_5

    :cond_6
    iget-object v6, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v6, v6, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v5

    .line 381
    :goto_5
    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v5, v7, :cond_8

    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v7, v7, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_8

    .line 382
    nop

    .line 383
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-lez v5, :cond_7

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v11

    sub-int/2addr v5, v10

    goto :goto_6

    :cond_7
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v11

    :goto_6
    move v6, v11

    goto :goto_7

    :cond_8
    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    .line 385
    :goto_7
    if-nez v5, :cond_9

    .line 386
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 387
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 388
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 389
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v5, v0, v5

    int-to-long v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 390
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 391
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 392
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_1a

    .line 396
    :cond_9
    nop

    .line 398
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v6, 0x1

    iget v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->lit:I

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    .line 399
    add-int/lit8 v5, v5, -0x1

    .line 401
    iput v11, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 402
    move v6, v7

    move v4, v11

    goto/16 :goto_1

    :goto_8
    :pswitch_4
    move v12, v2

    move v8, v3

    move v15, v0

    move v13, v1

    move v14, v4

    goto :goto_a

    .line 299
    :pswitch_5
    iget v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->get:I

    .line 301
    nop

    .line 301
    :goto_9
    if-lt v3, v7, :cond_13

    .line 319
    iget v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dist:I

    sget-object v12, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v12, v12, v7

    and-int/2addr v12, v2

    add-int/2addr v8, v12

    iput v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dist:I

    .line 321
    shr-int/2addr v2, v7

    .line 322
    sub-int/2addr v3, v7

    .line 324
    const/4 v7, 0x5

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    goto :goto_8

    .line 326
    :goto_a
    iget v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dist:I

    sub-int v0, v6, v0

    .line 327
    nop

    .line 327
    :goto_b
    if-ltz v0, :cond_12

    .line 330
    move v4, v14

    .line 330
    :goto_c
    iget v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->len:I

    if-nez v1, :cond_a

    .line 367
    iput v11, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 368
    move v2, v12

    move v3, v8

    move v1, v13

    move v0, v15

    goto/16 :goto_1

    .line 332
    :cond_a
    if-nez v5, :cond_10

    .line 333
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v6, v1, :cond_c

    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-eqz v1, :cond_c

    .line 334
    nop

    .line 335
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-lez v1, :cond_b

    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v1, v11

    sub-int/2addr v1, v10

    :goto_d
    move v5, v1

    goto :goto_e

    :cond_b
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v1, v11

    goto :goto_d

    :goto_e
    move v6, v11

    .line 337
    :cond_c
    if-nez v5, :cond_10

    .line 338
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 339
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v4

    .line 340
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 341
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-ge v1, v2, :cond_d

    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v10

    goto :goto_f

    :cond_d
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v2, v1

    .line 343
    :goto_f
    iget-object v3, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v1, v3, :cond_f

    iget-object v3, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-eqz v3, :cond_f

    .line 344
    nop

    .line 345
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-lez v1, :cond_e

    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v1, v11

    sub-int/2addr v1, v10

    goto :goto_10

    :cond_e
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v1, v11

    :goto_10
    move v5, v1

    move v6, v11

    goto :goto_11

    :cond_f
    move v5, v2

    move v6, v1

    .line 348
    :goto_11
    if-nez v5, :cond_10

    .line 349
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 350
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v8, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 351
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v13, v0, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 352
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v3, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v3, v15, v3

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 353
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v15, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 354
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 355
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_1a

    .line 360
    :cond_10
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget-object v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v2, v6, 0x1

    iget-object v3, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v3, v0

    aput-byte v0, v1, v6

    .line 361
    add-int/lit8 v5, v5, -0x1

    .line 363
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    if-ne v7, v0, :cond_11

    .line 364
    move v0, v11

    goto :goto_12

    :cond_11
    move v0, v7

    .line 365
    :goto_12
    iget v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->len:I

    sub-int/2addr v1, v10

    iput v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->len:I

    move v6, v2

    goto/16 :goto_c

    .line 328
    :cond_12
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    add-int/2addr v0, v1

    goto/16 :goto_b

    .line 302
    :cond_13
    if-eqz v1, :cond_14

    .line 303
    nop

    .line 314
    add-int/lit8 v1, v1, -0x1

    .line 315
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v3

    or-int/2addr v2, v0

    .line 316
    add-int/lit8 v3, v3, 0x8

    move v0, v8

    move v4, v11

    goto/16 :goto_9

    .line 306
    :cond_14
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 307
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 308
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 309
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v5, v0, v5

    int-to-long v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 310
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 311
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 312
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_1a

    .line 219
    :pswitch_6
    iget v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->get:I

    .line 221
    nop

    .line 221
    :goto_13
    if-lt v3, v7, :cond_19

    .line 239
    iget v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->len:I

    sget-object v16, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v16, v16, v7

    and-int v16, v2, v16

    add-int v8, v8, v16

    iput v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->len:I

    .line 241
    shr-int/2addr v2, v7

    .line 242
    sub-int/2addr v3, v7

    .line 244
    iget-byte v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dbits:B

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->need:I

    .line 245
    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dtree:[I

    iput-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    .line 246
    iget v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dtree_index:I

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree_index:I

    .line 247
    iput v14, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 249
    :pswitch_7
    iget v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->need:I

    .line 251
    nop

    .line 251
    :goto_14
    if-lt v3, v7, :cond_17

    .line 269
    iget v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree_index:I

    sget-object v16, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v16, v7

    and-int/2addr v7, v2

    add-int/2addr v7, v8

    mul-int/2addr v7, v14

    .line 271
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    add-int v16, v7, v10

    aget v8, v8, v16

    shr-int/2addr v2, v8

    .line 272
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    aget v8, v8, v16

    sub-int/2addr v3, v8

    .line 274
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    aget v8, v8, v7

    .line 275
    and-int/lit8 v16, v8, 0x10

    if-eqz v16, :cond_15

    .line 276
    and-int/lit8 v8, v8, 0xf

    iput v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->get:I

    .line 277
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    add-int/2addr v7, v13

    aget v7, v8, v7

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dist:I

    .line 278
    const/4 v7, 0x4

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 279
    goto/16 :goto_1

    .line 281
    :cond_15
    and-int/lit8 v16, v8, 0x40

    if-nez v16, :cond_16

    .line 282
    iput v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->need:I

    .line 283
    div-int v8, v7, v14

    iget-object v12, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    add-int/2addr v7, v13

    aget v7, v12, v7

    add-int/2addr v7, v8

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree_index:I

    .line 284
    goto/16 :goto_1

    .line 286
    :cond_16
    iput v12, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 287
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v5, "invalid distance code"

    iput-object v5, v4, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 288
    nop

    .line 290
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 291
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 292
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 293
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v0, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 294
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 295
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 296
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_2

    .line 252
    :cond_17
    if-eqz v1, :cond_18

    .line 253
    nop

    .line 264
    add-int/lit8 v1, v1, -0x1

    .line 265
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v3

    or-int/2addr v2, v0

    .line 266
    add-int/lit8 v3, v3, 0x8

    move v0, v8

    move v4, v11

    goto/16 :goto_14

    .line 256
    :cond_18
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 257
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 258
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 259
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v5, v0, v5

    int-to-long v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 260
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 261
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 262
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_1a

    .line 222
    :cond_19
    if-eqz v1, :cond_1a

    .line 223
    nop

    .line 234
    add-int/lit8 v1, v1, -0x1

    .line 235
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v3

    or-int/2addr v2, v0

    .line 236
    add-int/lit8 v3, v3, 0x8

    move v0, v8

    move v4, v11

    goto/16 :goto_13

    .line 226
    :cond_1a
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 227
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 228
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 229
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v5, v0, v5

    int-to-long v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 230
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 231
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 232
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_1a

    :pswitch_8
    move v11, v8

    goto/16 :goto_17

    .line 131
    :pswitch_9
    const/16 v7, 0x102

    if-lt v5, v7, :cond_1d

    const/16 v7, 0xa

    if-lt v1, v7, :cond_1d

    .line 133
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 134
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 135
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 136
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v0, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 137
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 138
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 139
    iget-byte v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->lbits:B

    iget-byte v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dbits:B

    iget-object v3, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->ltree:[I

    iget v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->ltree_index:I

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dtree:[I

    iget v6, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->dtree_index:I

    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    move-object/from16 v16, v0

    move-object v0, v9

    move v11, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_fast(II[II[IILcom/jcraft/jsch/jzlib/InfBlocks;Lcom/jcraft/jsch/jzlib/ZStream;)I

    move-result v4

    .line 141
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 142
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 143
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v2, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 144
    iget-object v3, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v3, v3, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 145
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v6, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 146
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    if-ge v6, v5, :cond_1b

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->read:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v10

    goto :goto_15

    :cond_1b
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v6

    .line 148
    :goto_15
    if-eqz v4, :cond_1e

    .line 149
    if-ne v4, v10, :cond_1c

    goto :goto_16

    :cond_1c
    move v11, v12

    :goto_16
    iput v11, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 150
    goto :goto_19

    :cond_1d
    move v11, v8

    .line 153
    :cond_1e
    iget-byte v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->lbits:B

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->need:I

    .line 154
    iget-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->ltree:[I

    iput-object v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    .line 155
    iget v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->ltree_index:I

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree_index:I

    .line 157
    iput v10, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 159
    :goto_17
    iget v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->need:I

    .line 161
    nop

    .line 161
    :goto_18
    if-lt v3, v7, :cond_23

    .line 179
    iget v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree_index:I

    sget-object v16, Lcom/jcraft/jsch/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v16, v7

    and-int/2addr v7, v2

    add-int/2addr v7, v8

    mul-int/2addr v7, v14

    .line 181
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    add-int v16, v7, v10

    aget v8, v8, v16

    ushr-int/2addr v2, v8

    .line 182
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    aget v8, v8, v16

    sub-int/2addr v3, v8

    .line 184
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    aget v8, v8, v7

    .line 186
    if-nez v8, :cond_1f

    .line 187
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    add-int/2addr v7, v13

    aget v7, v8, v7

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->lit:I

    .line 188
    const/4 v7, 0x6

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 189
    goto :goto_19

    .line 191
    :cond_1f
    and-int/lit8 v16, v8, 0x10

    if-eqz v16, :cond_20

    .line 192
    and-int/lit8 v8, v8, 0xf

    iput v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->get:I

    .line 193
    iget-object v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    add-int/2addr v7, v13

    aget v7, v8, v7

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->len:I

    .line 194
    iput v13, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 195
    goto :goto_19

    .line 197
    :cond_20
    and-int/lit8 v16, v8, 0x40

    if-nez v16, :cond_21

    .line 198
    iput v8, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->need:I

    .line 199
    div-int v8, v7, v14

    iget-object v11, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree:[I

    add-int/2addr v7, v13

    aget v7, v11, v7

    add-int/2addr v7, v8

    iput v7, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->tree_index:I

    .line 200
    goto :goto_19

    .line 202
    :cond_21
    and-int/lit8 v7, v8, 0x20

    if-eqz v7, :cond_22

    .line 203
    iput v11, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 204
    :goto_19
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 206
    :cond_22
    iput v12, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->mode:I

    .line 207
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    const-string v5, "invalid literal/length code"

    iput-object v5, v4, Lcom/jcraft/jsch/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 208
    nop

    .line 210
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 211
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 212
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 213
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v4, v0, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 214
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 215
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 216
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    goto/16 :goto_2

    .line 162
    :cond_23
    if-eqz v1, :cond_24

    .line 163
    nop

    .line 174
    add-int/lit8 v1, v1, -0x1

    .line 175
    iget-object v4, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jsch/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v3

    or-int/2addr v2, v0

    .line 176
    add-int/lit8 v3, v3, 0x8

    move v0, v8

    const/4 v4, 0x0

    goto/16 :goto_18

    .line 166
    :cond_24
    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v2, v5, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitb:I

    .line 167
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v3, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->bitk:I

    .line 168
    iget-object v2, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v1, v2, Lcom/jcraft/jsch/jzlib/ZStream;->avail_in:I

    .line 169
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    iget-object v5, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    sub-int v5, v0, v5

    int-to-long v7, v5

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->total_in:J

    .line 170
    iget-object v1, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->z:Lcom/jcraft/jsch/jzlib/ZStream;

    iput v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->next_in_index:I

    .line 171
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    iput v6, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->write:I

    .line 172
    iget-object v0, v9, Lcom/jcraft/jsch/jzlib/InfCodes;->s:Lcom/jcraft/jsch/jzlib/InfBlocks;

    :goto_1a
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
