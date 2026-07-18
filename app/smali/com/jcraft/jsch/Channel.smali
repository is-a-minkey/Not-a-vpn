.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Channel$MyPipedInputStream;,
        Lcom/jcraft/jsch/Channel$PassiveInputStream;,
        Lcom/jcraft/jsch/Channel$PassiveOutputStream;
    }
.end annotation


# static fields
.field static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field static final SSH_OPEN_ADMINISTRATIVELY_PROHIBITED:I = 0x1

.field static final SSH_OPEN_CONNECT_FAILED:I = 0x2

.field static final SSH_OPEN_RESOURCE_SHORTAGE:I = 0x4

.field static final SSH_OPEN_UNKNOWN_CHANNEL_TYPE:I = 0x3

.field private static final index:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field volatile close:Z

.field volatile connectTimeout:I

.field volatile connected:Z

.field volatile eof_local:Z

.field volatile eof_remote:Z

.field volatile exitstatus:I

.field id:I

.field io:Lcom/jcraft/jsch/IO;

.field volatile lmpsize:I

.field volatile lwsize:I

.field volatile lwsize_max:I

.field notifyme:I

.field volatile open_confirmation:Z

.field volatile recipient:I

.field volatile reply:I

.field volatile rmpsize:I

.field volatile rwsize:J

.field protected session:Lcom/jcraft/jsch/Session;

.field thread:Ljava/lang/Thread;

.field protected type:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/Channel;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    .line 51
    const-string v1, "foo"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->type:[B

    .line 52
    const/high16 v1, 0x100000

    iput v1, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    .line 53
    iget v1, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iput v1, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    .line 54
    const/16 v1, 0x4000

    iput v1, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    .line 56
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    .line 60
    iput-object v2, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    .line 62
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    .line 63
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    .line 65
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->close:Z

    .line 66
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    .line 67
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    .line 69
    iput v0, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    .line 71
    iput v1, p0, Lcom/jcraft/jsch/Channel;->reply:I

    .line 72
    iput v1, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    .line 76
    iput v1, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    .line 84
    sget-object v0, Lcom/jcraft/jsch/Channel;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/Channel;->id:I

    .line 85
    return-void
.end method


# virtual methods
.method declared-synchronized addRemoteWindowSize(J)V
    .locals 2

    monitor-enter p0

    .line 425
    :try_start_0
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 426
    iget p1, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    if-lez p1, :cond_0

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method close()V
    .locals 4

    .line 519
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-eqz v0, :cond_0

    .line 520
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    .line 522
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    .line 524
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v0

    .line 525
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 526
    return-void

    .line 529
    :cond_1
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 530
    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 531
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 532
    const/16 v3, 0x61

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 533
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 534
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 534
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 537
    :catch_0
    move-exception v0

    .line 537
    nop

    .line 540
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->connect(I)V

    .line 101
    return-void
.end method

.method public connect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 104
    iput p1, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->sendChannelOpen()V

    .line 107
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->start()V

    .line 108
    nop

    .line 115
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    .line 110
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 111
    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1

    .line 113
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 552
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 553
    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    if-nez v0, :cond_0

    .line 554
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 575
    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Session;->delChannel(Lcom/jcraft/jsch/Channel;)V

    return-void

    .line 556
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    .line 552
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->close()V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 566
    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 569
    goto :goto_0

    :catch_0
    move-exception v0

    .line 573
    nop

    .line 574
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 575
    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Session;->delChannel(Lcom/jcraft/jsch/Channel;)V

    .line 579
    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 574
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 575
    if-eqz v1, :cond_3

    .line 576
    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/Session;->delChannel(Lcom/jcraft/jsch/Channel;)V

    .line 578
    :cond_3
    throw v0
.end method

.method eof()V
    .locals 4

    .line 463
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    if-eqz v0, :cond_0

    .line 464
    return-void

    .line 465
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    .line 467
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v0

    .line 468
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 469
    return-void

    .line 472
    :cond_1
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 473
    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 474
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 475
    const/16 v3, 0x60

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 476
    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 477
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v0, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 477
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 481
    :catch_0
    move-exception v0

    .line 481
    nop

    .line 488
    return-void
.end method

.method eof_remote()V
    .locals 1

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->out_close()V

    .line 458
    return-void

    :catch_0
    move-exception v0

    .line 460
    return-void
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method protected genChannelOpenPacket()Lcom/jcraft/jsch/Packet;
    .locals 3

    .line 706
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 707
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 713
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 714
    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 715
    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->type:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 716
    iget v2, p0, Lcom/jcraft/jsch/Channel;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 717
    iget v2, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 718
    iget v2, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 719
    return-object v1
.end method

.method getData(Lcom/jcraft/jsch/Buffer;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    .line 127
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    .line 128
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    .line 129
    return-void
.end method

.method public getExitStatus()I
    .locals 1

    .line 659
    iget v0, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    return v0
.end method

.method public getExtInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 175
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    .line 177
    const-string v1, "getExtInputStream() should be called before connect()"

    .line 176
    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 180
    :cond_0
    nop

    .line 182
    const v0, 0x8000

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    const-string v2, "max_input_buffer_size"

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    new-instance v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 186
    nop

    .line 185
    invoke-direct {v2, v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(II)V

    .line 187
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    new-instance v1, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v1, v2, v4}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v0, v1, v3}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    .line 189
    return-object v2
.end method

.method public getId()I
    .locals 1

    .line 675
    iget v0, p0, Lcom/jcraft/jsch/Channel;->id:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "getInputStream() should be called before connect()"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 161
    :cond_0
    nop

    .line 163
    const v0, 0x8000

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    const-string v2, "max_input_buffer_size"

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 164
    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    new-instance v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 167
    nop

    .line 166
    invoke-direct {v2, v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(II)V

    .line 168
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    new-instance v1, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v1, v2, v4}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Ljava/io/PipedInputStream;Z)V

    invoke-virtual {v0, v1, v3}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;Z)V

    .line 170
    return-object v2
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    nop

    .line 195
    new-instance v0, Lcom/jcraft/jsch/Channel$1;

    invoke-direct {v0, p0, p0}, Lcom/jcraft/jsch/Channel$1;-><init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V

    .line 305
    return-object v0
