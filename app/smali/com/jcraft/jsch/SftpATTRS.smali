.class public Lcom/jcraft/jsch/SftpATTRS;
.super Ljava/lang/Object;
.source "SftpATTRS.java"


# static fields
.field private static DTF:Ljava/time/format/DateTimeFormatter; = null

.field public static final SSH_FILEXFER_ATTR_ACMODTIME:I = 0x8

.field public static final SSH_FILEXFER_ATTR_EXTENDED:I = -0x80000000

.field public static final SSH_FILEXFER_ATTR_PERMISSIONS:I = 0x4

.field public static final SSH_FILEXFER_ATTR_SIZE:I = 0x1

.field public static final SSH_FILEXFER_ATTR_UIDGID:I = 0x2

.field static final S_IEXEC:I = 0x40

.field static final S_IFBLK:I = 0x6000

.field static final S_IFCHR:I = 0x2000

.field static final S_IFDIR:I = 0x4000

.field static final S_IFIFO:I = 0x1000

.field static final S_IFLNK:I = 0xa000

.field static final S_IFMT:I = 0xf000

.field static final S_IFREG:I = 0x8000

.field static final S_IFSOCK:I = 0xc000

.field static final S_IREAD:I = 0x100

.field static final S_IRGRP:I = 0x20

.field static final S_IROTH:I = 0x4

.field static final S_IRUSR:I = 0x100

.field static final S_ISGID:I = 0x400

.field static final S_ISUID:I = 0x800

.field static final S_ISVTX:I = 0x200

.field static final S_IWGRP:I = 0x10

.field static final S_IWOTH:I = 0x2

.field static final S_IWRITE:I = 0x80

.field static final S_IWUSR:I = 0x80

.field static final S_IXGRP:I = 0x8

.field static final S_IXOTH:I = 0x1

.field static final S_IXUSR:I = 0x40

.field private static final pmask:I = 0xfff


# instance fields
.field atime:I

.field extended:[Ljava/lang/String;

.field flags:I

.field gid:I

.field mtime:I

.field permissions:I

.field size:J

.field uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 137
    const-string v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 136
    sput-object v0, Lcom/jcraft/jsch/SftpATTRS;->DTF:Ljava/time/format/DateTimeFormatter;

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    .line 169
    return-void
.end method

.method static getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 6

    .line 172
    new-instance v0, Lcom/jcraft/jsch/SftpATTRS;

    invoke-direct {v0}, Lcom/jcraft/jsch/SftpATTRS;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    .line 174
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpATTRS;->size:J

    .line 177
    :cond_0
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    .line 179
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    .line 181
    :cond_1
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    .line 184
    :cond_2
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->atime:I

    .line 187
    :cond_3
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    .line 190
    :cond_4
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 191
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 192
    if-lez v1, :cond_6

    .line 193
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    .line 194
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_5

    return-object v0

    .line 195
    :cond_5
    iget-object v3, v0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 196
    iget-object v3, v0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_6
    return-object v0
.end method

.method private isType(I)Z
    .locals 4

    .line 290
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    const v3, 0xf000

    and-int/2addr v0, v3

    if-ne v0, p1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method static toDateString(J)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p0

    .line 141
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 142
    sget-object p1, Lcom/jcraft/jsch/SftpATTRS;->DTF:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method dump(Lcom/jcraft/jsch/Buffer;)V
    .locals 4

    .line 234
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 235
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 236
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->size:J

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 238
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 239
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 240
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 242
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 243
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 245
    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 246
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->atime:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 248
    :cond_3
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 249
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 251
    :cond_4
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 253
    if-lez v0, :cond_6

    .line 254
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_5

    return-void

    .line 255
    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 256
    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_6
    return-void
.end method

.method public getATime()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->atime:I

    return v0
.end method

.method public getAtimeString()Ljava/lang/String;
    .locals 2

    .line 129
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->atime:I

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jcraft/jsch/SftpATTRS;->toDateString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtended()[Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    return v0
.end method

.method public getGId()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    return v0
.end method

.method public getMTime()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    return v0
.end method

.method public getMtimeString()Ljava/lang/String;
    .locals 2

    .line 133
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jcraft/jsch/SftpATTRS;->toDateString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    return v0
.end method

.method public getPermissionsString()Ljava/lang/String;
    .locals 7

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v1

    const/16 v2, 0x2d

    if-eqz v1, :cond_0

    .line 71
    const/16 v1, 0x64

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->isLink()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/16 v1, 0x6c

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :goto_1
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x72

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :goto_2
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x77

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_3
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v1, v1, 0x800

    const/16 v5, 0x78

    const/16 v6, 0x73

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 89
    :cond_4
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 92
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :goto_4
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 97
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :goto_5
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 102
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    :goto_6
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_8

    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 106
    :cond_8
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 109
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :goto_7
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 114
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :goto_8
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 119
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :goto_9
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    .line 122
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 124
    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 326
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->size:J

    return-wide v0
.end method

.method public getUId()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    return v0
.end method

.method public isBlk()Z
    .locals 1

    .line 306
    const/16 v0, 0x6000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isChr()Z
    .locals 1

    .line 302
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isDir()Z
    .locals 1

    .line 298
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isFifo()Z
    .locals 1

    .line 310
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isLink()Z
    .locals 1

    .line 314
    const v0, 0xa000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isReg()Z
    .locals 1

    .line 294
    const v0, 0x8000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isSock()Z
    .locals 1

    .line 318
    const v0, 0xc000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method length()I
    .locals 5

    .line 204
    nop

    .line 206
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 207
    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    move v0, v1

    .line 209
    :goto_0
    iget v2, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 210
    add-int/lit8 v0, v0, 0x8

    .line 212
    :cond_1
    iget v2, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 213
    add-int/lit8 v0, v0, 0x4

    .line 215
    :cond_2
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 216
    add-int/lit8 v0, v0, 0x8

    .line 218
    :cond_3
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 219
    add-int/lit8 v0, v0, 0x4

    .line 220
    iget-object v1, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 221
    if-lez v1, :cond_5

    .line 222
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_4

    return v0

    .line 223
    :cond_4
    add-int/lit8 v0, v0, 0x4

    .line 224
    iget-object v3, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 225
    add-int/lit8 v0, v0, 0x4

    .line 226
    iget-object v3, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_5
    return v0
.end method

.method public setACMODTIME(II)V
    .locals 1

    .line 278
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    .line 279
    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->atime:I

    .line 280
    iput p2, p0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    .line 281
    return-void
.end method

.method setFLAGS(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    .line 264
    return-void
.end method

.method public setPERMISSIONS(I)V
    .locals 1

    .line 284
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    .line 285
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v0, v0, -0x1000

    and-int/lit16 p1, p1, 0xfff

    or-int/2addr p1, v0

    .line 286
    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    .line 287
    return-void
.end method

.method public setSIZE(J)V
    .locals 1

    .line 267
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    .line 268
    iput-wide p1, p0, Lcom/jcraft/jsch/SftpATTRS;->size:J

    .line 269
    return-void
.end method

.method public setUIDGID(II)V
    .locals 1

    .line 272
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    .line 273
    iput p1, p0, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    .line 274
    iput p2, p0, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    .line 275
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getPermissionsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getUId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getGId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getMtimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
