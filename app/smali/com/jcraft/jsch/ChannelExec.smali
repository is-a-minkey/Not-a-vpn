.class public Lcom/jcraft/jsch/ChannelExec;
.super Lcom/jcraft/jsch/ChannelSession;
.source "ChannelExec.java"


# instance fields
.field command:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getErrStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->getExtInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 71
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 72
    return-void
.end method

.method public bridge synthetic setAgentForwarding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    .line 62
    return-void
.end method

.method public setCommand([B)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    .line 66
    return-void
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

.method public setErrStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelExec;->setExtOutputStream(Ljava/io/OutputStream;)V

    .line 76
    return-void
.end method

.method public setErrStream(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/ChannelExec;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    .line 80
    return-void
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

.method public bridge synthetic setTerminalMode([B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setTerminalMode([B)V

    return-void
.end method

.method public bridge synthetic setXForwarding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setXForwarding(Z)V

    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->sendRequests()V

    .line 42
    new-instance v1, Lcom/jcraft/jsch/RequestExec;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelExec;->command:[B

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/RequestExec;-><init>([B)V

    .line 43
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 44
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v2, Lcom/jcraft/jsch/-$$Lambda$oPbUYyS47JcFSkoRbEeAVOQKoLE;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/-$$Lambda$oPbUYyS47JcFSkoRbEeAVOQKoLE;-><init>(Lcom/jcraft/jsch/ChannelExec;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->thread:Ljava/lang/Thread;

    .line 52
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->thread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exec thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 53
    iget-boolean v1, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelExec;->thread:Ljava/lang/Thread;

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelExec;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 45
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_2

    .line 46
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    .line 47
    :cond_2
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelExec"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
