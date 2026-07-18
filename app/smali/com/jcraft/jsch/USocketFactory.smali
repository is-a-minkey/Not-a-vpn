.class public interface abstract Lcom/jcraft/jsch/USocketFactory;
.super Ljava/lang/Object;
.source "USocketFactory.java"


# virtual methods
.method public abstract bind(Ljava/nio/file/Path;)Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/nio/file/Path;)Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
