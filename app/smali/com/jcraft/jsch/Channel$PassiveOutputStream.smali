.class Lcom/jcraft/jsch/Channel$PassiveOutputStream;
.super Ljava/io/PipedOutputStream;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PassiveOutputStream"
.end annotation


# instance fields
.field private _sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;


# direct methods
.method constructor <init>(Ljava/io/PipedInputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    invoke-direct {p0, p1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 632
    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz p2, :cond_0

    .line 633
    check-cast p1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 635
    :cond_0
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->checkSpace(I)V

    .line 642
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PipedOutputStream;->write(I)V

    .line 643
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0, p3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->checkSpace(I)V

    .line 650
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedOutputStream;->write([BII)V

    .line 651
    return-void
.end method
