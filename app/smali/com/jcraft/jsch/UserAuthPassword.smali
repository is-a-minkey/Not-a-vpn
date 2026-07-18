.class Lcom/jcraft/jsch/UserAuthPassword;
.super Lcom/jcraft/jsch/UserAuth;
.source "UserAuthPassword.java"


# instance fields
.field private final SSH_MSG_USERAUTH_PASSWD_CHANGEREQ:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    .line 30
    const/16 v0, 0x3c

    iput v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->SSH_MSG_USERAUTH_PASSWD_CHANGEREQ:I

    .line 29
    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 36
    iget-object v0, p1, Lcom/jcraft/jsch/Session;->password:[B

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->username:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    iget v2, p1, Lcom/jcraft/jsch/Session;->port:I

    const/4 v3, 0x0

    const/16 v4, 0x16

    if-eq v2, v4, :cond_0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    :try_start_0
    iget v2, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v4, p1, Lcom/jcraft/jsch/Session;->max_auth_tries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v2, v4, :cond_2

    .line 180
    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 182
    nop

    .line 47
    :cond_1
    return v11

    .line 50
    :cond_2
    if-nez v0, :cond_7

    .line 51
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 180
    if-eqz v0, :cond_3

    .line 181
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 182
    nop

    .line 53
    :cond_3
    return v11

    .line 55
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Password for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/UserInfo;->promptPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 56
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {p1, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v2}, Lcom/jcraft/jsch/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 61
    if-nez v2, :cond_6

    .line 62
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {p1, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_6
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .line 68
    :cond_7
    nop

    .line 69
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->username:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 78
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 79
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v12, 0x32

    invoke-virtual {v4, v12}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 80
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 81
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v5, "ssh-connection"

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 82
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v5, "password"

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 83
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v11}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 84
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 85
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 88
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    .line 89
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v4, v4, 0xff

    .line 91
    const/16 v5, 0x34

    if-ne v4, v5, :cond_a

    .line 180
    if-eqz v0, :cond_9

    .line 181
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 182
    nop

    .line 92
    :cond_9
    move v11, v10

    return v11

    .line 94
    :cond_a
    const/16 v5, 0x35

    if-ne v4, v5, :cond_b

    .line 95
    :try_start_3
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 96
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 97
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 98
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    .line 99
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 100
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v5, :cond_8

    .line 102
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v5, v4}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 104
    goto :goto_1

    .line 106
    :cond_b
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_12

    .line 107
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 108
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 109
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 110
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    .line 111
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 112
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    instance-of v5, v5, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v5, :cond_c

    goto :goto_3

    .line 119
    :cond_c
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    check-cast v5, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 121
    const-string v6, "Password Change Required"

    .line 122
    new-array v8, v10, [Ljava/lang/String;

    const-string v7, "New Password: "

    aput-object v7, v8, v11

    .line 123
    new-array v9, v10, [Z

    .line 125
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v7

    move-object v4, v5

    move-object v5, v1

    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v4

    .line 124
    nop

    .line 126
    if-nez v4, :cond_d

    .line 127
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {p1, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_d
    aget-object v5, v4, v11

    if-eqz v5, :cond_e

    aget-object v4, v4, v11

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2

    :cond_e
    sget-object v4, Lcom/jcraft/jsch/Util;->empty:[B

    .line 140
    :goto_2
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 141
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v12}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 142
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 143
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v6, "ssh-connection"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 144
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v6, "password"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 145
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 146
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 147
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 148
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 149
    nop

    .line 150
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 151
    goto/16 :goto_1

    .line 113
    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz p1, :cond_10

    .line 114
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthPassword;->userinfo:Lcom/jcraft/jsch/UserInfo;

    const-string v1, "Password must be changed."

    invoke-interface {p1, v1}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    :cond_10
    if-eqz v0, :cond_11

    .line 181
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 182
    nop

    .line 116
    :cond_11
    return v11

    .line 153
    :cond_12
    const/16 v2, 0x33

    if-ne v4, v2, :cond_14

    .line 154
    :try_start_4
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 155
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 156
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 157
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 158
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPassword;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v4

    .line 161
    if-eqz v4, :cond_13

    .line 162
    new-instance p1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_13
    iget v2, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    add-int/2addr v2, v10

    iput v2, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 165
    nop

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 175
    nop

    .line 44
    move-object v0, v3

    goto/16 :goto_0

    .line 180
    :cond_14
    if-eqz v0, :cond_15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 182
    nop

    .line 169
    :cond_15
    return v11

    .line 179
    :catchall_0
    move-exception p1

    .line 179
    nop

    .line 180
    if-eqz v0, :cond_16

    .line 181
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 182
    nop

    .line 184
    :cond_16
    throw p1
.end method
