.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;
.source "ChannelSftp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$Header;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntry;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    }
.end annotation


# static fields
.field public static final APPEND:I = 0x2

.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x8000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x200000

.field private static final MAX_MSG_LENGTH:I = 0x40000

.field public static final OVERWRITE:I = 0x0

.field public static final RESUME:I = 0x1

.field private static final SSH_FILEXFER_ATTR_ACMODTIME:I = 0x8

.field private static final SSH_FILEXFER_ATTR_EXTENDED:I = -0x80000000

.field private static final SSH_FILEXFER_ATTR_PERMISSIONS:I = 0x4

.field private static final SSH_FILEXFER_ATTR_SIZE:I = 0x1

.field private static final SSH_FILEXFER_ATTR_UIDGID:I = 0x2

.field private static final SSH_FXF_APPEND:I = 0x4

.field private static final SSH_FXF_CREAT:I = 0x8

.field private static final SSH_FXF_EXCL:I = 0x20

.field private static final SSH_FXF_READ:I = 0x1

.field private static final SSH_FXF_TRUNC:I = 0x10

.field private static final SSH_FXF_WRITE:I = 0x2

.field private static final SSH_FXP_ATTRS:B = 0x69t

.field private static final SSH_FXP_CLOSE:B = 0x4t

.field private static final SSH_FXP_DATA:B = 0x67t

.field private static final SSH_FXP_EXTENDED:B = -0x38t

.field private static final SSH_FXP_EXTENDED_REPLY:B = -0x37t

.field private static final SSH_FXP_FSETSTAT:B = 0xat

.field private static final SSH_FXP_FSTAT:B = 0x8t

.field private static final SSH_FXP_HANDLE:B = 0x66t

.field private static final SSH_FXP_INIT:B = 0x1t

.field private static final SSH_FXP_LSTAT:B = 0x7t

.field private static final SSH_FXP_MKDIR:B = 0xet

.field private static final SSH_FXP_NAME:B = 0x68t

.field private static final SSH_FXP_OPEN:B = 0x3t

.field private static final SSH_FXP_OPENDIR:B = 0xbt

.field private static final SSH_FXP_READ:B = 0x5t

.field private static final SSH_FXP_READDIR:B = 0xct

.field private static final SSH_FXP_READLINK:B = 0x13t

.field private static final SSH_FXP_REALPATH:B = 0x10t

.field private static final SSH_FXP_REMOVE:B = 0xdt

.field private static final SSH_FXP_RENAME:B = 0x12t

.field private static final SSH_FXP_RMDIR:B = 0xft

.field private static final SSH_FXP_SETSTAT:B = 0x9t

.field private static final SSH_FXP_STAT:B = 0x11t

.field private static final SSH_FXP_STATUS:B = 0x65t

.field private static final SSH_FXP_SYMLINK:B = 0x14t

.field private static final SSH_FXP_VERSION:B = 0x2t

.field private static final SSH_FXP_WRITE:B = 0x6t

.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field private static final file_separator:Ljava/lang/String;

.field private static final file_separatorc:C

.field private static fs_is_bs:Z


