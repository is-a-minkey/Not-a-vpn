.class final Lcom/jcraft/jsch/jzlib/GZIPHeader;
.super Ljava/lang/Object;
.source "GZIPHeader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final OS_AMIGA:B = 0x1t

.field static final OS_ATARI:B = 0x5t

.field static final OS_CPM:B = 0x9t

.field static final OS_MACOS:B = 0x7t

.field static final OS_MSDOS:B = 0x0t

.field static final OS_OS2:B = 0x6t

.field static final OS_QDOS:B = 0xct

.field static final OS_RISCOS:B = 0xdt

.field static final OS_TOPS20:B = 0xat

.field static final OS_UNIX:B = 0x3t

.field static final OS_UNKNOWN:B = -0x1t

.field static final OS_VMCMS:B = 0x4t

.field static final OS_VMS:B = 0x2t

.field static final OS_WIN32:B = 0xbt

.field static final OS_ZSYSTEM:B = 0x8t


# instance fields
.field comment:[B

.field crc:J

.field done:Z

.field extra:[B

.field private fhcrc:Z

.field hcrc:I

.field mtime:J

.field name:[B

.field os:I

.field text:Z

.field xflags:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->text:Z

    .line 57
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->fhcrc:Z

    .line 59
    const/16 v1, 0xff

    iput v1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->os:I

    .line 65
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->done:Z

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->mtime:J

    .line 38
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 168
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 170
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 172
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    .line 176
    :cond_0
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 178
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    .line 182
    :cond_1
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 184
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    .line 188
    :cond_2
    return-object v0
.end method

.method getCRC()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->crc:J

    return-wide v0
.end method

.method getComment()Ljava/lang/String;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    if-nez v0, :cond_0

    .line 103
    const-string v0, ""

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method getModifiedTime()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->mtime:J

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    if-nez v0, :cond_0

    .line 93
    const-string v0, ""

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method getOS()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->os:I

    return v0
.end method

.method put(Lcom/jcraft/jsch/jzlib/Deflate;)V
    .locals 7

    .line 116
    nop

    .line 117
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->text:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 120
    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->fhcrc:Z

    if-eqz v2, :cond_1

    .line 121
    or-int/lit8 v0, v0, 0x2

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    if-eqz v2, :cond_2

    .line 124
    or-int/lit8 v0, v0, 0x4

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    .line 127
    or-int/2addr v0, v3

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    const/16 v4, 0x10

    if-eqz v2, :cond_4

    .line 130
    or-int/2addr v0, v4

    .line 132
    :cond_4
    nop

    .line 133
    iget v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 134
    const/4 v2, 0x4

    .line 135
    goto :goto_1

    :cond_5
    iget v2, p1, Lcom/jcraft/jsch/jzlib/Deflate;->level:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_6

    .line 136
    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    move v2, v1

    .line 139
    :goto_1
    const/16 v5, -0x74e1

    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/jzlib/Deflate;->put_short(I)V

    .line 140
    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 141
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 142
    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->mtime:J

    long-to-int v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 143
    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->mtime:J

    shr-long/2addr v5, v3

    long-to-int v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 144
    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->mtime:J

    shr-long v4, v5, v4

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 145
    iget-wide v4, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->mtime:J

    const/16 v0, 0x18

    shr-long/2addr v4, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 146
    int-to-byte v0, v2

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 147
    iget v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->os:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 149
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    if-eqz v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    array-length v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 151
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    array-length v0, v0

    shr-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 152
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->extra:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte([BII)V

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    if-eqz v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte([BII)V

    .line 157
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte([BII)V

    .line 162
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->put_byte(B)V

    .line 164
    :cond_9
    return-void
.end method

.method setCRC(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->crc:J

    .line 109
    return-void
.end method

.method setComment(Ljava/lang/String;)V
    .locals 1

    .line 98
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->comment:[B

    .line 99
    return-void
.end method

.method setModifiedTime(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->mtime:J

    .line 70
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1

    .line 88
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->name:[B

    .line 89
    return-void
.end method

.method setOS(I)V
    .locals 3

    .line 77
    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xff

    if-ne p1, v0, :cond_2

    .line 78
    :cond_1
    iput p1, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->os:I

    .line 81
    return-void

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "os: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
