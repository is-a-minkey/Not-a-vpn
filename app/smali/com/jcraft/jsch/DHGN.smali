.class abstract Lcom/jcraft/jsch/DHGN;
.super Lcom/jcraft/jsch/KeyExchange;
.source "DHGN.java"


# static fields
.field private static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field private static final SSH_MSG_KEXDH_REPLY:I = 0x1f


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field e:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field private state:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method abstract G()[B
.end method

.method abstract P()[B
.end method

.method public getState()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/jcraft/jsch/DHGN;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iput-object p2, p0, Lcom/jcraft/jsch/DHGN;->V_S:[B

    .line 58
    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->V_C:[B

    .line 59
    iput-object p4, p0, Lcom/jcraft/jsch/DHGN;->I_S:[B

    .line 60
    iput-object p5, p0, Lcom/jcraft/jsch/DHGN;->I_C:[B

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/DHGN;->sha_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-class p4, Lcom/jcraft/jsch/HASH;

    invoke-virtual {p3, p4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    .line 64
    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/Class;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    new-array p5, p4, [Ljava/lang/Object;

    invoke-virtual {p3, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/HASH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    .line 65
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {p3}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    nop

    .line 70
    new-instance p3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->buf:Lcom/jcraft/jsch/Buffer;

    .line 71
    new-instance p3, Lcom/jcraft/jsch/Packet;

    iget-object p5, p0, Lcom/jcraft/jsch/DHGN;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p3, p5}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->packet:Lcom/jcraft/jsch/Packet;

    .line 74
    :try_start_1
    const-string p3, "dh"

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-class p5, Lcom/jcraft/jsch/DH;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    .line 75
    new-array p5, p4, [Ljava/lang/Class;

    invoke-virtual {p3, p5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jcraft/jsch/DH;

    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    .line 76
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->init()V

    .line 77
    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    invoke-virtual {p0}, Lcom/jcraft/jsch/DHGN;->P()[B

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setP([B)V

    .line 82
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    invoke-virtual {p0}, Lcom/jcraft/jsch/DHGN;->G()[B

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/jcraft/jsch/DH;->setG([B)V

    .line 88
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p3}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object p3

    iput-object p3, p0, Lcom/jcraft/jsch/DHGN;->e:[B

    .line 89
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p3}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 90
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p4, 0x1e

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 91
    iget-object p3, p0, Lcom/jcraft/jsch/DHGN;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object p4, p0, Lcom/jcraft/jsch/DHGN;->e:[B

    invoke-virtual {p3, p4}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 93
    if-nez p2, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHGN;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 99
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string p4, "SSH_MSG_KEXDH_INIT sent"

    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p2, "expecting SSH_MSG_KEXDH_REPLY"

    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 104
    :cond_1
    const/16 p1, 0x1f

    iput p1, p0, Lcom/jcraft/jsch/DHGN;->state:I

    .line 105
    return-void

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 67
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    iget v0, p0, Lcom/jcraft/jsch/DHGN;->state:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_0

    .line 182
    return v1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 119
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 120
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    .line 121
    const/16 v2, 0x1f

    if-eq v0, v2, :cond_2

    .line 122
    iget-object p1, p0, Lcom/jcraft/jsch/DHGN;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/jcraft/jsch/DHGN;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type: must be SSH_MSG_KEXDH_REPLY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 125
    :cond_1
    return v1

    .line 128
    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    .line 130
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 133
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    .line 135
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->checkRange()V

    .line 137
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/DHGN;->normalize([B)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/jcraft/jsch/DHGN;->encodeAsMPInt([BZ)[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHGN;->K:[B

    .line 151
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->V_C:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHGN;->encodeAsString([BZ)[B

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 153
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->V_S:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHGN;->encodeAsString([BZ)[B

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 155
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->I_C:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHGN;->encodeAsString([BZ)[B

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 157
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->I_S:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHGN;->encodeAsString([BZ)[B

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 159
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHGN;->encodeAsString([BZ)[B

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 161
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->e:[B

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHGN;->encodeAsMPInt([BZ)[B

    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/DHGN;->encodeAsMPInt([BZ)[B

    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 166
    iget-object v0, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->K:[B

    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->K:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 167
    iget-object v0, p0, Lcom/jcraft/jsch/DHGN;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGN;->H:[B

    .line 170
    nop

    .line 171
    nop

    .line 172
    iget-object v0, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    const/4 v4, 0x2

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 173
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    .line 172
    or-int/2addr v0, v2

    .line 173
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    const/4 v4, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 172
    or-int/2addr v0, v2

    .line 174
    iget-object v2, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    invoke-static {v2, v4, v0}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v2

    .line 175
    add-int/2addr v0, v4

    .line 177
    iget-object v3, p0, Lcom/jcraft/jsch/DHGN;->K_S:[B

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/jcraft/jsch/DHGN;->verify(Ljava/lang/String;[BI[B)Z

    move-result p1

    .line 179
    iput v1, p0, Lcom/jcraft/jsch/DHGN;->state:I

    .line 180
    move v1, p1

    return v1
.end method

.method abstract sha_name()Ljava/lang/String;
.end method
