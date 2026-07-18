.class public Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;
.source "UserAuthNone.java"


# static fields
.field protected static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field protected static final SSH_MSG_SERVICE_REQUEST:I = 0x5


# instance fields
.field private methods:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMethods()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-object v0
.end method

.method protected setMethods(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 42
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 43
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 44
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v1, "ssh-userauth"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 45
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 47
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_SERVICE_REQUEST sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    .line 55
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v0

    .line 57
    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const-string v4, "SSH_MSG_SERVICE_ACCEPT received"

    invoke-interface {v3, v1, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 62
    :cond_2
    if-nez v0, :cond_3

    .line 63
    return v2

    .line 65
    :cond_3
    const-string v0, "enable_auth_none"

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    return v2

    .line 68
    :cond_4
    nop

    .line 69
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 77
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 78
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 79
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 80
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v3, "none"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 81
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 84
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    .line 85
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 87
    const/16 v3, 0x34

    if-ne v0, v3, :cond_6

    .line 88
    move v2, v1

    return v2

    .line 90
    :cond_6
    const/16 v3, 0x35

    if-ne v0, v3, :cond_7

    .line 91
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 92
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 93
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 94
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 95
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 96
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_5

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v0}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 100
    goto :goto_1

    :catch_0
    move-exception v0

    .line 103
    goto :goto_1

    .line 105
    :cond_7
    const/16 p1, 0x33

    if-ne v0, p1, :cond_8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 107
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 108
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 109
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 111
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/UserAuthNone;->setMethods(Ljava/lang/String;)V

    .line 118
    nop

    .line 125
    return v2

    .line 121
    :cond_8
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USERAUTH fail ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
