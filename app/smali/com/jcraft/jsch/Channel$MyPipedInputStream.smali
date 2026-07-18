.class Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.super Ljava/io/PipedInputStream;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPipedInputStream"
.end annotation


# instance fields
.field private BUFFER_SIZE:I

.field private max_buffer_size:I


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    .line 309
    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    .line 310
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    .line 314
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    .line 309
    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    .line 310
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    .line 318
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    .line 319
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    .line 320
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    .line 321
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(I)V

    .line 325
    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    .line 326
    return-void
.end method

.method constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 309
    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    .line 310
    iget p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    .line 330
    return-void
.end method

.method constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 309
    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    .line 310
    iget p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    .line 334
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    .line 335
    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    .line 336
    return-void
.end method

.method private freeSpace()I
    .locals 3

    .line 355
    nop

    .line 356
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    sub-int v2, v0, v1

    .line 358
    return v2

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    if-ge v0, v1, :cond_2

    .line 359
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v2, v0

    return v2

    .line 362
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    sub-int v2, v0, v1

    .line 364
    :cond_2
    return v2
.end method


# virtual methods
.method declared-synchronized checkSpace(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->freeSpace()I

    move-result v0

    .line 369
    if-ge v0, p1, :cond_6

    .line 370
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    sub-int v0, v1, v0

    .line 371
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    .line 372
    nop

    .line 372
    :goto_0
    sub-int v2, v1, v0

    if-lt v2, p1, :cond_5

    .line 376
    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    if-le v1, v2, :cond_0

    .line 377
    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->max_buffer_size:I

    .line 379
    :cond_0
    sub-int v0, v1, v0

    if-ge v0, p1, :cond_1

    .line 380
    goto/16 :goto_2

    .line 382
    :cond_1
    new-array p1, v1, [B

    .line 383
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 384
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    if-ge v0, v1, :cond_3

    .line 386
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 388
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    array-length v2, p1

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 390
    iget-object v3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    sub-int/2addr v3, v4

    .line 389
    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    array-length v0, p1

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    .line 393
    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    if-ne v0, v1, :cond_4

    .line 394
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    .line 397
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    .line 398
    goto :goto_2

    .line 373
    :cond_5
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    array-length p1, p1

    if-ne p1, v0, :cond_8

    iget p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    if-le v0, p1, :cond_8

    .line 399
    div-int/lit8 p1, v0, 0x2

    .line 400
    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    if-ge p1, v0, :cond_7

    .line 401
    iget p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->BUFFER_SIZE:I

    .line 402
    :cond_7
    new-array p1, p1, [B

    .line 403
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateReadSide()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    goto :goto_0

    .line 348
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    .line 349
    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->out:I

    .line 350
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    iget v2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->in:I

    aput-byte v0, v1, v2

    .line 351
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
