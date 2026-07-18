.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;
.source "ChannelSftp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _ackid:I

.field _data:[B

.field private ackcount:I

.field private ackid:[I

.field private header:Lcom/jcraft/jsch/ChannelSftp$Header;

.field private init:Z

.field private isClosed:Z

.field private startid:I

.field final synthetic this$0:Lcom/jcraft/jsch/ChannelSftp;

.field private final synthetic val$_offset:[J

.field private final synthetic val$handle:[B

.field private final synthetic val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private writecount:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 745
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    .line 746
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    .line 747
    new-array p3, p1, [I

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    .line 748
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    .line 749
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    .line 750
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    .line 751
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    .line 752
    new-instance p2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p2}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>()V

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 807
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    .line 744
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

    .line 838
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-eqz v0, :cond_0

    .line 839
    return-void

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    .line 842
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 845
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->access$17(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    .line 846
    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    .line 852
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 848
    nop

    .line 849
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 847
    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-eqz v0, :cond_0

    .line 819
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    if-nez v0, :cond_3

    .line 824
    nop

    .line 824
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    if-gt v0, v1, :cond_1

    .line 830
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->access$16(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    return-void

    .line 828
    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 834
    :cond_3
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 812
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    .line 813
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 756
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    .line 757
    return-void
.end method

.method public write([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$12(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    .line 763
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$12(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    .line 764
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    .line 767
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-eqz v0, :cond_1

    .line 768
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 772
    :cond_1
    nop

    .line 773
    move v0, p3

    .line 773
    :cond_2
    :goto_0
    if-gtz v0, :cond_4

    .line 796
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long p2, p3

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result p1

    if-nez p1, :cond_3

    .line 797
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    .line 798
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 805
    :cond_3
    return-void

    .line 802
    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 800
    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 774
    :cond_4
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$13(Lcom/jcraft/jsch/ChannelSftp;)Z

    move-result v2

    const/4 v9, 0x4

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-wide v2, v2, Lcom/jcraft/jsch/ChannelSftp;->rwsize:J

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    array-length v4, v4

    const/16 v5, 0x15

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    add-int/2addr v4, v9

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 775
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    .line 777
    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    aget-wide v4, v4, v1

    move-object v6, p1

    move v7, p2

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelSftp;->access$14(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v2

    .line 778
    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    .line 779
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    aget-wide v4, v3, v1

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 780
    add-int/2addr p2, v2

    .line 781
    sub-int/2addr v0, v2

    .line 782
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$12(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$15(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    const/16 v3, 0x400

    if-lt v2, v3, :cond_2

    .line 783
    nop

    .line 783
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->access$15(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_7

    goto/16 :goto_0

    .line 784
    :cond_7
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v2, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->access$16(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    .line 786
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    if-gt v2, v3, :cond_9

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->access$12(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_8

    goto :goto_2

    .line 789
    :cond_8
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    goto :goto_1

    .line 787
    :cond_9
    :goto_2
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    invoke-direct {p1, v9, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_3
    nop

    .line 803
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 800
    :goto_4
    nop

    .line 801
    throw p1
.end method
