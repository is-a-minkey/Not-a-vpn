.class public Lcom/vpnapp/IpPacketBuilder;
.super Ljava/lang/Object;
.source "IpPacketBuilder.java"


# static fields
.field public static final TCP_ACK:I = 0x10

.field public static final TCP_FIN:I = 0x1

.field public static final TCP_PSH:I = 0x8

.field public static final TCP_RST:I = 0x4

.field public static final TCP_SYN:I = 0x2

.field private static ipIdCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/vpnapp/IpPacketBuilder;->ipIdCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDnsResponse([BI[B)[B
    .locals 18

    move-object/from16 v0, p0

    .line 60
    const/16 v2, 0xc

    sub-int v3, p1, v2

    .line 61
    add-int v4, v2, v3

    add-int/lit8 v5, v4, 0x10

    .line 62
    new-array v5, v5, [B

    .line 63
    const/4 v6, 0x0

    aget-byte v7, v0, v6

    aput-byte v7, v5, v6

    const/4 v7, 0x1

    aget-byte v8, v0, v7

    aput-byte v8, v5, v7

    .line 64
    const/4 v8, 0x2

    const/16 v9, -0x7b

    aput-byte v9, v5, v8

    const/4 v9, 0x3

    const/16 v10, -0x80

    aput-byte v10, v5, v9

    .line 65
    const/4 v10, 0x4

    aput-byte v6, v5, v10

    const/4 v11, 0x5

    aput-byte v7, v5, v11

    .line 66
    const/4 v12, 0x6

    aput-byte v6, v5, v12

    const/4 v13, 0x7

    aput-byte v7, v5, v13

    .line 67
    const/16 v14, 0x8

    aput-byte v6, v5, v14

    const/16 v15, 0x9

    aput-byte v6, v5, v15

    const/16 v16, 0xa

    aput-byte v6, v5, v16

    const/16 v17, 0xb

    aput-byte v6, v5, v17

    .line 68
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    nop

    .line 70
    const/16 v0, -0x40

    aput-byte v0, v5, v4

    add-int v0, v4, v7

    aput-byte v2, v5, v0

    .line 71
    add-int v0, v4, v8

    aput-byte v6, v5, v0

    add-int v0, v4, v9

    aput-byte v7, v5, v0

    .line 72
    add-int v0, v4, v10

    aput-byte v6, v5, v0

    add-int v0, v4, v11

    aput-byte v7, v5, v0

    .line 73
    add-int v0, v4, v12

    aput-byte v6, v5, v0

    add-int v0, v4, v13

    aput-byte v6, v5, v0

    add-int v0, v4, v14

    aput-byte v6, v5, v0

    add-int v0, v4, v15

    const/16 v3, 0x3c

    aput-byte v3, v5, v0

    .line 74
    add-int v0, v4, v16

    aput-byte v6, v5, v0

    add-int v0, v4, v17

    aput-byte v10, v5, v0

    .line 75
    add-int v0, v4, v2

    aget-byte v2, p2, v6

    aput-byte v2, v5, v0

    add-int/lit8 v0, v4, 0xd

    aget-byte v2, p2, v7

    aput-byte v2, v5, v0

    .line 76
    add-int/lit8 v0, v4, 0xe

    aget-byte v2, p2, v8

    aput-byte v2, v5, v0

    add-int/lit8 v0, v4, 0xf

    aget-byte v1, p2, v9

    aput-byte v1, v5, v0

    .line 77
    return-object v5
.end method

.method public static buildTcpPacket(IIIIJJI[B)[B
    .locals 12

    move v0, p0

    move v1, p1

    move-object/from16 v2, p9

    .line 14
    array-length v3, v2

    const/16 v4, 0x14

    add-int/2addr v3, v4

    .line 15
    add-int v5, v4, v3

    .line 16
    new-array v6, v5, [B

    .line 18
    const/4 v7, 0x0

    const/16 v8, 0x45

    aput-byte v8, v6, v7

    const/4 v8, 0x1

    aput-byte v7, v6, v8

    .line 19
    const/16 v9, 0x8

    shr-int v10, v5, v9

    int-to-byte v10, v10

    const/4 v11, 0x2

    aput-byte v10, v6, v11

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v10, 0x3

    aput-byte v5, v6, v10

    .line 20
    sget v5, Lcom/vpnapp/IpPacketBuilder;->ipIdCounter:I

    shr-int/2addr v5, v9

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v10, 0x4

    aput-byte v5, v6, v10

    sget v5, Lcom/vpnapp/IpPacketBuilder;->ipIdCounter:I

    add-int/2addr v8, v5

    sput v8, Lcom/vpnapp/IpPacketBuilder;->ipIdCounter:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v8, 0x5

    aput-byte v5, v6, v8

    .line 21
    const/4 v5, 0x6

    const/16 v8, 0x40

    aput-byte v8, v6, v5

    const/4 v10, 0x7

    aput-byte v7, v6, v10

    .line 22
    aput-byte v8, v6, v9

    const/16 v8, 0x9

    aput-byte v5, v6, v8

    .line 23
    const/16 v5, 0xc

    invoke-static {v6, v5, v0}, Lcom/vpnapp/IpPacketBuilder;->putInt([BII)V

    const/16 v5, 0x10

    invoke-static {v6, v5, v1}, Lcom/vpnapp/IpPacketBuilder;->putInt([BII)V

    .line 24
    invoke-static {v6, v7, v4}, Lcom/vpnapp/IpPacketBuilder;->ipChecksum([BII)S

    move-result v5

    const/16 v8, 0xa

    invoke-static {v6, v8, v5}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 26
    move v5, p2

    int-to-short v5, v5

    invoke-static {v6, v4, v5}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 27
    move v4, p3

    int-to-short v4, v4

    const/16 v5, 0x16

    invoke-static {v6, v5, v4}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 28
    const-wide v4, 0xffffffffL

    and-long v8, p4, v4

    long-to-int v8, v8

    const/16 v9, 0x18

    invoke-static {v6, v9, v8}, Lcom/vpnapp/IpPacketBuilder;->putInt([BII)V

    .line 29
    and-long v4, p6, v4

    long-to-int v4, v4

    const/16 v5, 0x1c

    invoke-static {v6, v5, v4}, Lcom/vpnapp/IpPacketBuilder;->putInt([BII)V

    .line 30
    const/16 v4, 0x20

    const/16 v5, 0x50

    aput-byte v5, v6, v4

    .line 31
    move/from16 v4, p8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x21

    aput-byte v4, v6, v5

    .line 32
    const/16 v4, 0x22

    const/4 v5, -0x1

    aput-byte v5, v6, v4

    const/16 v4, 0x23

    aput-byte v5, v6, v4

    .line 33
    const/16 v4, 0x26

    aput-byte v7, v6, v4

    const/16 v4, 0x27

    aput-byte v7, v6, v4

    .line 35
    array-length v4, v2

    const/16 v5, 0x28

    invoke-static {v2, v7, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-static {v6, v0, v1, v3}, Lcom/vpnapp/IpPacketBuilder;->tcpChecksum([BIII)S

    move-result v0

    const/16 v1, 0x24

    invoke-static {v6, v1, v0}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 37
    return-object v6
.end method

.method public static buildUdpPacket(IIII[B)[B
    .locals 9

    .line 41
    array-length v0, p4

    const/16 v1, 0x8

    add-int/2addr v0, v1

    .line 42
    const/16 v2, 0x14

    add-int v3, v2, v0

    .line 43
    new-array v4, v3, [B

    .line 44
    const/4 v5, 0x0

    const/16 v6, 0x45

    aput-byte v6, v4, v5

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    .line 45
    shr-int v7, v3, v1

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v4, v8

    int-to-byte v3, v3

    const/4 v7, 0x3

    aput-byte v3, v4, v7

    .line 46
    sget v3, Lcom/vpnapp/IpPacketBuilder;->ipIdCounter:I

    shr-int/2addr v3, v1

    int-to-byte v3, v3

    const/4 v7, 0x4

    aput-byte v3, v4, v7

    sget v3, Lcom/vpnapp/IpPacketBuilder;->ipIdCounter:I

    add-int/2addr v6, v3

    sput v6, Lcom/vpnapp/IpPacketBuilder;->ipIdCounter:I

    int-to-byte v3, v3

    const/4 v6, 0x5

    aput-byte v3, v4, v6

    .line 47
    const/4 v3, 0x6

    const/16 v6, 0x40

    aput-byte v6, v4, v3

    const/4 v3, 0x7

    aput-byte v5, v4, v3

    .line 48
    aput-byte v6, v4, v1

    const/16 v1, 0x9

    const/16 v3, 0x11

    aput-byte v3, v4, v1

    .line 49
    const/16 v1, 0xc

    invoke-static {v4, v1, p0}, Lcom/vpnapp/IpPacketBuilder;->putInt([BII)V

    const/16 p0, 0x10

    invoke-static {v4, p0, p1}, Lcom/vpnapp/IpPacketBuilder;->putInt([BII)V

    .line 50
    invoke-static {v4, v5, v2}, Lcom/vpnapp/IpPacketBuilder;->ipChecksum([BII)S

    move-result p0

    const/16 p1, 0xa

    invoke-static {v4, p1, p0}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 51
    int-to-short p0, p2

    invoke-static {v4, v2, p0}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 52
    int-to-short p0, p3

    const/16 p1, 0x16

    invoke-static {v4, p1, p0}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 53
    int-to-short p0, v0

    const/16 p1, 0x18

    invoke-static {v4, p1, p0}, Lcom/vpnapp/IpPacketBuilder;->putShort([BIS)V

    .line 54
    const/16 p0, 0x1a

    aput-byte v5, v4, p0

    const/16 p0, 0x1b

    aput-byte v5, v4, p0

    .line 55
    array-length p0, p4

    const/16 p1, 0x1c

    invoke-static {p4, v5, v4, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-object v4
.end method

.method public static getInt([BI)I
    .locals 2

    .line 110
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static getShortU([BI)I
    .locals 1

    .line 113
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static ipChecksum([BII)S
    .locals 4

    .line 81
    nop

    .line 82
    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    .line 84
    rem-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_0

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    .line 85
    :cond_0
    :goto_1
    shr-int/lit8 p0, v0, 0x10

    const p1, 0xffff

    if-nez p0, :cond_1

    .line 86
    not-int p0, v0

    and-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_1
    and-int/2addr p1, v0

    add-int v0, p1, p0

    goto :goto_1

    .line 83
    :cond_2
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 82
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static putInt([BII)V
    .locals 2

    .line 106
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 107
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    .line 108
    return-void
.end method

.method public static putShort([BIS)V
    .locals 1

    .line 103
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    .line 104
    return-void
.end method

.method private static tcpChecksum([BIII)S
    .locals 4

    .line 90
    nop

    .line 91
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v2, 0x0

    add-int/2addr v0, v2

    and-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 92
    shr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    add-int/2addr p1, v0

    and-int/2addr p2, v1

    add-int/2addr p1, p2

    .line 93
    add-int/lit8 p1, p1, 0x6

    add-int/2addr p1, p3

    .line 94
    nop

    .line 95
    const/16 p2, 0x14

    move v0, p1

    move p1, p2

    :goto_0
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_2

    .line 97
    rem-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    .line 98
    :cond_0
    :goto_1
    shr-int/lit8 p0, v0, 0x10

    if-nez p0, :cond_1

    .line 99
    not-int p0, v0

    and-int/2addr p0, v1

    int-to-short p0, p0

    return p0

    :cond_1
    and-int p1, v0, v1

    add-int v0, p1, p0

    goto :goto_1

    .line 96
    :cond_2
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 95
    add-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method
