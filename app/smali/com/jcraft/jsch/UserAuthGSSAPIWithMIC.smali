.class Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;
.super Lcom/jcraft/jsch/UserAuth;
.source "UserAuthGSSAPIWithMIC.java"


# static fields
.field private static final SSH_MSG_USERAUTH_GSSAPI_ERROR:I = 0x40

.field private static final SSH_MSG_USERAUTH_GSSAPI_ERRTOK:I = 0x41

.field private static final SSH_MSG_USERAUTH_GSSAPI_EXCHANGE_COMPLETE:I = 0x3f

.field private static final SSH_MSG_USERAUTH_GSSAPI_MIC:I = 0x42

.field private static final SSH_MSG_USERAUTH_GSSAPI_RESPONSE:I = 0x3c

.field private static final SSH_MSG_USERAUTH_GSSAPI_TOKEN:I = 0x3d

.field private static final supported_method:[Ljava/lang/String;

.field private static final supported_oid:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [[B

    .line 39
    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 40
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    .line 42
    const-string v0, "gssapi-with-mic.krb5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_method:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0x12t
        0x1t
        0x2t
        0x2t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 48
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 58
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 59
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 60
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 61
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v3, "gssapi-with-mic"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 62
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    sget-object v3, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 63
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    sget-object v4, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    array-length v4, v4

    if-lt v3, v4, :cond_10

    .line 66
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 68
    nop

    .line 71
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    .line 72
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 74
    const/4 v4, 0x1

    const/16 v5, 0x33

    if-ne v3, v5, :cond_1

    .line 75
    return v1

    .line 78
    :cond_1
    const/16 v6, 0x3c

    if-ne v3, v6, :cond_e

    .line 79
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 80
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 81
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 82
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    .line 84
    move v3, v1

    :goto_2
    sget-object v7, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    array-length v7, v7

    const/4 v8, 0x0

    if-lt v3, v7, :cond_2

    goto :goto_3

    .line 85
    :cond_2
    sget-object v7, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    aget-object v7, v7, v3

    invoke-static {v6, v7}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 86
    sget-object v6, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_method:[Ljava/lang/String;

    aget-object v8, v6, v3

    .line 87
    nop

    .line 91
    :goto_3
    if-nez v8, :cond_3

    .line 92
    return v1

    .line 113
    :cond_3
    nop

    .line 116
    :try_start_0
    invoke-virtual {p1, v8}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v6, Lcom/jcraft/jsch/GSSContext;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 115
    nop

    .line 117
    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/GSSContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    nop

    .line 123
    :try_start_1
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->username:Ljava/lang/String;

    iget-object v7, p1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Lcom/jcraft/jsch/GSSContext;->create(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    nop

    .line 128
    new-array v6, v1, [B

    .line 130
    nop

    .line 130
    :cond_4
    :goto_4
    invoke-interface {v3}, Lcom/jcraft/jsch/GSSContext;->isEstablished()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 179
    new-instance v6, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v6}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getSessionId()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 186
    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 187
    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 188
    const-string v0, "ssh-connection"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 189
    const-string v0, "gssapi-with-mic"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 191
    iget-object v0, v6, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v2

    invoke-interface {v3, v0, v1, v2}, Lcom/jcraft/jsch/GSSContext;->getMIC([BII)[B

    move-result-object v0

    .line 193
    if-nez v0, :cond_5

    .line 194
    return v1

    .line 197
    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 198
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x42

    invoke-virtual {v2, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 199
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 200
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 202
    invoke-interface {v3}, Lcom/jcraft/jsch/GSSContext;->dispose()V

    .line 204
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    .line 205
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 207
    const/16 v0, 0x34

    if-ne p1, v0, :cond_6

    .line 208
    move v1, v4

    return v1

    .line 209
    :cond_6
    if-ne p1, v5, :cond_7

    .line 210
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 211
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 212
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 213
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    .line 217
    if-eqz v0, :cond_7

    .line 218
    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_7
    return v1

    .line 132
    :cond_8
    :try_start_2
    array-length v7, v6

    invoke-interface {v3, v6, v1, v7}, Lcom/jcraft/jsch/GSSContext;->init([BII)[B

    move-result-object v6

    .line 133
    nop

    .line 141
    if-eqz v6, :cond_9
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 143
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 144
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 145
    iget-object v7, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v7}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 148
    :cond_9
    invoke-interface {v3}, Lcom/jcraft/jsch/GSSContext;->isEstablished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 149
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v6}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    iput-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    .line 150
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 151
    const/16 v7, 0x40

    if-ne v6, v7, :cond_a

    .line 157
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v6}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    iput-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    .line 158
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 160
    goto :goto_5

    :cond_a
    const/16 v7, 0x41

    if-ne v6, v7, :cond_b

    .line 163
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v6}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    iput-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    .line 164
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 168
    :cond_b
    :goto_5
    if-ne v6, v5, :cond_c

    .line 169
    return v1

    .line 172
    :cond_c
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 173
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 174
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 175
    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 138
    return v1

    :catch_1
    move-exception p1

    .line 125
    return v1

    :catch_2
    move-exception p1

    .line 119
    return v1

    .line 84
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 98
    :cond_e
    const/16 v4, 0x35

    if-ne v3, v4, :cond_f

    .line 99
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 100
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 101
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 102
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 103
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 104
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    .line 105
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v4, v3}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 108
    goto/16 :goto_1

    .line 110
    :cond_f
    return v1

    .line 64
    :cond_10
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    sget-object v5, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
