.class public Lcom/jcraft/jsch/HostKey;
.super Ljava/lang/Object;
.source "HostKey.java"


# static fields
.field public static final ECDSA256:I = 0x3

.field public static final ECDSA384:I = 0x4

.field public static final ECDSA521:I = 0x5

.field public static final ED25519:I = 0x6

.field public static final ED448:I = 0x7

.field public static final GUESS:I = 0x0

.field public static final SSHDSS:I = 0x1

.field public static final SSHRSA:I = 0x2

.field public static final UNKNOWN:I = -0x1

.field private static final names:[[B


# instance fields
.field protected comment:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field protected key:[B

.field protected marker:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [[B

    const-string v1, "ssh-dss"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ssh-rsa"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ecdsa-sha2-nistp256"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    const-string v1, "ecdsa-sha2-nistp384"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ecdsa-sha2-nistp521"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 36
    const-string v1, "ssh-ed25519"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ssh-ed448"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 33
    sput-object v0, Lcom/jcraft/jsch/HostKey;->names:[[B

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 63
    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->marker:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    .line 70
    if-nez p3, :cond_7

    .line 71
    const/16 p1, 0x8

    aget-byte p2, p4, p1

    const/16 p3, 0x64

    if-ne p2, p3, :cond_0

    .line 72
    const/4 p1, 0x1

    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 73
    goto :goto_0

    :cond_0
    aget-byte p2, p4, p1

    const/16 p3, 0x72

    if-ne p2, p3, :cond_1

    .line 74
    const/4 p1, 0x2

    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 75
    goto :goto_0

    :cond_1
    aget-byte p2, p4, p1

    const/16 p3, 0x32

    const/16 v0, 0xa

    const/16 v1, 0x65

    if-ne p2, v1, :cond_2

    aget-byte p2, p4, v0

    if-ne p2, p3, :cond_2

    .line 76
    const/4 p1, 0x6

    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 77
    goto :goto_0

    :cond_2
    aget-byte p2, p4, p1

    if-ne p2, v1, :cond_3

    aget-byte p2, p4, v0

    const/16 v0, 0x34

    if-ne p2, v0, :cond_3

    .line 78
    const/4 p1, 0x7

    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 79
    goto :goto_0

    :cond_3
    aget-byte p2, p4, p1

    const/16 v0, 0x14

    const/16 v1, 0x61

    if-ne p2, v1, :cond_4

    aget-byte p2, p4, v0

    if-ne p2, p3, :cond_4

    .line 80
    const/4 p1, 0x3

    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 81
    goto :goto_0

    :cond_4
    aget-byte p2, p4, p1

    if-ne p2, v1, :cond_5

    aget-byte p2, p4, v0

    const/16 p3, 0x33

    if-ne p2, p3, :cond_5

    .line 82
    const/4 p1, 0x4

    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 83
    goto :goto_0

    :cond_5
    aget-byte p1, p4, p1

    if-ne p1, v1, :cond_6

    aget-byte p1, p4, v0

    const/16 p2, 0x35

    if-ne p1, p2, :cond_6

    .line 84
    const/4 p1, 0x5

    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 85
    goto :goto_0

    .line 86
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "invalid key type"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_7
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->type:I

    .line 91
    :goto_0
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    .line 92
    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->comment:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    .line 56
    return-void
.end method

.method private isIncluded(Ljava/lang/String;)Z
    .locals 12

    .line 269
    nop

    .line 270
    iget-object v6, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    .line 271
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 274
    const/4 v9, 0x0

    move v2, v9

    .line 274
    :goto_0
    const/4 v10, 0x1

    if-lt v2, v7, :cond_0

    .line 287
    return v9

    .line 275
    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 276
    const/4 v0, -0x1

    if-ne v11, v0, :cond_2

    .line 277
    sub-int v0, v7, v2

    if-eq v8, v0, :cond_1

    .line 278
    return v9

    .line 279
    :cond_1
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v3, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v9

    return v9

    .line 281
    :cond_2
    sub-int v0, v11, v2

    if-ne v8, v0, :cond_3

    .line 282
    const/4 v1, 0x1

    move-object v0, v6

    move-object v3, p1

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    move v9, v10

    return v9

    .line 285
    :cond_3
    add-int v2, v11, v10

    goto :goto_0
.end method

.method private matchesWildcardPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    return v1

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 238
    const/4 v4, -0x1

    move v6, v1

    move v7, v6

    move v5, v4

    move v8, v7

    .line 238
    :goto_0
    const/16 v9, 0x2a

    if-lt v6, v3, :cond_3

    .line 260
    nop

    .line 260
    :goto_1
    if-ge v7, v2, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v9, :cond_1

    goto :goto_2

    .line 261
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 265
    :cond_2
    :goto_2
    if-ne v7, v2, :cond_8

    move v1, v0

    return v1

    .line 239
    :cond_3
    if-ge v7, v2, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3f

    if-eq v10, v11, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_5

    .line 241
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 242
    add-int/lit8 v6, v6, 0x1

    .line 243
    goto :goto_0

    :cond_5
    if-ge v7, v2, :cond_6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_6

    .line 245
    nop

    .line 246
    nop

    .line 247
    add-int/lit8 v5, v7, 0x1

    .line 248
    move v8, v6

    move v12, v7

    move v7, v5

    move v5, v12

    goto :goto_0

    :cond_6
    if-eq v5, v4, :cond_7

    .line 250
    add-int v7, v5, v0

    .line 251
    add-int/lit8 v8, v8, 0x1

    .line 252
    nop

    .line 253
    move v6, v8

    goto :goto_0

    .line 255
    :cond_7
    return v1

    .line 228
    :cond_8
    return v1
.end method

.method protected static name2type(Ljava/lang/String;)I
    .locals 3

    .line 108
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/jcraft/jsch/HostKey;->names:[[B

    array-length v1, v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 113
    return v2

    .line 109
    :cond_0
    sget-object v1, Lcom/jcraft/jsch/HostKey;->names:[[B

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerPrint(Lcom/jcraft/jsch/JSch;)Ljava/lang/String;
    .locals 6

    .line 121
    nop

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "FingerprintHash"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/jcraft/jsch/HASH;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 125
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HASH;

    .line 126
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getFingerPrint: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v0}, Lcom/jcraft/jsch/Util;->getFingerPrint(Lcom/jcraft/jsch/HASH;[BZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    iget-object v1, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .line 100
    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 101
    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "UNKNOWN"

    return-object v0

    .line 102
    :cond_1
    :goto_0
    sget-object v0, Lcom/jcraft/jsch/HostKey;->names:[[B

    iget v2, p0, Lcom/jcraft/jsch/HostKey;->type:I

    sub-int v1, v2, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isMatched(Ljava/lang/String;)Z
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/HostKey;->isIncluded(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isWildcardMatched(Ljava/lang/String;)Z
    .locals 7

    .line 177
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 178
    return v1

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    .line 182
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 187
    :cond_1
    nop

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 189
    move v4, v1

    .line 189
    :goto_0
    if-lt v4, v3, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 192
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 193
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/HostKey;->matchesWildcardPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 195
    goto :goto_2

    .line 206
    :cond_3
    :goto_1
    return v1

    .line 199
    :cond_4
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-direct {p0, v4, p1}, Lcom/jcraft/jsch/HostKey;->matchesWildcardPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 201
    :goto_2
    move v1, v0

    return v1

    .line 203
    :cond_5
    add-int v4, v5, v0

    goto :goto_0

    .line 183
    :cond_6
    return v1
.end method
