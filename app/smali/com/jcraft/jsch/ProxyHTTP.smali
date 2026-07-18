.class public Lcom/jcraft/jsch/ProxyHTTP;
.super Ljava/lang/Object;
.source "ProxyHTTP.java"

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# static fields
.field private static DEFAULTPORT:I


# instance fields
.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private passwd:Ljava/lang/String;

.field private proxy_host:Ljava/lang/String;

.field private proxy_port:I

.field private socket:Ljava/net/Socket;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/16 v0, 0x50

    sput v0, Lcom/jcraft/jsch/ProxyHTTP;->DEFAULTPORT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v0, Lcom/jcraft/jsch/ProxyHTTP;->DEFAULTPORT:I

    .line 47
    nop

    .line 48
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 52
    move v0, p1

    :goto_0
    move-object p1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_host:Ljava/lang/String;

    .line 56
    iput v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_port:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_host:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_port:I

    .line 62
    return-void
.end method

.method public static getDefaultPort()I
    .locals 1

    .line 204
    sget v0, Lcom/jcraft/jsch/ProxyHTTP;->DEFAULTPORT:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 196
    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    .line 199
    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    .line 200
    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    .line 201
    return-void
.end method

.method public connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 73
    if-nez p1, :cond_0

    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_host:Ljava/lang/String;

    iget v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_port:I

    invoke-static {p1, v0, p4}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    .line 75
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    .line 76
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    .line 77
    goto :goto_0

    .line 161
    :catch_0
    move-exception p1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    goto/16 :goto_9

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_host:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxyHTTP;->proxy_port:I

    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    .line 79
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    .line 80
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    .line 82
    :goto_0
    if-lez p4, :cond_1

    .line 83
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 87
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONNECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " HTTP/1.0\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 89
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->user:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->passwd:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->user:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->passwd:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    .line 91
    array-length p3, p1

    invoke-static {p1, p2, p3, p4}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object p1

    .line 92
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    const-string v0, "Proxy-Authorization: Basic "

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 94
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    const-string p3, "\r\n"

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    const-string p3, "\r\n"

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 98
    iget-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 100
    nop

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    move p3, p2

    .line 103
    :goto_1
    const/16 v0, 0xa

    const/16 v1, 0xd

    if-gez p3, :cond_3

    goto :goto_2

    .line 104
    :cond_3
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result p3

    .line 105
    if-eq p3, v1, :cond_4

    .line 106
    int-to-char v0, p3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    goto :goto_1

    .line 109
    :cond_4
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result p3

    .line 110
    if-eq p3, v0, :cond_5

    goto :goto_1

    .line 115
    :cond_5
    :goto_2
    if-gez p3, :cond_6

    .line 116
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 119
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    const-string v2, "Unknow reason"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    nop

    .line 123
    const/16 v3, 0x20

    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    add-int p3, v5, p4

    :try_start_2
    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 125
    invoke-virtual {p1, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    add-int/2addr p4, v3

    :try_start_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 127
    move-object v2, p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    move v5, p3

    :goto_3
    move p3, v4

    .line 129
    :goto_4
    const/16 p1, 0xc8

    if-eq p3, p1, :cond_7

    .line 130
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "proxy error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_7
    nop

    .line 140
    :cond_8
    nop

    .line 141
    move p1, p2

    .line 141
    :goto_5
    if-gez v5, :cond_9

    goto :goto_6

    .line 142
    :cond_9
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 143
    if-eq v5, v1, :cond_a

    .line 144
    add-int/lit8 p1, p1, 0x1

    .line 145
    goto :goto_5

    .line 147
    :cond_a
    iget-object p3, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 148
    if-eq v5, v0, :cond_b

    goto :goto_5

    .line 153
    :cond_b
    :goto_6
    if-gez v5, :cond_c

    .line 154
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 156
    :cond_c
    if-nez p1, :cond_8

    .line 159
    nop

    .line 170
    return-void

    .line 161
    :goto_7
    nop

    .line 163
    :try_start_5
    iget-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    if-eqz p2, :cond_d

    .line 164
    iget-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V

    .line 165
    goto :goto_8

    :catch_5
    move-exception p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 167
    :cond_d
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProxyHTTP: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 168
    new-instance p3, Lcom/jcraft/jsch/JSchProxyException;

    invoke-direct {p3, p2, p1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 160
    :goto_9
    throw p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/jcraft/jsch/ProxyHTTP;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public setUserPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/jcraft/jsch/ProxyHTTP;->user:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/jcraft/jsch/ProxyHTTP;->passwd:Ljava/lang/String;

    .line 67
    return-void
.end method
