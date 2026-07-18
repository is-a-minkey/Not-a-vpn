.class Lcom/jcraft/jsch/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field private static random:Lcom/jcraft/jsch/Random;


# instance fields
.field ba4:[B

.field buffer:Lcom/jcraft/jsch/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Buffer;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    .line 41
    iput-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 42
    return-void
.end method

.method static setRandom(Lcom/jcraft/jsch/Random;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    .line 35
    return-void
.end method


# virtual methods
.method getBuffer()Lcom/jcraft/jsch/Buffer;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    return-object v0
.end method

.method padding(IZ)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 50
    if-nez p2, :cond_0

    .line 51
    add-int/lit8 v0, v0, -0x4

    .line 53
    :cond_0
    neg-int v1, v0

    const/4 v2, 0x1

    sub-int v3, p1, v2

    and-int/2addr v1, v3

    .line 54
    if-ge v1, p1, :cond_1

    .line 55
    add-int/2addr v1, p1

    .line 57
    :cond_1
    add-int p1, v0, v1

    .line 58
    if-eqz p2, :cond_2

    .line 59
    add-int/lit8 p1, p1, -0x4

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v3, 0x0

    aput-byte v0, p2, v3

    .line 62
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 63
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p2, v2

    .line 64
    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    .line 65
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    iget-object p2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object p2, p2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v0, 0x4

    invoke-static {p1, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    int-to-byte p2, v1

    aput-byte p2, p1, v0

    .line 67
    sget-object p1, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    monitor-enter p1

    .line 68
    :try_start_0
    sget-object p2, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p2, v0, v2, v1}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 67
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 76
    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method reset()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 46
    return-void
.end method

.method shift(III)I
    .locals 4

    .line 79
    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x9

    .line 80
    neg-int v1, v0

    add-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    .line 81
    if-ge v1, p2, :cond_0

    .line 82
    add-int/2addr v1, p2

    .line 83
    :cond_0
    add-int p2, v0, v1

    .line 84
    add-int/2addr p2, p3

    .line 85
    add-int/lit8 p2, p2, 0x20

    .line 88
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length p3, p3

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, -0x9

    sub-int/2addr v1, p1

    if-ge p3, v1, :cond_1

    .line 89
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget p3, p3, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x5

    add-int/lit8 p3, p3, -0x9

    sub-int/2addr p3, p1

    new-array p3, p3, [B

    .line 90
    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p3, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iput-object p3, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 101
    :cond_1
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v2, -0x5

    add-int/lit8 v2, v2, -0x9

    sub-int/2addr v2, p1

    invoke-static {p3, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xa

    iput v1, p3, Lcom/jcraft/jsch/Buffer;->index:I

    .line 104
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p3, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 105
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->index:I

    .line 106
    return p2
.end method

.method unshift(BIII)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v2, 0xe

    invoke-static {v0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-object p3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v0, 0x5

    aput-byte p1, p3, v0

    .line 112
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 p3, 0x6

    iput p3, p1, Lcom/jcraft/jsch/Buffer;->index:I

    .line 113
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 114
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 115
    iget-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    add-int p2, p4, v0

    add-int/lit8 p2, p2, 0x9

    iput p2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    .line 116
    return-void
.end method