.end method

.method getRecipient()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    return v0
.end method

.method public getSession()Lcom/jcraft/jsch/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 668
    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is not available"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    return-object v0
.end method

.method init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    return v0
.end method

.method public isConnected()Z
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 583
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    if-eqz v0, :cond_0

    move v2, v1

    return v2

    .line 586
    :cond_0
    return v2
.end method

.method public isEOF()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    return v0
.end method

.method abstract run()V
.end method

.method protected sendChannelOpen()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->genChannelOpenPacket()Lcom/jcraft/jsch/Packet;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 731
    nop

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 733
    iget v3, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    int-to-long v3, v3

    .line 734
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    const/16 v7, 0x7d0

    if-eqz v5, :cond_1

    .line 735
    move v7, v6

    .line 736
    :cond_1
    monitor-enter p0

    .line 737
    const/4 v8, 0x0

    .line 737
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    if-gtz v7, :cond_2

    goto :goto_3

    .line 738
    :cond_2
    if-lez v5, :cond_3

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long/2addr v9, v1

    cmp-long v9, v9, v3

    if-lez v9, :cond_3

    .line 740
    nop

    .line 741
    move v7, v8

    goto :goto_0

    .line 745
    :cond_3
    const-wide/16 v9, 0xa

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-wide v9, v3

    .line 746
    :goto_1
    :try_start_1
    iput v6, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    .line 747
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    nop

    .line 750
    :try_start_2
    iput v8, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_2

    .line 749
    :catchall_0
    move-exception v0

    .line 749
    nop

    .line 750
    iput v8, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    .line 751
    throw v0

    :catch_0
    move-exception v9

    .line 750
    iput v8, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    .line 752
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 736
    :cond_5
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 755
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 756
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v0

    if-ne v0, v10, :cond_7

    .line 759
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_7
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    if-nez v0, :cond_8

    .line 762
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is not opened."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_8
    iput-boolean v6, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    .line 765
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected sendOpenConfirmation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 679
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 680
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 681
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 682
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 683
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 684
    iget v2, p0, Lcom/jcraft/jsch/Channel;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 685
    iget v2, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 686
    iget v2, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 687
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 688
    return-void
.end method

.method protected sendOpenFailure(I)V
    .locals 3

    .line 692
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 693
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 694
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 695
    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 696
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 697
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 698
    const-string p1, "open failed"

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 699
    sget-object p1, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 700
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 701
    return-void

    :catch_0
    move-exception p1

    .line 703
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public sendSignal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    new-instance v0, Lcom/jcraft/jsch/RequestSignal;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSignal;-><init>()V

    .line 591
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/RequestSignal;->setSignal(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/jcraft/jsch/RequestSignal;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 593
    return-void
.end method

.method setExitStatus(I)V
    .locals 0

    .line 655
    iput p1, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    .line 656
    return-void
.end method

.method public setExtOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    .line 149
    return-void
.end method

.method public setExtOutputStream(Ljava/io/OutputStream;Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    .line 153
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;Z)V

    .line 133
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;Z)V

    .line 137
    return-void
.end method

.method setLocalPacketSize(I)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    .line 418
    return-void
.end method

.method setLocalWindowSize(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    .line 414
    return-void
.end method

.method setLocalWindowSizeMax(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    .line 410
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;Z)V

    .line 141
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;Z)V

    .line 145
    return-void
.end method

.method declared-synchronized setRecipient(I)V
    .locals 0

    monitor-enter p0

    .line 88
    :try_start_0
    iput p1, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    .line 89
    iget p1, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    if-lez p1, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setRemotePacketSize(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    .line 432
    return-void
.end method

.method declared-synchronized setRemoteWindowSize(J)V
    .locals 0

    monitor-enter p0

    .line 421
    :try_start_0
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->rwsize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setSession(Lcom/jcraft/jsch/Session;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    .line 664
    return-void
.end method

.method public setXForwarding(Z)V
    .locals 0

    .line 117
    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Channel;->write([BII)V

    .line 438
    return-void
.end method

.method write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->put([BII)V

    .line 443
    return-void

    :catch_0
    move-exception p1

    .line 445
    return-void
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method write_ext([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->put_ext([BII)V

    .line 450
    return-void

    :catch_0
    move-exception p1

    .line 452
    return-void
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
.end method
