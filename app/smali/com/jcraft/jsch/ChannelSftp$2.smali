.class Lcom/jcraft/jsch/ChannelSftp$2;
.super Ljava/io/InputStream;
.source "ChannelSftp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _data:[B

.field closed:Z

.field header:Lcom/jcraft/jsch/ChannelSftp$Header;

.field offset:J

.field request_max:I

.field request_offset:J

.field rest_byte:[B

.field rest_length:I

.field final synthetic this$0:Lcom/jcraft/jsch/ChannelSftp;

.field private final synthetic val$handle:[B

.field private final synthetic val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    .locals 0

    .line 1310
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    iput-object p5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1311
    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    .line 1312
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    .line 1313
    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    .line 1314
    const/4 p1, 0x1

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->_data:[B

    .line 1315
    const/16 p2, 0x400

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    .line 1316
    new-instance p2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p2}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 1317
    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    .line 1318
    iget-wide p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    iput-wide p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    .line 1310
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1504
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    if-eqz v0, :cond_0

    .line 1505
    return-void

    .line 1506
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    .line 1507
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 1511
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->access$17(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    .line 1512
    nop

    .line 1517
    return-void

    .line 1514
    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    nop

    .line 1515
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 1513
    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1322
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1323
    return v1

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->_data:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v0

    .line 1325
    if-ne v0, v1, :cond_1

    .line 1326
    return v1

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->_data:[B

    aget-byte v0, v0, v3

    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1334
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1335
    return v1

    .line 1336
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v1

    return v1
.end method

.method public read([BII)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 1341
    iget-boolean v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v5, :cond_0

    .line 1342
    return v7

    .line 1343
    :cond_0
    if-nez v2, :cond_1

    .line 1344
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1346
    :cond_1
    if-ltz v3, :cond_1a

    if-ltz v4, :cond_1a

    add-int v5, v3, v4

    array-length v8, v2

    if-le v5, v8, :cond_2

    goto/16 :goto_6

    .line 1349
    :cond_2
    if-nez v4, :cond_3

    .line 1350
    goto/16 :goto_5

    .line 1353
    :cond_3
    iget v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    if-lez v5, :cond_7

    .line 1354
    iget v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    .line 1355
    if-le v5, v4, :cond_4

    .line 1356
    move v5, v4

    .line 1357
    :cond_4
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    invoke-static {v4, v6, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1358
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    if-eq v5, v2, :cond_5

    .line 1359
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    sub-int/2addr v4, v5

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1362
    :cond_5
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v2, :cond_6

    .line 1363
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v3, v5

    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    .line 1365
    return v7

    .line 1369
    :cond_6
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    .line 1370
    move v7, v5

    return v7

    .line 1373
    :cond_7
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0xd

    if-ge v5, v4, :cond_8

    .line 1374
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0xd

    .line 1376
    :cond_8
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$19(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v5

    const/16 v8, 0x400

    if-nez v5, :cond_9

    if-le v4, v8, :cond_9

    .line 1377
    move v4, v8

    .line 1380
    :cond_9
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count()I

    .line 1383
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0xd

    .line 1384
    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v9}, Lcom/jcraft/jsch/ChannelSftp;->access$19(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v9

    if-nez v9, :cond_a

    .line 1385
    nop

    .line 1388
    move v5, v8

    .line 1388
    :cond_a
    :goto_0
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v8}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count()I

    move-result v8

    iget v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    if-lt v8, v9, :cond_19

    .line 1398
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v8}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v8

    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v5, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->access$10(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v5

    iput-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 1399
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v5, v5, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iput v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    .line 1400
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v5, v5, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 1401
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v8, v8, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    .line 1403
    nop

    .line 1405
    :try_start_0
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v8}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v8

    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v9, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    invoke-virtual {v8, v9}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->get(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    move-result-object v8
    :try_end_0
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1406
    nop

    .line 1415
    const/16 v9, 0x65

    if-eq v5, v9, :cond_b

    const/16 v10, 0x67

    if-eq v5, v10, :cond_b

    .line 1416
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected server response type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$22(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1418
    :cond_b
    const/4 v10, 0x1

    if-ne v5, v9, :cond_d

    .line 1419
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v3

    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    invoke-static {v2, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->access$23(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V

    .line 1420
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    .line 1421
    iput v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    .line 1422
    if-ne v2, v10, :cond_c

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    .line 1424
    return v7

    .line 1426
    :cond_c
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SFTP status error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    invoke-static {v5, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->access$24(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1429
    :cond_d
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1430
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v9}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v9

    iget-object v9, v9, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v11, 0x4

    invoke-static {v5, v9, v6, v11}, Lcom/jcraft/jsch/ChannelSftp;->access$25(Lcom/jcraft/jsch/ChannelSftp;[BII)I

    .line 1431
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v5

    .line 1432
    iget v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    .line 1439
    iget v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    sub-int/2addr v9, v5

    .line 1441
    iget-wide v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    int-to-long v13, v5

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    .line 1442
    nop

    .line 1443
    if-lez v5, :cond_18

    .line 1444
    nop

    .line 1445
    if-le v5, v4, :cond_e

    .line 1446
    goto :goto_1

    :cond_e
    move v4, v5

    .line 1448
    :goto_1
    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v11}, Lcom/jcraft/jsch/ChannelSftp;->access$15(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1449
    if-gez v2, :cond_f

    .line 1450
    return v7

    .line 1452
    :cond_f
    sub-int v3, v5, v2

    .line 1453
    iput v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    .line 1455
    if-lez v3, :cond_13

    .line 1456
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    array-length v4, v4

    if-ge v4, v3, :cond_10

    .line 1457
    new-array v4, v3, [B

    iput-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    .line 1459
    :cond_10
    nop

    .line 1460
    nop

    .line 1462
    nop

    .line 1462
    :goto_2
    if-gtz v3, :cond_11

    goto :goto_3

    .line 1463
    :cond_11
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$15(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1464
    if-gtz v4, :cond_12

    .line 1465
    goto :goto_3

    .line 1466
    :cond_12
    add-int/2addr v6, v4

    .line 1467
    sub-int/2addr v3, v4

    goto :goto_2

    .line 1471
    :cond_13
    :goto_3
    if-lez v9, :cond_14

    .line 1472
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->access$15(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v3

    int-to-long v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1475
    :cond_14
    iget-wide v3, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    cmp-long v3, v13, v3

    if-gez v3, :cond_15

    .line 1476
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v3

    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 1478
    :try_start_1
    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    iget-wide v4, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    add-long v17, v4, v13

    iget-wide v4, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    sub-long/2addr v4, v13

    long-to-int v4, v4

    .line 1479
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v20

    .line 1478
    move-object/from16 v16, v3

    move/from16 v19, v4

    invoke-static/range {v15 .. v20}, Lcom/jcraft/jsch/ChannelSftp;->access$21(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1480
    nop

    .line 1483
    iget-wide v3, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    iget-wide v5, v8, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1481
    new-instance v1, Ljava/io/IOException;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1486
    :cond_15
    :goto_4
    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v4

    if-ge v3, v4, :cond_16

    .line 1487
    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    add-int/2addr v3, v10

    iput v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    .line 1490
    :cond_16
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v3, :cond_17

    .line 1491
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    .line 1493
    return v7

    .line 1497
    :cond_17
    move v7, v2

    return v7

    .line 1499
    :cond_18
    goto :goto_5

    .line 1411
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1411
    nop

    .line 1412
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 1407
    iget-wide v2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->offset:J

    iput-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    .line 1408
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp$2;->skip(J)J

    .line 1409
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v2

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v1, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->access$18(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    .line 1410
    :goto_5
    move v7, v6

    return v7

    .line 1390
    :cond_19
    :try_start_2
    iget-object v10, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    iget-wide v12, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v8}, Lcom/jcraft/jsch/ChannelSftp;->access$20(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v15

    move v14, v5

    invoke-static/range {v10 .. v15}, Lcom/jcraft/jsch/ChannelSftp;->access$21(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    .line 1391
    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1394
    iget-wide v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 1392
    new-instance v1, Ljava/io/IOException;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1347
    :cond_1a
    :goto_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method
