.class Lcom/jcraft/jsch/Channel$PassiveInputStream;
.super Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PassiveInputStream"
.end annotation


# instance fields
.field os:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 615
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->os:Ljava/io/PipedOutputStream;

    .line 616
    return-void
.end method

.method constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    .line 610
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->os:Ljava/io/PipedOutputStream;

    .line 611
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->os:Ljava/io/PipedOutputStream;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->os:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V

    .line 623
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->os:Ljava/io/PipedOutputStream;

    .line 624
    return-void
.end method
