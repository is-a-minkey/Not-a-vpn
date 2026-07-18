.class public Lcom/jcraft/jsch/UnixDomainSocketFactory;
.super Ljava/lang/Object;
.source "UnixDomainSocketFactory.java"

# interfaces
.implements Lcom/jcraft/jsch/USocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    const-string v1, "UnixDomainSocketFactory requires Java16+."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/AgentProxyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bind(Ljava/nio/file/Path;)Ljava/nio/channels/ServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "UnixDomainSocketFactory requires Java16+."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/nio/file/Path;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "UnixDomainSocketFactory requires Java16+."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
