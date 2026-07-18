.class abstract Lcom/jcraft/jsch/DHGEX;
.super Lcom/jcraft/jsch/KeyExchange;
.source "DHGEX.java"


# static fields
.field private static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field private static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field private static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field private static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field private e:[B

.field private g:[B

.field protected hash:Ljava/lang/String;

.field max:I

.field min:I

.field private p:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field preferred:I

.field private state:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return v0
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    .line 64
    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    .line 65
    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    .line 66
    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    .line 69
    :try_start_0
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lcom/jcraft/jsch/HASH;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 70
    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Class;

    invoke-virtual {p2, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array p4, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/HASH;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    .line 71
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {p2}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    nop

    .line 76
    new-instance p2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    .line 77
    new-instance p2, Lcom/jcraft/jsch/Packet;

    iget-object p4, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p2, p4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    .line 80
    :try_start_1
    const-string p2, "dh"

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class p4, Lcom/jcraft/jsch/DH;

    invoke-virtual {p2, p4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 81
    const-string p4, "dhgex_min"

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    .line 82
    const-string p4, "dhgex_max"

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    .line 83
    const-string p4, "dhgex_preferred"

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    .line 84
    iget p4, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    if-lez p4, :cond_2

    iget p4, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    if-lez p4, :cond_2

    iget p4, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    if-lez p4, :cond_2

    iget p4, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    if-lt p4, p5, :cond_2

    iget p4, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    if-le p4, p5, :cond_0

    goto/16 :goto_0

    .line 88
    :cond_0
    new-array p4, p3, [Ljava/lang/Class;

    invoke-virtual {p2, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/DH;

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    .line 89
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p2}, Lcom/jcraft/jsch/DH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    nop

    .line 94
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 95
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 96
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 97
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 98
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 99
    iget-object p2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 101
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    .line 103
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "<"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "<"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ") sent"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 102
    invoke-interface {p2, p3, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string p2, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {p1, p3, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 107
    :cond_1
    const/16 p1, 0x1f

    iput p1, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    .line 108
    return-void

    .line 85
    :cond_2
    :goto_0
    :try_start_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid DHGEX sizes: min="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " max="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " preferred="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 73
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x21

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 245
    :pswitch_0
    goto/16 :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 166
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 167
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    .line 168
    if-eq v0, v3, :cond_1

    .line 169
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 172
    :cond_0
    goto/16 :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    .line 177
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 180
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/DH;->setF([B)V

    .line 182
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->checkRange()V

    .line 184
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/DHGEX;->normalize([B)[B

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/DHGEX;->encodeAsMPInt([BZ)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/DHGEX;->K:[B

    .line 203
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsString([BZ)[B

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 205
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsString([BZ)[B

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 207
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsString([BZ)[B

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 209
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsString([BZ)[B

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 211
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsString([BZ)[B

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 213
    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/DHGEX;->encodeInt(I)[B

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 215
    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/DHGEX;->encodeInt(I)[B

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 217
    iget v1, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/DHGEX;->encodeInt(I)[B

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 219
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsMPInt([BZ)[B

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 221
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsMPInt([BZ)[B

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 223
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    invoke-virtual {p0, v1, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsMPInt([BZ)[B

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 225
    invoke-virtual {p0, v0, v4}, Lcom/jcraft/jsch/DHGEX;->encodeAsMPInt([BZ)[B

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 228
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->K:[B

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->K:[B

    array-length v2, v2

    invoke-interface {v0, v1, v4, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 229
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->H:[B

    .line 233
    nop

    .line 234
    nop

    .line 235
    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v4

    shl-int/lit8 v0, v0, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    const/4 v3, 0x2

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    const v3, 0xff00

    and-int/2addr v1, v3

    .line 235
    or-int/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    const/4 v3, 0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 235
    or-int/2addr v0, v1

    .line 237
    iget-object v1, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    invoke-static {v1, v3, v0}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    .line 238
    add-int/2addr v0, v3

    .line 240
    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/jcraft/jsch/DHGEX;->verify(Ljava/lang/String;[BI[B)Z

    move-result v1

    .line 242
    iput v4, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    .line 243
    return v1

    .line 118
    :pswitch_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 119
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 120
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    .line 121
    const/16 v5, 0x1f

    if-eq v0, v5, :cond_3

    .line 122
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 125
    :cond_2
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    .line 129
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    .line 131
    new-instance p1, Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    .line 132
    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->min:I

    if-lt p1, v0, :cond_6

    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->max:I

    if-le p1, v0, :cond_4

    goto :goto_0

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setP([B)V

    .line 137
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->g:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/DH;->setG([B)V

    .line 143
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {p1}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    .line 145
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 146
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 147
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->e:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 148
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    iget-object v0, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 150
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 151
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface {p1, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface {p1, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 155
    :cond_5
    iput v3, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    .line 156
    return v1

    .line 133
    :cond_6
    :goto_0
    move v1, v4

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
