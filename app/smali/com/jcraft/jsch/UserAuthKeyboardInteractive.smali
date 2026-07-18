.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
.super Lcom/jcraft/jsch/UserAuth;
.source "UserAuthKeyboardInteractive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 36
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v0, :cond_0

    .line 37
    return v2

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->username:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget v3, p1, Lcom/jcraft/jsch/Session;->port:I

    const/16 v4, 0x16

    if-eq v3, v4, :cond_1

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_1
    iget-object v3, p1, Lcom/jcraft/jsch/Session;->password:[B

    .line 46
    nop

    .line 48
    nop

    .line 49
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->username:Ljava/lang/String;

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v9

    move v4, v2

    .line 53
    :goto_0
    iget v5, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v6, p1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v5, v6, :cond_2

    .line 54
    return v2

    .line 64
    :cond_2
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 65
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 66
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v9}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 67
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v6, "ssh-connection"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 69
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v6, "keyboard-interactive"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 70
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    sget-object v6, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 71
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    sget-object v6, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 72
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 74
    move v10, v4

    move-object v11, v3

    move v3, v1

    .line 76
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    .line 77
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 79
    const/16 v5, 0x34

    if-ne v4, v5, :cond_4

    .line 80
    move v2, v1

    return v2

    .line 82
    :cond_4
    const/16 v5, 0x35

    if-ne v4, v5, :cond_5

    .line 83
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 84
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 85
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 86
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    .line 87
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 88
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    .line 89
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v5, :cond_3

    .line 90
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v5, v4}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 92
    goto :goto_1

    .line 94
    :cond_5
    const/16 v5, 0x33

    if-ne v4, v5, :cond_9

    .line 95
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 96
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 97
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 98
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    .line 99
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v5

    .line 103
    if-eqz v5, :cond_6

    .line 104
    new-instance p1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_6
    if-eqz v3, :cond_7

    .line 108
    return v2

    .line 112
    :cond_7
    iget v3, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    add-int/2addr v3, v1

    iput v3, p1, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 113
    nop

    .line 189
    if-eqz v10, :cond_8

    .line 190
    new-instance p1, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v0, "keyboard-interactive"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    move-object v3, v11

    move v4, v10

    goto/16 :goto_0

    .line 115
    :cond_9
    const/16 v3, 0x3c

    if-ne v4, v3, :cond_17

    .line 116
    nop

    .line 117
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 118
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 119
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 120
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    .line 121
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v6

    .line 122
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v12

    .line 124
    new-array v7, v12, [Ljava/lang/String;

    .line 125
    new-array v8, v12, [Z

    .line 126
    move v3, v2

    :goto_2
    if-lt v3, v12, :cond_15

    .line 131
    nop

    .line 133
    const/4 v13, 0x0

    if-eqz v11, :cond_a

    array-length v3, v7

    if-ne v3, v1, :cond_a

    aget-boolean v3, v8, v2

    if-nez v3, :cond_a

    .line 134
    aget-object v3, v7, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "password:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_a

    .line 135
    new-array v3, v1, [[B

    .line 136
    aput-object v11, v3, v2

    .line 137
    nop

    .line 138
    move-object v4, v3

    goto :goto_6

    :cond_a
    if-gtz v12, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 139
    :cond_b
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_e

    .line 140
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    check-cast v3, Lcom/jcraft/jsch/UIKeyboardInteractive;

    .line 142
    move-object v4, v0

    invoke-interface/range {v3 .. v8}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v3

    .line 141
    nop

    .line 143
    if-eqz v3, :cond_e

    .line 144
    array-length v4, v3

    new-array v4, v4, [[B

    .line 145
    move v5, v2

    :goto_3
    array-length v6, v3

    if-lt v5, v6, :cond_c

    goto :goto_5

    .line 146
    :cond_c
    aget-object v6, v3, v5

    if-eqz v6, :cond_d

    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_4

    :cond_d
    sget-object v6, Lcom/jcraft/jsch/Util;->empty:[B

    :goto_4
    aput-object v6, v4, v5

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    move-object v4, v13

    :goto_5
    move-object v13, v11

    .line 157
    :goto_6
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 158
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 159
    if-lez v12, :cond_12

    if-eqz v4, :cond_f

    .line 160
    array-length v3, v4

    if-eq v12, v3, :cond_12

    .line 162
    :cond_f
    if-nez v4, :cond_11

    .line 164
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v12}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 165
    move v3, v2

    :goto_7
    if-lt v3, v12, :cond_10

    .line 168
    goto :goto_8

    .line 166
    :cond_10
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    sget-object v6, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 169
    :cond_11
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 172
    :goto_8
    if-nez v4, :cond_13

    .line 173
    nop

    .line 174
    move v10, v1

    goto :goto_a

    .line 175
    :cond_12
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v12}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 176
    move v3, v2

    :goto_9
    if-lt v3, v12, :cond_14

    .line 180
    :cond_13
    :goto_a
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 184
    move v3, v2

    move-object v11, v13

    goto/16 :goto_1

    .line 177
    :cond_14
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 127
    :cond_15
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 128
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v4

    if-eqz v4, :cond_16

    move v4, v1

    goto :goto_b

    :cond_16
    move v4, v2

    :goto_b
    aput-boolean v4, v8, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 187
    :cond_17
    return v2
.end method
