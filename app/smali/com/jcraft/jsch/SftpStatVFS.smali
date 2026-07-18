.class public Lcom/jcraft/jsch/SftpStatVFS;
.super Ljava/lang/Object;
.source "SftpStatVFS.java"


# instance fields
.field atime:I

.field private bavail:J

.field private bfree:J

.field private blocks:J

.field private bsize:J

.field extended:[Ljava/lang/String;

.field private favail:J

.field private ffree:J

.field private files:J

.field private flag:J

.field flags:I

.field private frsize:J

.field private fsid:J

.field gid:I

.field mtime:I

.field private namemax:J

.field permissions:I

.field size:J

.field uid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->flags:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->extended:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method static getStatVFS(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 6

    .line 60
    new-instance v0, Lcom/jcraft/jsch/SftpStatVFS;

    invoke-direct {v0}, Lcom/jcraft/jsch/SftpStatVFS;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->bsize:J

    .line 63
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->frsize:J

    .line 64
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->blocks:J

    .line 65
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->bfree:J

    .line 66
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->bavail:J

    .line 67
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->files:J

    .line 68
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->ffree:J

    .line 69
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->favail:J

    .line 70
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->fsid:J

    .line 71
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    long-to-int v1, v1

    .line 72
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jcraft/jsch/SftpStatVFS;->namemax:J

    .line 74
    const/4 p0, 0x1

    and-int v2, v1, p0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    int-to-long v4, p0

    iput-wide v4, v0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    .line 75
    iget-wide v4, v0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    const/4 p0, 0x2

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v3

    :goto_1
    int-to-long v1, p0

    or-long/2addr v1, v4

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    .line 77
    return-object v0
.end method


# virtual methods
.method public getAvail()J
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAvailBlocks()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bavail:J

    return-wide v0
.end method

.method public getAvailForNonRoot()J
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getAvailBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAvailINodes()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->favail:J

    return-wide v0
.end method

.method public getBlockSize()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bsize:J

    return-wide v0
.end method

.method public getBlocks()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->blocks:J

    return-wide v0
.end method

.method public getCapacity()I
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getFileSystemID()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->fsid:J

    return-wide v0
.end method

.method public getFragmentSize()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->frsize:J

    return-wide v0
.end method

.method public getFreeBlocks()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bfree:J

    return-wide v0
.end method

.method public getFreeINodes()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->ffree:J

    return-wide v0
.end method

.method public getINodes()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->files:J

    return-wide v0
.end method

.method public getMaximumFilenameLength()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->namemax:J

    return-wide v0
.end method

.method public getMountFlag()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    return-wide v0
.end method

.method public getSize()J
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsed()J
    .locals 6

    .line 129
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method