# instance fields
.field private ackid:[I

.field private buf:Lcom/jcraft/jsch/Buffer;

.field private client_version:I

.field private cwd:Ljava/lang/String;

.field private extension_hardlink:Z

.field private extension_posix_rename:Z

.field private extension_statvfs:Z

.field private extensions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fEncoding:Ljava/nio/charset/Charset;

.field private fEncoding_is_utf8:Z

.field private home:Ljava/lang/String;

.field private interactive:Z

.field private io_in:Ljava/io/InputStream;

.field private lcwd:Ljava/lang/String;

.field private obuf:Lcom/jcraft/jsch/Buffer;

.field private opacket:Lcom/jcraft/jsch/Packet;

.field private packet:Lcom/jcraft/jsch/Packet;

.field private rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

.field private seq:I

.field private server_version:I

.field private useWriteFlushWorkaround:Z

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 156
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    .line 157
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    .line 158
    sget-char v0, Ljava/io/File;->separatorChar:C

    int-to-byte v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->interactive:Z

    .line 124
    const/4 v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    .line 125
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    .line 134
    const/4 v2, 0x3

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->client_version:I

    .line 135
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    .line 136
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->client_version:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->version:Ljava/lang/String;

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    .line 139
    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    .line 141
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    .line 142
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    .line 144
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    .line 164
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    .line 165
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    .line 167
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->useWriteFlushWorkaround:Z

    .line 169
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 203
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lwsize_max:I

    .line 204
    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lwsize:I

    .line 205
    const v0, 0x8000

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lmpsize:I

    .line 206
    return-void
.end method

.method private _get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 1004
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1006
    const/4 v9, 0x4

    :try_start_0
    invoke-direct {v7, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENR([B)V

    .line 1008
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1009
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    .line 1010
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1011
    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1013
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v4, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1015
    const/16 v10, 0x65

    if-eq v3, v10, :cond_0

    const/16 v2, 0x66

    if-eq v3, v2, :cond_0

    .line 1016
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v9, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1019
    :cond_0
    if-ne v3, v10, :cond_1

    .line 1020
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    .line 1021
    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1024
    :cond_1
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v11

    .line 1026
    nop

    .line 1027
    const/4 v12, 0x1

    const-wide/16 v2, 0x0

    move/from16 v4, p4

    if-ne v4, v12, :cond_2

    .line 1028
    add-long v2, v2, p5

    .line 1031
    :cond_2
    nop

    .line 1032
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    .line 1033
    nop

    .line 1035
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0xd

    .line 1036
    iget v5, v7, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/16 v6, 0x400

    if-nez v5, :cond_3

    .line 1037
    nop

    .line 1042
    move v5, v12

    move-wide v13, v2

    move v15, v6

    goto :goto_0

    :cond_3
    move v5, v12

    move-wide v13, v2

    move v15, v4

    :goto_0
    move-object v6, v1

    .line 1042
    :goto_1
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count()I

    move-result v1

    if-lt v1, v5, :cond_10

    .line 1047
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v1, v6}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v6

    .line 1048
    iget v1, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1049
    iget v2, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1051
    nop

    .line 1053
    :try_start_1
    iget-object v3, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget v4, v6, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->get(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    move-result-object v3
    :try_end_1
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1054
    nop

    .line 1061
    if-ne v2, v10, :cond_5

    .line 1062
    :try_start_2
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1063
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    .line 1064
    if-ne v4, v12, :cond_4

    .line 1065
    move-object/from16 v17, v6

    goto :goto_2

    .line 1067
    :cond_4
    iget-object v10, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v7, v10, v4}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1070
    :cond_5
    const/16 v4, 0x67

    if-eq v2, v4, :cond_6

    .line 1071
    move-object/from16 v17, v6

    :goto_2
    move-object/from16 v6, p2

    goto/16 :goto_6

    .line 1074
    :cond_6
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1075
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {v7, v2, v4, v9}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 1076
    add-int/lit8 v1, v1, -0x4

    .line 1077
    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    .line 1084
    sub-int/2addr v1, v2

    .line 1086
    nop

    .line 1087
    move v10, v2

    .line 1087
    :goto_3
    if-gtz v10, :cond_a

    .line 1114
    if-lez v1, :cond_7

    .line 1115
    int-to-long v9, v1

    invoke-direct {v7, v9, v10}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    .line 1118
    :cond_7
    int-to-long v1, v2

    iget-wide v9, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    cmp-long v4, v1, v9

    if-gez v4, :cond_8

    .line 1119
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget-object v9, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v6, v9}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 1120
    iget-wide v9, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    add-long/2addr v9, v1

    iget-wide v13, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    sub-long v1, v13, v1

    long-to-int v13, v1

    iget-object v14, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object v1, v7

    move-object v2, v11

    move-object v12, v3

    move-wide v3, v9

    move v9, v5

    move v5, v13

    move-object v10, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    .line 1121
    iget-wide v1, v12, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    iget-wide v3, v12, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    add-long v13, v1, v3

    goto :goto_4

    :cond_8
    move-object v10, v6

    move v9, v5

    .line 1124
    :goto_4
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v1

    if-ge v9, v1, :cond_9

    .line 1125
    add-int/lit8 v1, v9, 0x1

    move-object/from16 v6, p2

    move-object v3, v10

    move v5, v1

    goto/16 :goto_7

    :cond_9
    move-object/from16 v6, p2

    move-object v3, v10

    move v5, v9

    goto/16 :goto_7

    :cond_a
    move-object v12, v3

    move v9, v5

    move-object v3, v6

    .line 1088
    nop

    .line 1089
    iget-object v5, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v5, v5

    if-le v10, v5, :cond_b

    .line 1090
    iget-object v5, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v5, v5

    goto :goto_5

    :cond_b
    move v5, v10

    .line 1092
    :goto_5
    iget-object v6, v7, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1093
    if-gez v4, :cond_c

    .line 1094
    move-object/from16 v6, p2

    move-object/from16 v17, v3

    goto :goto_6

    .line 1097
    :cond_c
    iget-object v5, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v6, p2

    invoke-virtual {v6, v5, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1099
    move-object/from16 v17, v3

    int-to-long v2, v4

    .line 1100
    sub-int/2addr v10, v4

    .line 1102
    if-eqz v8, :cond_f

    .line 1103
    invoke-interface {v8, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1104
    int-to-long v2, v10

    invoke-direct {v7, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    .line 1105
    if-lez v1, :cond_d

    .line 1106
    int-to-long v1, v1

    invoke-direct {v7, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    .line 1108
    nop

    .line 1128
    :cond_d
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 1130
    if-eqz v8, :cond_e

    .line 1131
    invoke-interface/range {p3 .. p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 1133
    :cond_e
    iget-object v1, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget-object v2, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 1135
    invoke-direct {v7, v11, v3}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    .line 1136
    nop

    .line 1141
    return-void

    :cond_f
    move-object/from16 v3, v17

    const/4 v4, 0x0

    move v5, v9

    move/from16 v2, v16

    move-object v6, v3

    move-object v3, v12

    const/4 v9, 0x4

    const/4 v12, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v3, v6

    move v9, v5

    move-object/from16 v6, p2

    move-object v1, v0

    .line 1055
    iget-wide v1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->offset:J

    .line 1056
    iget v4, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    int-to-long v4, v4

    invoke-direct {v7, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    .line 1057
    iget-object v4, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    iget-object v5, v7, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v3, v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 1058
    move v5, v9

    move-wide v13, v1

    .line 1040
    :goto_7
    const/4 v12, 0x1

    const/16 v10, 0x65

    const/4 v9, 0x4

    move-object v6, v3

    goto/16 :goto_1

    :cond_10
    move v9, v5

    .line 1043
    iget-object v10, v7, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object v1, v7

    move-object v2, v11

    move-wide v3, v13

    move v5, v15

    move-object v12, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    .line 1044
    int-to-long v1, v15

    add-long/2addr v13, v1

    const/16 v10, 0x65

    move v5, v9

    move-object v6, v12

    const/4 v12, 0x1

    const/4 v9, 0x4

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1137
    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_11

    .line 1138
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    .line 1139
    :cond_11
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private _lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2246
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendLSTAT([B)V

    .line 2248
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2249
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 2250
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2251
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2253
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2255
    const/16 v1, 0x69

    if-eq p1, v1, :cond_1

    .line 2256
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 2257
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2258
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2260
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2262
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    .line 2263
    return-object p1

    .line 2264
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    nop

    .line 2265
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    .line 2266
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2267
    :cond_2
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private _realpath(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2272
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendREALPATH([B)V

    .line 2274
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2275
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 2276
    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2277
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2279
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2281
    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v1, 0x68

    if-eq p1, v1, :cond_0

    .line 2282
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v0, ""

    const/4 v1, 0x4

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2285
    :cond_0
    if-ne p1, v0, :cond_1

    .line 2286
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2287
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2289
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2291
    nop

    .line 2292
    const/4 v0, 0x0

    .line 2292
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-gtz p1, :cond_2

    .line 2299
    return-object v0

    .line 2293
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 2294
    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v2, 0x3

    if-gt p1, v2, :cond_3

    .line 2295
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 2297
    :cond_3
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move p1, v1

    goto :goto_0
.end method

.method private _sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2416
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendCLOSE([B)V

    .line 2417
    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p1

    return p1
.end method

.method private _setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2323
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendSETSTAT([BLcom/jcraft/jsch/SftpATTRS;)V

    .line 2325
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2326
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 2327
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2328
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2330
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2332
    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    .line 2333
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2335
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2336
    if-eqz p1, :cond_1

    .line 2337
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2339
    nop

    .line 2344
    :cond_1
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_2

    .line 2341
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2342
    :cond_2
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private _stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2172
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    return-object p1
.end method

.method private _stat([B)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2145
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTAT([B)V

    .line 2147
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2148
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 2149
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2150
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2152
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2154
    const/16 v1, 0x69

    if-eq p1, v1, :cond_1

    .line 2155
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 2156
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2157
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2159
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2161
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    .line 2162
    return-object p1

    .line 2163
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    nop

    .line 2164
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    .line 2165
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2166
    :cond_2
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private _statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2226
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_statVFS([B)Lcom/jcraft/jsch/SftpStatVFS;

    move-result-object p1

    return-object p1
.end method

.method private _statVFS([B)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2192
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    if-nez v0, :cond_0

    .line 2193
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v0, "statvfs@openssh.com is not supported"

    const/16 v1, 0x8

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2198
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTATVFS([B)V

    .line 2200
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2201
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 2202
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2203
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2205
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2207
    const/16 v1, 0xc9

    if-eq p1, v1, :cond_2

    .line 2208
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 2209
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2210
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2212
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2214
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpStatVFS;->getStatVFS(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;

    move-result-object p1

    .line 2215
    return-object p1

    .line 2217
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    nop

    .line 2218
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_3

    .line 2219
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2220
    :cond_3
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$10(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2981
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$11(Lcom/jcraft/jsch/ChannelSftp;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2966
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    return-void
.end method

.method static synthetic access$12(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    return p0
.end method

.method static synthetic access$13(Lcom/jcraft/jsch/ChannelSftp;)Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/jcraft/jsch/ChannelSftp;->useWriteFlushWorkaround:Z

    return p0
.end method

.method static synthetic access$14(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2572
    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->sendWRITE([BJ[BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$15(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$16(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2396
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$17(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2415
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    return-object p0
.end method

.method static synthetic access$19(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    return p0
.end method

.method static synthetic access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object p0
.end method

.method static synthetic access$21(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2601
    invoke-direct/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    return-void
.end method

.method static synthetic access$22(I)Ljava/lang/String;
    .locals 0

    .line 2824
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelSftp;->sshFxpDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$23(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2945
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    return-void
.end method

.method static synthetic access$24(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;
    .locals 0

    .line 2910
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sftpStatusMessage(Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$25(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2951
    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result p0

    return p0
.end method

.method private checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2397
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p2

    .line 2398
    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2399
    iget v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2400
    if-eqz p1, :cond_0

    .line 2401
    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    const/4 v2, 0x0

    aput p2, p1, v2

    .line 2403
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2405
    const/16 p1, 0x65

    if-eq v1, p1, :cond_1

    .line 2406
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    const/4 v0, 0x4

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2408
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2409
    if-eqz p1, :cond_2

    .line 2410
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2412
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private fill([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2952
    nop

    .line 2953
    nop

    .line 2954
    move v0, p3

    move p3, p2

    .line 2954
    :goto_0
    if-gtz v0, :cond_0

    .line 2963
    sub-int p1, p3, p2

    return p1

    .line 2955
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2956
    if-gtz v1, :cond_1

    .line 2957
    new-instance p1, Ljava/io/IOException;

    const-string p2, "inputstream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2960
    :cond_1
    add-int/2addr p3, v1

    .line 2961
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private fill(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2946
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 2947
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 2948
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 2949
    return-void
.end method

.method private getCwd()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2375
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    return-object v0
.end method

.method private glob_local(Ljava/lang/String;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2761
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2762
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2763
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 2764
    nop

    .line 2764
    :goto_0
    if-gez v2, :cond_0

    goto :goto_1

    .line 2765
    :cond_0
    aget-byte v4, v1, v2

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    aget-byte v4, v1, v2

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_1

    .line 2766
    add-int/lit8 v2, v2, -0x1

    .line 2767
    goto :goto_0

    .line 2769
    :cond_1
    sget-boolean v4, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-nez v4, :cond_2

    if-lez v2, :cond_2

    sub-int v4, v2, v3

    aget-byte v4, v1, v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 2770
    add-int/lit8 v2, v2, -0x1

    .line 2771
    if-lez v2, :cond_2

    sub-int v4, v2, v3

    aget-byte v4, v1, v4

    if-ne v4, v5, :cond_2

    .line 2772
    add-int/lit8 v2, v2, -0x1

    .line 2773
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2780
    :cond_2
    :goto_1
    if-gez v2, :cond_4

    .line 2781
    sget-boolean v1, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2782
    return-object v0

    .line 2785
    :cond_4
    :goto_3
    if-gez v2, :cond_5

    goto :goto_4

    .line 2786
    :cond_5
    aget-byte v4, v1, v2

    sget-char v5, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    if-eq v4, v5, :cond_7

    sget-boolean v4, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v4, :cond_6

    aget-byte v4, v1, v2

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_6

    .line 2788
    goto :goto_4

    .line 2790
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2793
    :cond_7
    :goto_4
    if-gez v2, :cond_9

    .line 2794
    sget-boolean v1, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2795
    return-object v0

    .line 2799
    :cond_9
    const/4 p1, 0x0

    if-nez v2, :cond_a

    .line 2800
    new-array v4, v3, [B

    sget-char v5, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    int-to-byte v5, v5

    aput-byte v5, v4, p1

    .line 2801
    goto :goto_6

    .line 2802
    :cond_a
    new-array v4, v2, [B

    .line 2803
    invoke-static {v1, p1, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2806
    :goto_6
    array-length v5, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    new-array v5, v5, [B

    .line 2807
    add-int/2addr v2, v3

    array-length v3, v5

    invoke-static {v1, v2, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2811
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 2812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2813
    :goto_7
    array-length v3, v1

    if-lt p1, v3, :cond_b

    .line 2819
    return-object v0

    .line 2815
    :cond_b
    aget-object v3, v1, p1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v5, v3}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2813
    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 2821
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private glob_remote(Ljava/lang/String;)Ljava/util/Vector;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2627
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2628
    nop

    .line 2630
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2631
    if-gez v3, :cond_0

    .line 2632
    invoke-static/range {p1 .. p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2633
    return-object v2

    .line 2636
    :cond_0
    const/4 v5, 0x1

    if-nez v3, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2637
    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2639
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2641
    nop

    .line 2642
    new-array v5, v5, [[B

    .line 2643
    invoke-direct {v0, v1, v5}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v6

    .line 2645
    if-nez v6, :cond_3

    .line 2646
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2648
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2649
    return-object v2

    .line 2652
    :cond_3
    aget-object v1, v5, v7

    .line 2654
    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v3, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    .line 2656
    new-instance v5, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v5}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2657
    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v6, v5}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v5

    .line 2658
    iget v6, v5, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2659
    iget v8, v5, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2661
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v9, v6}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2663
    const/4 v6, 0x4

    const/16 v9, 0x65

    if-eq v8, v9, :cond_4

    const/16 v10, 0x66

    if-eq v8, v10, :cond_4

    .line 2664
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v6, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2666
    :cond_4
    if-ne v8, v9, :cond_5

    .line 2667
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    .line 2668
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v10, v8}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2671
    :cond_5
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    .line 2672
    move-object v10, v5

    const/4 v5, 0x0

    .line 2675
    :goto_1
    invoke-direct {v0, v8}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    .line 2676
    iget-object v11, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v11, v10}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v10

    .line 2677
    iget v11, v10, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2678
    iget v12, v10, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2680
    if-eq v12, v9, :cond_6

    const/16 v13, 0x68

    if-eq v12, v13, :cond_6

    .line 2681
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {v0, v6, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2683
    :cond_6
    if-ne v12, v9, :cond_8

    .line 2684
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1, v11}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2685
    nop

    .line 2741
    invoke-direct {v0, v8, v10}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2742
    return-object v2

    .line 2743
    :cond_7
    const/4 v2, 0x0

    return-object v2

    .line 2688
    :cond_8
    iget-object v12, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 2689
    iget-object v12, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v12, v12, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-direct {v0, v12, v7, v6}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 2690
    add-int/lit8 v11, v11, -0x4

    .line 2691
    iget-object v12, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v12

    .line 2696
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 2697
    nop

    .line 2697
    :goto_2
    if-gtz v12, :cond_9

    .line 2674
    goto :goto_1

    .line 2698
    :cond_9
    if-lez v11, :cond_c

    .line 2699
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->shift()V

    .line 2701
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v13, v13, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v13, v13

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v14, v14, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v14, v11

    if-le v13, v14, :cond_a

    move v13, v11

    goto :goto_3

    :cond_a
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v13, v13, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v13, v13

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v14, v14, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v13, v14

    .line 2700
    :goto_3
    nop

    .line 2702
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v15, v15, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v14, v15, v4, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 2703
    if-gtz v4, :cond_b

    .line 2704
    goto :goto_1

    .line 2705
    :cond_b
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v14, v13, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/jcraft/jsch/Buffer;->index:I

    .line 2706
    sub-int v4, v11, v4

    move v11, v4

    .line 2709
    :cond_c
    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    .line 2711
    iget v13, v0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v14, 0x3

    if-gt v13, v14, :cond_d

    .line 2712
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 2714
    :cond_d
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v13}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 2716
    nop

    .line 2717
    nop

    .line 2718
    nop

    .line 2720
    iget-boolean v13, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-nez v13, :cond_e

    .line 2721
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v4, v13}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    .line 2722
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v13, v14}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v14

    goto :goto_4

    :cond_e
    move-object v14, v4

    const/4 v13, 0x0

    .line 2724
    :goto_4
    invoke-static {v1, v14}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v14

    .line 2726
    if-eqz v14, :cond_12

    .line 2727
    if-nez v13, :cond_f

    .line 2728
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v4, v13}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    .line 2730
    :cond_f
    if-nez v5, :cond_11

    .line 2731
    nop

    .line 2732
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_5

    :cond_10
    move-object v5, v3

    .line 2736
    :cond_11
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2738
    :cond_12
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2
.end method

.method private header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2982
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 2983
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 2984
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2985
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2986
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iput p1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    .line 2987
    return-object p2
.end method

.method private static isLocalAbsolutePath(Ljava/lang/String;)Z
    .locals 1

    .line 2926
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result p0

    return p0
.end method

.method private isPattern(Ljava/lang/String;)Z
    .locals 1

    .line 2942
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result p1

    return p1
.end method

.method private isPattern(Ljava/lang/String;[[B)Z
    .locals 1

    .line 2935
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 2936
    if-eqz p2, :cond_0

    .line 2937
    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 2938
    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isPattern([B)Z

    move-result p1

    return p1
.end method

.method private isPattern([B)Z
    .locals 6

    .line 2747
    array-length v0, p1

    .line 2748
    nop

    .line 2749
    const/4 v1, 0x0

    move v2, v1

    .line 2749
    :goto_0
    const/4 v3, 0x1

    if-lt v2, v0, :cond_0

    .line 2756
    return v1

    .line 2750
    :cond_0
    aget-byte v4, p1, v2

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    aget-byte v4, p1, v2

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 2752
    :cond_1
    aget-byte v4, p1, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    add-int/2addr v3, v2

    if-ge v3, v0, :cond_2

    .line 2753
    add-int/lit8 v2, v2, 0x1

    .line 2754
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2751
    :cond_3
    :goto_1
    move v1, v3

    return v1
.end method

.method private isRemoteDir(Ljava/lang/String;)Z
    .locals 3

    .line 1944
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTAT([B)V

    .line 1946
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1947
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 1948
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1949
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1951
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1953
    const/16 v1, 0x69

    if-eq p1, v1, :cond_0

    .line 1954
    return v0

    .line 1956
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    .line 1957
    invoke-virtual {p1}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result p1

    move v0, p1

    return v0

    .line 1958
    :catch_0
    move-exception p1

    .line 1958
    nop

    .line 1960
    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private isUnique(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3015
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 3016
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3017
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not unique: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 3019
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3001
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelSftp;->isLocalAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3002
    return-object p1

    .line 3003
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3005
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    return-object p1
.end method

.method private putHEAD(BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2623
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    .line 2624
    return-void
.end method

.method private putHEAD(Lcom/jcraft/jsch/Buffer;BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2615
    const/16 v0, 0x5e

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2616
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->recipient:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2617
    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2618
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2619
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2620
    return-void
.end method

.method private read([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2385
    nop

    .line 2386
    nop

    .line 2386
    :goto_0
    if-gtz p3, :cond_0

    .line 2394
    return-void

    .line 2387
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2388
    if-gtz v0, :cond_1

    .line 2389
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    const/4 p3, 0x4

    invoke-direct {p1, p3, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2391
    :cond_1
    add-int/2addr p2, v0

    .line 2392
    sub-int/2addr p3, v0

    goto :goto_0
.end method

.method private remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2991
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 2992
    return-object p1

    .line 2993
    :cond_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object v0

    .line 2995
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2997
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    return-object p1
.end method

.method private sendCLOSE([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2506
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2507
    return-void
.end method

.method private sendFSTAT([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2448
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2449
    return-void
.end method

.method private sendHARDLINK([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2485
    const-string v0, "hardlink@openssh.com"

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    .line 2486
    return-void
.end method

.method private sendINIT()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2422
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2423
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2424
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2425
    return-void
.end method

.method private sendLSTAT([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2444
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2445
    return-void
.end method

.method private sendMKDIR([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2465
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2466
    array-length v0, p1

    const/16 v1, 0x9

    add-int/2addr v0, v1

    const/4 v2, 0x4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    const/16 v3, 0xe

    invoke-direct {p0, v3, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2467
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2468
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2469
    if-eqz p2, :cond_1

    .line 2470
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->dump(Lcom/jcraft/jsch/Buffer;)V

    goto :goto_1

    .line 2472
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2473
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/2addr p1, v1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    add-int/2addr p1, p2

    add-int/2addr p1, v2

    invoke-virtual {v0, v3, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2474
    return-void
.end method

.method private sendOPEN([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2522
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2523
    array-length v0, p1

    const/16 v1, 0x11

    add-int/2addr v0, v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2524
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2525
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2526
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2527
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2528
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, v0, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2529
    return-void
.end method

.method private sendOPENA([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2518
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    .line 2519
    return-void
.end method

.method private sendOPENDIR([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2493
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2494
    return-void
.end method

.method private sendOPENR([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2510
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    .line 2511
    return-void
.end method

.method private sendOPENW([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2514
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    .line 2515
    return-void
.end method

.method private sendPacketPath(B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2532
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[BLjava/lang/String;)V

    .line 2533
    return-void
.end method

.method private sendPacketPath(B[BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2536
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2537
    array-length v0, p2

    const/16 v1, 0x9

    add-int/2addr v0, v1

    .line 2538
    const/4 v1, 0x4

    if-nez p3, :cond_0

    .line 2539
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2540
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, p3, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2541
    goto :goto_0

    .line 2542
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 2543
    const/16 p1, -0x38

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2544
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2545
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2547
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2548
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    add-int p3, v0, v1

    invoke-virtual {p1, p2, p0, p3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2549
    return-void
.end method

.method private sendPacketPath(B[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2552
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    .line 2553
    return-void
.end method

.method private sendPacketPath(B[B[BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2556
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2557
    array-length v0, p2

    const/16 v1, 0xd

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    .line 2558
    const/4 v1, 0x4

    if-nez p4, :cond_0

    .line 2559
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2560
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget p4, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, p4, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2561
    goto :goto_0

    .line 2562
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 2563
    const/16 p1, -0x38

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2564
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2565
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2567
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2568
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2569
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    add-int p3, v0, v1

    invoke-virtual {p1, p2, p0, p3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2570
    return-void
.end method

.method private sendREAD([BJI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2598
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    .line 2599
    return-void
.end method

.method private sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2602
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2603
    array-length v0, p1

    const/16 v1, 0x15

    add-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2604
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2605
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2606
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 2607
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2608
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, v2, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2609
    if-eqz p5, :cond_0

    .line 2610
    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->add(IJI)V

    .line 2612
    :cond_0
    return-void
.end method

.method private sendREADDIR([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2497
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2498
    return-void
.end method

.method private sendREADLINK([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2489
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2490
    return-void
.end method

.method private sendREALPATH([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2428
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2429
    return-void
.end method

.method private sendREMOVE([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2461
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2462
    return-void
.end method

.method private sendRENAME([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2501
    nop

    .line 2502
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v1, "posix-rename@openssh.com"

    .line 2501
    :cond_0
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    .line 2503
    return-void
.end method

.method private sendRMDIR([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2477
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2478
    return-void
.end method

.method private sendSETSTAT([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2452
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2453
    array-length v0, p1

    const/16 v1, 0x9

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    .line 2454
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2455
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2456
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->dump(Lcom/jcraft/jsch/Buffer;)V

    .line 2457
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/2addr p1, v1

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, v2, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2458
    return-void
.end method

.method private sendSTAT([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2432
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    .line 2433
    return-void
.end method

.method private sendSTATVFS([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2436
    const-string v0, "statvfs@openssh.com"

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[BLjava/lang/String;)V

    .line 2437
    return-void
.end method

.method private sendSYMLINK([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2481
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[B)V

    .line 2482
    return-void
.end method

.method private sendWRITE([BJ[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2574
    nop

    .line 2575
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2576
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    .line 2577
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getBufferMargin()I

    move-result v1

    .line 2578
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v3, v3, 0xd

    const/16 v4, 0x15

    add-int/2addr v3, v4

    array-length v5, p1

    add-int/2addr v3, v5

    add-int/2addr v3, p6

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 2579
    iget-object p6, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object p6, p6, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length p6, p6

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v2, 0xd

    add-int/2addr v2, v4

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sub-int/2addr p6, v1

    .line 2583
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    array-length v2, p1

    add-int/2addr v2, v4

    add-int/2addr v2, p6

    const/4 v3, 0x6

    invoke-direct {p0, v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    .line 2584
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2585
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2586
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 2587
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object p2, p2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    if-eq p2, p4, :cond_1

    .line 2588
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 2589
    goto :goto_0

    .line 2590
    :cond_1
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2591
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 2593
    :goto_0
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/2addr p1, v4

    add-int/2addr p1, p6

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p2, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 2594
    return p6
.end method

.method private setCwd(Ljava/lang/String;)V
    .locals 0

    .line 2381
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    .line 2382
    return-void
.end method

.method private sftpStatusMessage(Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;
    .locals 2

    .line 2911
    invoke-static {p2}, Lcom/jcraft/jsch/ChannelSftp;->sshExceptionDescription(I)Ljava/lang/String;

    move-result-object p2

    .line 2912
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2913
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2914
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, p2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2917
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ": Failure"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private skip(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2967
    nop

    .line 2967
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 2968
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 2969
    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 2970
    nop

    .line 2973
    return-void

    .line 2971
    :cond_1
    sub-long/2addr p1, v2

    goto :goto_0
.end method

.method private static sshExceptionDescription(I)Ljava/lang/String;
    .locals 2

    .line 2886
    packed-switch p0, :pswitch_data_0

    .line 2906
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown code: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2904
    :pswitch_0
    const-string p0, "SSH_FX_OP_UNSUPPORTED"

    return-object p0

    .line 2902
    :pswitch_1
    const-string p0, "SSH_FX_CONNECTION_LOST"

    return-object p0

    .line 2900
    :pswitch_2
    const-string p0, "SSH_FX_NO_CONNECTION"

    return-object p0

    .line 2898
    :pswitch_3
    const-string p0, "SSH_FX_BAD_MESSAGE"

    return-object p0

    .line 2896
    :pswitch_4
    const-string p0, "SSH_FX_FAILURE"

    return-object p0

    .line 2894
    :pswitch_5
    const-string p0, "SSH_FX_PERMISSION_DENIED"

    return-object p0

    .line 2892
    :pswitch_6
    const-string p0, "SSH_FX_NO_SUCH_FILE"

    return-object p0

    .line 2890
    :pswitch_7
    const-string p0, "SSH_FX_EOF"

    return-object p0

    .line 2888
    :pswitch_8
    const-string p0, "SSH_FX_OK"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static sshFxpDescription(I)Ljava/lang/String;
    .locals 2

    .line 2825
    sparse-switch p0, :sswitch_data_0

    .line 2881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown code: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2875
    :sswitch_0
    const-string p0, "SSH_FXP_ATTRS"

    return-object p0

    .line 2873
    :sswitch_1
    const-string p0, "SSH_FXP_NAME"

    return-object p0

    .line 2871
    :sswitch_2
    const-string p0, "SSH_FXP_DATA"

    return-object p0

    .line 2869
    :sswitch_3
    const-string p0, "SSH_FXP_HANDLE"

    return-object p0

    .line 2867
    :sswitch_4
    const-string p0, "SSH_FXP_STATUS"

    return-object p0

    .line 2865
    :sswitch_5
    const-string p0, "SSH_FXP_SYMLINK"

    return-object p0

    .line 2863
    :sswitch_6
    const-string p0, "SSH_FXP_READLINK"

    return-object p0

    .line 2861
    :sswitch_7
    const-string p0, "SSH_FXP_RENAME"

    return-object p0

    .line 2859
    :sswitch_8
    const-string p0, "SSH_FXP_STAT"

    return-object p0

    .line 2857
    :sswitch_9
    const-string p0, "SSH_FXP_REALPATH"

    return-object p0

    .line 2855
    :sswitch_a
    const-string p0, "SSH_FXP_RMDIR"

    return-object p0

    .line 2853
    :sswitch_b
    const-string p0, "SSH_FXP_MKDIR"

    return-object p0

    .line 2851
    :sswitch_c
    const-string p0, "SSH_FXP_REMOVE"

    return-object p0

    .line 2849
    :sswitch_d
    const-string p0, "SSH_FXP_READDIR"

    return-object p0

    .line 2847
    :sswitch_e
    const-string p0, "SSH_FXP_OPENDIR"

    return-object p0

    .line 2845
    :sswitch_f
    const-string p0, "SSH_FXP_FSETSTAT"

    return-object p0

    .line 2843
    :sswitch_10
    const-string p0, "SSH_FXP_SETSTAT"

    return-object p0

    .line 2841
    :sswitch_11
    const-string p0, "SSH_FXP_FSTAT"

    return-object p0

    .line 2839
    :sswitch_12
    const-string p0, "SSH_FXP_LSTAT"

    return-object p0

    .line 2837
    :sswitch_13
    const-string p0, "SSH_FXP_WRITE"

    return-object p0

    .line 2835
    :sswitch_14
    const-string p0, "SSH_FXP_READ"

    return-object p0

    .line 2833
    :sswitch_15
    const-string p0, "SSH_FXP_CLOSE"

    return-object p0

    .line 2831
    :sswitch_16
    const-string p0, "SSH_FXP_OPEN"

    return-object p0

    .line 2829
    :sswitch_17
    const-string p0, "SSH_FXP_VERSION"

    return-object p0

    .line 2827
    :sswitch_18
    const-string p0, "SSH_FXP_INIT"

    return-object p0

    .line 2879
    :sswitch_19
    const-string p0, "SSH_FXP_EXTENDED_REPLY"

    return-object p0

    .line 2877
    :sswitch_1a
    const-string p0, "SSH_FXP_EXTENDED"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x38 -> :sswitch_1a
        -0x37 -> :sswitch_19
        0x1 -> :sswitch_18
        0x2 -> :sswitch_17
        0x3 -> :sswitch_16
        0x4 -> :sswitch_15
        0x5 -> :sswitch_14
        0x6 -> :sswitch_13
        0x7 -> :sswitch_12
        0x8 -> :sswitch_11
        0x9 -> :sswitch_10
        0xa -> :sswitch_f
        0xb -> :sswitch_e
        0xc -> :sswitch_d
        0xd -> :sswitch_c
        0xe -> :sswitch_b
        0xf -> :sswitch_a
        0x10 -> :sswitch_9
        0x11 -> :sswitch_8
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method private throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2922
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sftpStatusMessage(Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public _put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    move/from16 v2, p4

    .line 524
    const/4 v11, 0x4

    :try_start_0
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 526
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v1, v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    nop

    .line 528
    const/4 v4, 0x2

    const/4 v12, 0x1

    const-wide/16 v5, 0x0

    if-eq v2, v12, :cond_0

    if-ne v2, v4, :cond_1

    .line 530
    :cond_0
    :try_start_1
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v7

    .line 531
    invoke-virtual {v7}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 532
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-wide v13, v5

    .line 536
    :goto_0
    if-ne v2, v12, :cond_2

    cmp-long v7, v13, v5

    if-lez v7, :cond_2

    .line 537
    :try_start_2
    invoke-virtual {v9, v13, v14}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v15

    .line 538
    cmp-long v7, v15, v13

    if-gez v7, :cond_2

    .line 539
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to resume for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v11, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 543
    :cond_2
    if-nez v2, :cond_3

    .line 544
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENW([B)V

    .line 545
    goto :goto_1

    .line 546
    :cond_3
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENA([B)V

    .line 549
    :goto_1
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 550
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v8, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v15

    .line 551
    iget v1, v15, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 552
    iget v3, v15, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 554
    iget-object v7, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v8, v7, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 556
    const/16 v1, 0x65

    if-eq v3, v1, :cond_4

    const/16 v7, 0x66

    if-eq v3, v7, :cond_4

    .line 557
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "invalid type="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 559
    :cond_4
    if-ne v3, v1, :cond_5

    .line 560
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 561
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v8, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 563
    :cond_5
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    .line 564
    nop

    .line 566
    nop

    .line 568
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getBufferMargin()I

    move-result v16

    .line 569
    nop

    .line 573
    nop

    .line 574
    if-eq v2, v12, :cond_6

    if-ne v2, v4, :cond_7

    .line 575
    :cond_6
    add-long/2addr v5, v13

    .line 578
    :cond_7
    iget v13, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    .line 579
    nop

    .line 580
    nop

    .line 581
    nop

    .line 583
    nop

    .line 586
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 587
    array-length v2, v7

    const/16 v3, 0x27

    add-int v14, v3, v2

    .line 588
    iget-object v2, v8, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    sub-int/2addr v2, v14

    sub-int v2, v2, v16

    .line 591
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v3

    const/16 v17, 0x0

    move/from16 v4, v17

    move-wide/from16 v18, v5

    .line 594
    :goto_2
    nop

    .line 595
    nop

    .line 596
    nop

    .line 597
    move v11, v14

    move v5, v2

    move/from16 v6, v17

    .line 600
    :goto_3
    invoke-virtual {v9, v1, v11, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    .line 601
    if-lez v20, :cond_8

    .line 602
    add-int v11, v11, v20

    .line 603
    sub-int v5, v5, v20

    .line 604
    add-int v6, v6, v20

    :cond_8
    move/from16 v24, v11

    move v11, v6

    move/from16 v6, v24

    .line 606
    if-lez v5, :cond_a

    .line 599
    if-gtz v20, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v24, v11

    move v11, v6

    move/from16 v6, v24

    goto :goto_3

    .line 607
    :cond_a
    :goto_4
    if-gtz v11, :cond_b

    .line 608
    goto :goto_6

    .line 610
    :cond_b
    nop

    .line 611
    move/from16 v21, v11

    move/from16 v20, v2

    move-object v6, v1

    .line 611
    :goto_5
    if-gtz v21, :cond_10

    .line 643
    int-to-long v1, v11

    add-long v18, v18, v1

    .line 644
    if-eqz v10, :cond_f

    invoke-interface {v10, v1, v2}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 648
    :goto_6
    iget v1, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v1, v13

    .line 649
    nop

    .line 649
    :goto_7
    if-gt v1, v4, :cond_c

    goto :goto_8

    .line 650
    :cond_c
    const/4 v2, 0x0

    invoke-direct {v8, v2, v15}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 651
    nop

    .line 655
    :goto_8
    if-eqz v10, :cond_d

    .line 656
    invoke-interface/range {p3 .. p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 657
    :cond_d
    invoke-direct {v8, v7, v15}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    .line 658
    nop

    .line 663
    return-void

    .line 653
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    const/4 v11, 0x4

    move/from16 v2, v20

    move-object v1, v6

    goto :goto_2

    .line 612
    :cond_10
    iget v1, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v1, v12

    if-eq v1, v13, :cond_12

    iget v1, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v4

    if-lt v1, v3, :cond_11

    .line 613
    goto :goto_a

    :cond_11
    :goto_9
    move v12, v4

    goto/16 :goto_b

    .line 613
    :cond_12
    :goto_a
    iget v1, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_13

    goto :goto_9

    .line 614
    :cond_13
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    invoke-direct {v8, v1, v15}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 615
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    aget v1, v1, v17

    .line 616
    if-gt v13, v1, :cond_14

    iget v2, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int/2addr v2, v12

    if-le v1, v2, :cond_15

    .line 617
    :cond_14
    iget v2, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    if-ne v1, v2, :cond_16

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 620
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v5, "ack error: startid="

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " seq="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " _ackid="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    const/4 v5, 0x3

    invoke-interface {v2, v5, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 622
    nop

    .line 627
    :cond_15
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x1

    goto :goto_a

    .line 623
    :cond_16
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ack error: startid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " _ackid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 633
    :goto_b
    nop

    .line 634
    const/16 v22, 0x0

    move-object v1, v8

    move-object v2, v7

    move/from16 v23, v3

    move-wide/from16 v3, v18

    move-object v5, v6

    move-object v9, v6

    move/from16 v6, v22

    move-object/from16 v22, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/ChannelSftp;->sendWRITE([BJ[BII)I

    move-result v1

    sub-int v21, v21, v1

    .line 635
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    if-eq v9, v1, :cond_17

    .line 636
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v6, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 637
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, v1

    sub-int/2addr v1, v14

    sub-int v20, v1, v16

    .line 639
    move-object/from16 v9, p1

    move/from16 v3, v23

    move-object/from16 v7, v22

    move v4, v12

    goto :goto_c

    :cond_17
    move/from16 v3, v23

    move-object/from16 v7, v22

    move-object v6, v9

    move v4, v12

    move-object/from16 v9, p1

    :goto_c
    const/4 v12, 0x1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 659
    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_18

    .line 660
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    .line 661
    :cond_18
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public cd(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 327
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v1

    .line 331
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getFlags()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_0

    .line 334
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v2

    if-nez v2, :cond_1

    .line 337
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v1, p1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->setCwd(Ljava/lang/String;)V

    .line 341
    nop

    .line 346
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    .line 343
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 344
    :cond_2
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public chgrp(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1965
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1967
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1969
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    .line 1970
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1971
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    .line 1980
    nop

    .line 1985
    return-void

    .line 1972
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1974
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 1976
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 1977
    iget v5, v4, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    invoke-virtual {v4, v5, p1}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    .line 1978
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    .line 1971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1981
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_1

    .line 1982
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 1983
    :cond_1
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public chmod(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2013
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2015
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2017
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    .line 2018
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2019
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    .line 2028
    nop

    .line 2033
    return-void

    .line 2020
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2022
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 2024
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 2025
    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/SftpATTRS;->setPERMISSIONS(I)V

    .line 2026
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    .line 2019
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_1

    .line 2030
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2031
    :cond_1
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public chown(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1989
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1991
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1993
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    .line 1994
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1995
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    .line 2004
    nop

    .line 2009
    return-void

    .line 1996
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1998
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 2000
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 2001
    iget v5, v4, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    invoke-virtual {v4, p1, v5}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    .line 2002
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    .line 1995
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_1

    .line 2006
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2007
    :cond_1
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public disconnect()V
    .locals 0

    .line 2931
    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->disconnect()V

    .line 2932
    return-void
.end method

.method public exit()V
    .locals 0

    .line 307
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V

    .line 308
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1249
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1261
    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1253
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1270
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1277
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1279
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1280
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1282
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v3, p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1284
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    .line 1285
    if-eqz p2, :cond_0

    .line 1286
    const-string v4, "??"

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v5

    const/4 v2, 0x1

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 1289
    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENR([B)V

    .line 1291
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1292
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 1293
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1294
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1296
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1298
    const/16 v1, 0x65

    if-eq p1, v1, :cond_1

    const/16 v2, 0x66

    if-eq p1, v2, :cond_1

    .line 1299
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1301
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1302
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 1303
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1306
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    .line 1308
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    .line 1310
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v1, p1

    move-object v2, p0

    move-wide v3, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V

    .line 1519
    return-object p1

    .line 1520
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    nop

    .line 1521
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_3

    .line 1522
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 1523
    :cond_3
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 969
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    .line 970
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 973
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    .line 974
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 982
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 983
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 985
    if-eqz p3, :cond_0

    .line 986
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    .line 987
    const-string v3, "??"

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v4

    const/4 v1, 0x1

    move-object v0, p3

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 988
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 989
    invoke-interface {p3, p5, p6}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    .line 992
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->_get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    .line 993
    nop

    .line 998
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_1

    .line 995
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 996
    :cond_1
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    invoke-direct {p2, p4, p3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 863
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 864
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 868
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    .line 874
    nop

    .line 875
    nop

    .line 877
    const/4 v11, 0x4

    :try_start_0
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 879
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 880
    move-object/from16 v2, p2

    invoke-direct {v8, v2}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 882
    invoke-direct {v8, v1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v14

    .line 883
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v15

    .line 884
    if-nez v15, :cond_0

    .line 885
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, "No such file"

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 888
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v16

    .line 890
    nop

    .line 891
    const/4 v7, 0x1

    if-eqz v16, :cond_2

    .line 892
    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    move-object v6, v2

    move-object v5, v1

    goto :goto_0

    :cond_2
    if-le v15, v7, :cond_3

    .line 897
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    .line 898
    const-string v2, "Copying multiple files, but destination is missing or a file."

    .line 897
    invoke-direct {v1, v11, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_3
    move-object v6, v2

    const/4 v5, 0x0

    .line 901
    :goto_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v17, 0x0

    :goto_1
    if-lt v4, v15, :cond_4

    .line 955
    nop

    .line 966
    return-void

    .line 902
    :cond_4
    :try_start_1
    invoke-virtual {v14, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 903
    invoke-direct {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    .line 904
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 905
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "not supported to get directory "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 908
    :cond_5
    nop

    .line 909
    if-eqz v16, :cond_a

    .line 910
    const/16 v1, 0x2f

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 911
    const/4 v13, -0x1

    if-ne v1, v13, :cond_6

    .line 912
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 914
    :cond_6
    add-int/2addr v1, v7

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 916
    :try_start_3
    const-string v11, ".."

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v13, :cond_8

    .line 917
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 918
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 919
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    if-le v12, v7, :cond_7

    .line 920
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x1

    add-int/2addr v7, v12

    const/4 v12, 0x0

    invoke-virtual {v13, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 921
    :cond_7
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writing to an unexpected file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_8
    const/4 v12, 0x0

    .line 924
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v7, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 925
    move-object v11, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_b

    :cond_a
    const/4 v12, 0x0

    .line 926
    move-object v11, v6

    .line 929
    :goto_3
    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    const/4 v1, 0x1

    if-ne v10, v1, :cond_c

    .line 931
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v20

    .line 932
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 933
    cmp-long v1, v22, v20

    if-lez v1, :cond_b

    .line 934
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to resume for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 936
    :cond_b
    if-nez v1, :cond_c

    .line 937
    return-void

    .line 941
    :cond_c
    if-eqz v9, :cond_d

    .line 942
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v20

    const/4 v2, 0x1

    move-object v1, v9

    move-object v13, v3

    move/from16 v18, v4

    move-object v4, v11

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-wide/from16 v5, v20

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 943
    const/4 v1, 0x1

    if-ne v10, v1, :cond_e

    .line 944
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-interface {v9, v1, v2}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    goto :goto_4

    :cond_d
    move-object v13, v3

    move-object/from16 v22, v6

    move-object/from16 v19, v5

    move/from16 v18, v4

    .line 948
    :cond_e
    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 949
    if-nez v10, :cond_f

    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_8

    .line 950
    :cond_f
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v1, v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    move-object v7, v1

    .line 949
    nop

    .line 952
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v1, v8

    move-object v2, v13

    move-object v3, v7

    move-object v4, v9

    move v5, v10

    move v13, v6

    move-object v12, v7

    move-wide/from16 v6, v23

    :try_start_7
    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/ChannelSftp;->_get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 953
    if-eqz v12, :cond_10

    :try_start_8
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 901
    :cond_10
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v6, v22

    move v7, v13

    move-object/from16 v5, v19

    move-object v1, v11

    move/from16 v17, v20

    const/4 v11, 0x4

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v12, v7

    :goto_6
    move-object v13, v0

    if-eqz v12, :cond_11

    :try_start_9
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :cond_11
    :goto_7
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_8
    if-nez v13, :cond_12

    goto :goto_9

    :cond_12
    if-eq v13, v1, :cond_13

    :try_start_a
    invoke-virtual {v13, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    move-object v1, v13

    :goto_9
    throw v1

    :catch_1
    move-exception v0

    move-object v1, v0

    move/from16 v17, v20

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v11, v1

    :goto_a
    move-object v1, v0

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    const/16 v17, 0x0

    :goto_b
    const/4 v11, 0x0

    .line 956
    :goto_c
    if-nez v17, :cond_14

    if-eqz v11, :cond_14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 957
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 959
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 962
    :cond_14
    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_15

    .line 963
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    .line 964
    :cond_15
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBulkRequests()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v0

    return v0
.end method

.method public getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3046
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3047
    return-object v1

    .line 3048
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getHome()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2359
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2361
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2363
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v0

    .line 2364
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    .line 2365
    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_0

    .line 2367
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    .line 2368
    :cond_0
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2371
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 3023
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3024
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "The channel is not connected."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3026
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    return v0
.end method

.method public getUseWriteFlushWorkaround()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->useWriteFlushWorkaround:Z

    return v0
.end method

.method public hardlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1808
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    if-nez v0, :cond_0

    .line 1809
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, "hardlink@openssh.com is not supported"

    const/16 v0, 0x8

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1813
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1815
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1816
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1818
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1819
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x2f

    if-eq p1, v3, :cond_2

    .line 1820
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object p1

    .line 1821
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int p1, v3, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1822
    goto :goto_1

    .line 1823
    :cond_2
    nop

    .line 1826
    :goto_1
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1827
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1829
    :cond_3
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1831
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v1, p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendHARDLINK([B[B)V

    .line 1833
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1834
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 1835
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1836
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1838
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1840
    const/16 p2, 0x65

    if-eq p1, p2, :cond_4

    .line 1841
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1844
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 1845
    if-nez p1, :cond_5

    .line 1846
    return-void

    .line 1847
    :cond_5
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1848
    nop

    .line 1853
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_6

    .line 1850
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 1851
    :cond_6
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method init()V
    .locals 0

    .line 209
    return-void
.end method

.method public lcd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 311
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 315
    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    .line 318
    return-void

    .line 320
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v0, "No such directory"

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public lpwd()Ljava/lang/String;
    .locals 1

    .line 2351
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    return-object v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1528
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1529
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$3;

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/ChannelSftp$3;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V

    .line 1536
    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    .line 1537
    return-object v0
.end method

.method public ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1551
    const/4 v2, 0x4

    :try_start_0
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1553
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1554
    nop

    .line 1555
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1557
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1558
    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1559
    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1560
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1564
    new-array v8, v5, [[B

    .line 1565
    invoke-direct {v1, v4, v8}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v9

    .line 1567
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 1568
    aget-object v3, v8, v7

    .line 1569
    goto :goto_1

    .line 1570
    :cond_1
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1572
    invoke-direct {v1, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v11

    .line 1573
    invoke-virtual {v11}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1574
    nop

    .line 1575
    nop

    .line 1576
    move-object v6, v3

    move-object v3, v10

    goto :goto_1

    .line 1583
    :cond_2
    iget-boolean v3, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-eqz v3, :cond_3

    .line 1584
    aget-object v3, v8, v7

    .line 1585
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->unquote([B)[B

    move-result-object v3

    .line 1586
    goto :goto_1

    .line 1587
    :cond_3
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1588
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 1593
    :goto_1
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v6, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    .line 1595
    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1596
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    .line 1597
    iget v6, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1598
    iget v8, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1600
    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v11, v6}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1602
    const/16 v6, 0x65

    if-eq v8, v6, :cond_4

    const/16 v11, 0x66

    if-eq v8, v11, :cond_4

    .line 1603
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1605
    :cond_4
    if-ne v8, v6, :cond_5

    .line 1606
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    .line 1607
    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v11, v8}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1610
    :cond_5
    nop

    .line 1611
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    .line 1613
    move-object v11, v4

    move v4, v7

    .line 1613
    :goto_2
    if-eqz v4, :cond_6

    goto :goto_3

    .line 1615
    :cond_6
    invoke-direct {v1, v8}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    .line 1617
    iget-object v12, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v12, v11}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v11

    .line 1618
    iget v12, v11, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1619
    iget v13, v11, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1620
    if-eq v13, v6, :cond_7

    const/16 v14, 0x68

    if-eq v13, v14, :cond_7

    .line 1621
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1623
    :cond_7
    if-ne v13, v6, :cond_9

    .line 1624
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v13, v12}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1625
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    .line 1626
    if-ne v13, v5, :cond_8

    .line 1627
    nop

    .line 1695
    :goto_3
    invoke-direct {v1, v8, v11}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    .line 1703
    nop

    .line 1708
    return-void

    .line 1628
    :cond_8
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v14, v13}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1631
    :cond_9
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1632
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v13, v13, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-direct {v1, v13, v7, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 1633
    add-int/lit8 v12, v12, -0x4

    .line 1634
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    .line 1639
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 1640
    nop

    .line 1640
    :goto_4
    if-gtz v13, :cond_a

    goto :goto_2

    .line 1641
    :cond_a
    if-lez v12, :cond_c

    .line 1642
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->shift()V

    .line 1643
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v14, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v14, v14

    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v15, v15, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v15, v12

    if-le v14, v15, :cond_b

    move v14, v12

    goto :goto_5

    .line 1644
    :cond_b
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v14, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v14, v14

    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v15, v15, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v14, v15

    .line 1643
    :goto_5
    nop

    .line 1645
    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v15, v15, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v6, v6, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-direct {v1, v15, v6, v14}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result v6

    .line 1646
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v15, v14, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v15, v6

    iput v15, v14, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1647
    sub-int v6, v12, v6

    move v12, v6

    .line 1649
    :cond_c
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    .line 1650
    nop

    .line 1651
    iget v14, v1, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v15, 0x3

    if-gt v14, v15, :cond_d

    .line 1652
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v14

    goto :goto_6

    :cond_d
    move-object v14, v10

    .line 1654
    :goto_6
    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v15}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v15

    .line 1656
    if-ne v4, v5, :cond_e

    .line 1657
    add-int/lit8 v13, v13, -0x1

    .line 1658
    const/16 v6, 0x65

    goto :goto_4

    .line 1661
    :cond_e
    nop

    .line 1662
    nop

    .line 1663
    if-nez v3, :cond_f

    .line 1664
    nop

    .line 1665
    move-object v7, v10

    goto :goto_8

    :cond_f
    if-nez v9, :cond_10

    .line 1666
    invoke-static {v3, v6}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v16

    .line 1667
    move/from16 v5, v16

    move-object v7, v10

    goto :goto_8

    .line 1668
    :cond_10
    nop

    .line 1669
    iget-boolean v5, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-nez v5, :cond_11

    .line 1670
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v6, v5}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 1671
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v5, v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v7

    goto :goto_7

    :cond_11
    move-object v7, v6

    move-object v5, v10

    .line 1673
    :goto_7
    invoke-static {v3, v7}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v7

    move-object/from16 v17, v5

    move v5, v7

    move-object/from16 v7, v17

    .line 1676
    :goto_8
    if-eqz v5, :cond_14

    .line 1677
    if-nez v7, :cond_12

    .line 1678
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v6, v4}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 1680
    :cond_12
    nop

    .line 1681
    if-nez v14, :cond_13

    .line 1684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1685
    goto :goto_9

    .line 1686
    :cond_13
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v14, v4}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 1689
    :goto_9
    new-instance v5, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-direct {v5, v7, v4, v15}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->select(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result v4

    goto :goto_a

    :cond_14
    move-object/from16 v6, p2

    .line 1692
    :goto_a
    add-int/lit8 v13, v13, -0x1

    const/16 v6, 0x65

    const/4 v7, 0x0

    const/4 v5, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    instance-of v3, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v3, :cond_15

    .line 1705
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    .line 1706
    :cond_15
    new-instance v3, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2231
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2233
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2234
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2236
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    return-object p1

    .line 2237
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    nop

    .line 2238
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v0, :cond_0

    .line 2239
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2240
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2098
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2100
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2102
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendMKDIR([BLcom/jcraft/jsch/SftpATTRS;)V

    .line 2104
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2105
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 2106
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2107
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2109
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2111
    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    .line 2112
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2115
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 2116
    if-nez p1, :cond_1

    .line 2117
    return-void

    .line 2118
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2119
    nop

    .line 2124
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2120
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_2

    .line 2121
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2122
    :cond_2
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 666
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 675
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 691
    const/4 v10, 0x4

    :try_start_0
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 693
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-direct {v1, v5}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 700
    :cond_0
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v5, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 702
    nop

    .line 703
    const/4 v12, 0x2

    const/4 v13, 0x1

    const-wide/16 v2, 0x0

    if-eq v9, v13, :cond_1

    if-ne v9, v12, :cond_2

    .line 705
    :cond_1
    :try_start_1
    invoke-direct {v1, v11}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 706
    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 707
    move-wide v14, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-wide v14, v2

    .line 712
    :goto_0
    if-eqz v8, :cond_3

    .line 713
    :try_start_2
    const-string v4, "-"

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v2, v8

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 716
    :cond_3
    if-nez v9, :cond_4

    .line 717
    invoke-direct {v1, v11}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENW([B)V

    .line 718
    goto :goto_1

    .line 719
    :cond_4
    invoke-direct {v1, v11}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENA([B)V

    .line 722
    :goto_1
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 723
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    .line 724
    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 725
    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 727
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v4, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 729
    const/16 v3, 0x65

    if-eq v2, v3, :cond_5

    const/16 v4, 0x66

    if-eq v2, v4, :cond_5

    .line 730
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v10, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 732
    :cond_5
    if-ne v2, v3, :cond_6

    .line 733
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    .line 734
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 736
    :cond_6
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 738
    if-eq v9, v13, :cond_8

    if-ne v9, v12, :cond_7

    goto :goto_2

    :cond_7
    move-wide/from16 v3, p4

    goto :goto_3

    .line 739
    :cond_8
    :goto_2
    add-long v3, p4, v14

    .line 742
    :goto_3
    new-array v5, v13, [J

    .line 743
    const/4 v6, 0x0

    aput-wide v3, v5, v6

    .line 744
    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$1;

    invoke-direct {v3, v1, v2, v5, v8}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V

    .line 854
    return-object v3

    .line 855
    :catch_1
    move-exception v0

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 855
    nop

    .line 856
    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_9

    .line 857
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    .line 858
    :cond_9
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 465
    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 469
    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 473
    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 487
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 489
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    :try_start_1
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    .line 492
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 493
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 494
    if-nez v2, :cond_1

    .line 495
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 496
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 498
    :cond_0
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 500
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 502
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    if-eqz p3, :cond_3

    .line 506
    :try_start_2
    const-string v4, "-"

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v2, p3

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 509
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 510
    nop

    .line 519
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 511
    :goto_0
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_5

    .line 512
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    iget p2, p1, Lcom/jcraft/jsch/SftpException;->id:I

    if-ne p2, v0, :cond_4

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 513
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, " is a directory"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 515
    :cond_4
    throw p1

    .line 517
    :cond_5
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 350
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 354
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    .line 358
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    .line 373
    const/4 v10, 0x4

    :try_start_0
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 375
    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-direct {v1, v3}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    .line 379
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    .line 380
    const/4 v11, 0x1

    if-eq v5, v11, :cond_2

    .line 381
    if-nez v5, :cond_1

    .line 382
    invoke-direct {v1, v3}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v1, v10, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 385
    :cond_0
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    :cond_1
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v4}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 389
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result v12

    .line 394
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->glob_local(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v13

    .line 395
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v14

    .line 397
    nop

    .line 398
    if-eqz v12, :cond_4

    .line 399
    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 402
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    move-object v6, v4

    move-object v7, v2

    goto :goto_0

    :cond_4
    if-le v14, v11, :cond_5

    .line 404
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    .line 405
    const-string v2, "Copying multiple files, but the destination is missing or a file."

    .line 404
    invoke-direct {v1, v10, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_5
    move-object v6, v4

    const/4 v7, 0x0

    .line 408
    :goto_0
    move v5, v3

    :goto_1
    if-lt v5, v14, :cond_6

    .line 456
    nop

    .line 461
    return-void

    .line 409
    :cond_6
    invoke-virtual {v13, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 410
    nop

    .line 411
    if-eqz v12, :cond_9

    .line 412
    sget-char v2, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 413
    sget-boolean v3, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    const/4 v15, -0x1

    if-eqz v3, :cond_7

    .line 414
    const/16 v3, 0x2f

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 415
    if-eq v3, v15, :cond_7

    if-le v3, v2, :cond_7

    .line 416
    move v2, v3

    .line 418
    :cond_7
    if-ne v2, v15, :cond_8

    .line 419
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 421
    :cond_8
    add-int/2addr v2, v11

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v3, v15}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    move-object v15, v2

    goto :goto_3

    .line 425
    :cond_9
    move-object v15, v6

    .line 429
    :goto_3
    nop

    .line 430
    if-ne v9, v11, :cond_b

    .line 432
    :try_start_1
    invoke-direct {v1, v15}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    goto :goto_4

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    .line 437
    :goto_4
    :try_start_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 438
    cmp-long v11, v16, v2

    if-gez v11, :cond_a

    .line 439
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to resume for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 441
    :cond_a
    if-nez v11, :cond_c

    .line 442
    return-void

    :cond_b
    const-wide/16 v2, 0x0

    .line 446
    :cond_c
    if-eqz v8, :cond_d

    .line 447
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    const/4 v11, 0x0

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-wide v12, v2

    move-object v2, v8

    move v3, v11

    move-object v11, v4

    move/from16 v20, v5

    move-object v5, v15

    move-object/from16 v22, v6

    move-object/from16 v21, v7

    move-wide/from16 v6, v16

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 448
    const/4 v2, 0x1

    if-ne v9, v2, :cond_e

    .line 449
    invoke-interface {v8, v12, v13}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_d
    move/from16 v18, v12

    move-object v11, v4

    move-object/from16 v19, v13

    move-object/from16 v22, v6

    const/4 v2, 0x1

    move-object/from16 v21, v7

    move/from16 v20, v5

    .line 452
    :cond_e
    :goto_5
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 453
    :try_start_4
    invoke-virtual {v1, v3, v15, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 454
    if-eqz v3, :cond_f

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 408
    :cond_f
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v6, v22

    move/from16 v12, v18

    move v11, v2

    move-object/from16 v13, v19

    move-object/from16 v7, v21

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_10

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v15, v1

    goto :goto_7

    :cond_10
    :goto_6
    move-object v15, v0

    :try_start_7
    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v15, 0x0

    :goto_7
    if-nez v15, :cond_11

    goto :goto_8

    :cond_11
    if-eq v15, v1, :cond_12

    :try_start_8
    invoke-virtual {v15, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    move-object v1, v15

    :goto_8
    throw v1

    :catch_1
    move-exception v0

    move-object v1, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 457
    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_13

    .line 458
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    .line 459
    :cond_13
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public pwd()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2347
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V

    .line 304
    return-void
.end method

.method public readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1712
    const/4 v0, 0x4

    :try_start_0
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1713
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    .line 1714
    const-string v1, "The remote sshd is too old to support symlink operation."

    .line 1713
    const/16 v2, 0x8

    invoke-direct {p1, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1717
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1719
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1721
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1723
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendREADLINK([B)V

    .line 1725
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1726
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 1727
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1728
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1730
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1732
    const/16 v1, 0x68

    const/16 v3, 0x65

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_1

    .line 1733
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1735
    :cond_1
    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 1736
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 1737
    nop

    .line 1738
    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_2

    .line 1745
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v3, p1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1739
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 1740
    iget v4, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    if-gt v4, v2, :cond_3

    .line 1741
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1743
    :cond_3
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v4}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 1738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1748
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 1749
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1750
    nop

    .line 1755
    return-object v3

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_5

    .line 1752
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 1753
    :cond_5
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public realpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 3053
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object p1

    .line 3054
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3055
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3055
    nop

    .line 3056
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v0, :cond_0

    .line 3057
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 3058
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1856
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1857
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    .line 1858
    const-string p2, "The remote sshd is too old to support rename operation."

    .line 1857
    const/16 v0, 0x8

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1862
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1864
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1865
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1867
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1869
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 1870
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1871
    if-lt v3, v1, :cond_1

    .line 1872
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1874
    :cond_1
    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    .line 1875
    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1876
    goto :goto_0

    .line 1877
    :cond_2
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1878
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1879
    :cond_3
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1882
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p2, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendRENAME([B[B)V

    .line 1884
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1885
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 1886
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1887
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1889
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1891
    const/16 p2, 0x65

    if-eq p1, p2, :cond_4

    .line 1892
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1895
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 1896
    if-nez p1, :cond_5

    .line 1897
    return-void

    .line 1898
    :cond_5
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1899
    nop

    .line 1904
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1900
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_6

    .line 1901
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 1902
    :cond_6
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public rm(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1908
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1910
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1912
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 1913
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1915
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1917
    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    .line 1935
    nop

    .line 1940
    return-void

    .line 1918
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1919
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendREMOVE([B)V

    .line 1921
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    .line 1922
    iget v4, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1923
    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1925
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1927
    const/16 v4, 0x65

    if-eq v5, v4, :cond_1

    .line 1928
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1930
    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    .line 1931
    if-eqz v4, :cond_2

    .line 1932
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1917
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1936
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_3

    .line 1937
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 1938
    :cond_3
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2061
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2063
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2065
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 2066
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2068
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 2070
    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    .line 2089
    nop

    .line 2094
    return-void

    .line 2071
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2072
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendRMDIR([B)V

    .line 2074
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v4, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    .line 2075
    iget v4, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 2076
    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 2078
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 2080
    const/16 v4, 0x65

    if-eq v5, v4, :cond_1

    .line 2081
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 2084
    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    .line 2085
    if-eqz v4, :cond_2

    .line 2086
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 2070
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    instance-of v1, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_3

    .line 2091
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2092
    :cond_3
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAgentForwarding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    return-void
.end method

.method public setBulkRequests(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 178
    if-lez p1, :cond_0

    .line 179
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-direct {v0, p0, p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 182
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setBulkRequests: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be greater than 0."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnv(Ljava/util/Hashtable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setEnv(Ljava/util/Hashtable;)V

    return-void
.end method

.method public bridge synthetic setEnv([B[B)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv([B[B)V

    return-void
.end method

.method public setFilenameEncoding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3032
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->setFilenameEncoding(Ljava/nio/charset/Charset;)V

    .line 3033
    nop

    .line 3038
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3034
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v0, :cond_0

    .line 3035
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 3036
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFilenameEncoding(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 3041
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    .line 3042
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    .line 3043
    return-void
.end method

.method public setMtime(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2037
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2039
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2041
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 2042
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2043
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    .line 2052
    nop

    .line 2057
    return-void

    .line 2044
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2046
    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v4

    .line 2048
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    .line 2049
    invoke-virtual {v4}, Lcom/jcraft/jsch/SftpATTRS;->getATime()I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lcom/jcraft/jsch/SftpATTRS;->setACMODTIME(II)V

    .line 2050
    invoke-direct {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    .line 2043
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_1

    .line 2054
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2055
    :cond_1
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic setPty(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setPty(Z)V

    return-void
.end method

.method public bridge synthetic setPtySize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSession;->setPtySize(IIII)V

    return-void
.end method

.method public bridge synthetic setPtyType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPtyType(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    return-void
.end method

.method public setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2304
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2306
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2308
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    .line 2309
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2310
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 2314
    nop

    .line 2319
    return-void

    .line 2311
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2312
    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    .line 2310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2315
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_1

    .line 2316
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2317
    :cond_1
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic setTerminalMode([B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setTerminalMode([B)V

    return-void
.end method

.method public setUseWriteFlushWorkaround(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp;->useWriteFlushWorkaround:Z

    .line 195
    return-void
.end method

.method public bridge synthetic setXForwarding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setXForwarding(Z)V

    return-void
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 215
    :try_start_0
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 217
    new-instance v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v2

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp;->rmpsize:I

    mul-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    .line 218
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 220
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    .line 222
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 234
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->lmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 235
    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    .line 237
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    .line 238
    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    .line 246
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->sendINIT()V

    .line 249
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    .line 251
    iget v1, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 252
    const/4 v2, 0x4

    const/high16 v3, 0x40000

    if-le v1, v3, :cond_1

    .line 253
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received message is too long: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    iget v3, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 256
    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    .line 258
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    .line 259
    if-lez v1, :cond_3

    .line 261
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 264
    :goto_0
    if-gtz v1, :cond_2

    goto :goto_1

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 266
    array-length v3, v0

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    .line 267
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 268
    array-length v4, v3

    add-int/2addr v4, v2

    sub-int/2addr v1, v4

    .line 269
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 273
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v1, "posix-rename@openssh.com"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v2, "posix-rename@openssh.com"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v2, "statvfs@openssh.com"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v2, "statvfs@openssh.com"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v2, "hardlink@openssh.com"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v2, "hardlink@openssh.com"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    .line 293
    :cond_6
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    .line 294
    nop

    .line 300
    return-void

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_7

    .line 297
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    .line 298
    :cond_7
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2128
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2130
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2131
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2133
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    return-object p1

    .line 2134
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    nop

    .line 2135
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v0, :cond_0

    .line 2136
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2137
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 2177
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 2179
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2180
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2182
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;

    move-result-object p1

    return-object p1

    .line 2183
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2183
    nop

    .line 2184
    instance-of v0, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz v0, :cond_0

    .line 2185
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 2186
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1759
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1760
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    .line 1761
    const-string p2, "The remote sshd is too old to support symlink operation."

    .line 1760
    const/16 v0, 0x8

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1765
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 1767
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1768
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1770
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1771
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x2f

    if-eq p1, v3, :cond_2

    .line 1772
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object p1

    .line 1773
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int p1, v3, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1774
    goto :goto_1

    .line 1775
    :cond_2
    nop

    .line 1778
    :goto_1
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1779
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1781
    :cond_3
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1783
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {v1, p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSYMLINK([B[B)V

    .line 1785
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    .line 1786
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    .line 1787
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1788
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1790
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 1792
    const/16 p2, 0x65

    if-eq p1, p2, :cond_4

    .line 1793
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1796
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 1797
    if-nez p1, :cond_5

    .line 1798
    return-void

    .line 1799
    :cond_5
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 1800
    nop

    .line 1805
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p2, :cond_6

    .line 1802
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1

    .line 1803
    :cond_6
    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public version()Ljava/lang/String;
    .locals 1

    .line 2355
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->version:Ljava/lang/String;

    return-object v0
.end method
