.class public Lcom/jcraft/jsch/ChannelSubsystem;
.super Lcom/jcraft/jsch/ChannelSession;
.source "ChannelSubsystem.java"


# instance fields
.field subsystem:Ljava/lang/String;

.field want_reply:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

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

    .line 87
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getExtInputStream()Ljava/io/InputStream;

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

    .line 78
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 79
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 80
    return-void
.end method

.method public bridge synthetic setAgentForwarding(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

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

    .line 83
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSubsystem;->setExtOutputStream(Ljava/io/OutputStream;)V

    .line 84
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

.method public setSubsystem(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public bridge synthetic setTerminalMode([B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setTerminalMode([B)V

    return-void
.end method

.method public setWantReply(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    .line 39
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

    .line 47
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    .line 50
    :try_start_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    .line 52
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 54
    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    .line 56
    invoke-virtual {v1, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 58
    :cond_1
    new-instance v1, Lcom/jcraft/jsch/RequestSubsystem;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestSubsystem;-><init>()V

    .line 59
    check-cast v1, Lcom/jcraft/jsch/RequestSubsystem;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/jcraft/jsch/RequestSubsystem;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V

    .line 60
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, v1, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v2, Lcom/jcraft/jsch/-$$Lambda$mWUqODk2utiTLO_N2SoOaQsTFr0;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/-$$Lambda$mWUqODk2utiTLO_N2SoOaQsTFr0;-><init>(Lcom/jcraft/jsch/ChannelSubsystem;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    .line 68
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subsystem for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 69
    iget-boolean v1, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 61
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_4

    .line 62
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    .line 64
    :cond_4
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "ChannelSubsystem"

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
