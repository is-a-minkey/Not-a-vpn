.class public Lcom/jcraft/jsch/ProxySOCKS4;
.super Ljava/lang/Object;
.source "ProxySOCKS4.java"

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

    .line 41
    const/16 v0, 0x438

    sput v0, Lcom/jcraft/jsch/ProxySOCKS4;->DEFAULTPORT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/jcraft/jsch/ProxySOCKS4;->DEFAULTPORT:I

    .line 52
    nop

    .line 53
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 57
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

    .line 60
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    .line 61
    iput v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    .line 67
    return-void
.end method

.method public static getDefaultPort()I
    .locals 1

    .line 221
    sget v0, Lcom/jcraft/jsch/ProxySOCKS4;->DEFAULTPORT:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 213
    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    .line 216
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    .line 217
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    .line 218
    return-void
.end method

.method public connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 78
    if-nez p1, :cond_0

    .line 79
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    iget v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    invoke-static {p1, v0, p4}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    .line 81
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    .line 82
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    .line 83
    goto :goto_0

    .line 179
    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 177
    :catch_1
    move-exception p1

    goto/16 :goto_6

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    .line 85
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    .line 86
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    .line 88
    :goto_0
    if-lez p4, :cond_1

    .line 89
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 93
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 94
    nop

    .line 112
    nop

    .line 113
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-byte v1, p1, v2

    .line 114
    const/4 v1, 0x2

    aput-byte p4, p1, v0

    .line 116
    const/4 v0, 0x3

    const/16 v3, 0x8

    ushr-int v4, p3, v3

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 117
    const/4 v1, 0x4

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    .line 122
    move p3, v2

    :goto_1
    array-length v0, p2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt p3, v0, :cond_7

    .line 125
    nop

    .line 129
    :try_start_2
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 130
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, v2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    .line 133
    :cond_2
    add-int/lit8 p2, v1, 0x1

    aput-byte v2, p1, v1

    .line 134
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    invoke-virtual {p3, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 157
    nop

    .line 158
    nop

    .line 159
    move p2, v2

    .line 159
    :goto_2
    if-lt p2, v3, :cond_5

    .line 166
    aget-byte p2, p1, v2

    if-eqz p2, :cond_3

    .line 167
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ProxySOCKS4: server returns VN "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 169
    :cond_3
    aget-byte p2, p1, p4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 p3, 0x5a

    if-eq p2, p3, :cond_4

    .line 171
    :try_start_3
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 172
    goto :goto_3

    :catch_2
    move-exception p2

    .line 174
    :goto_3
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProxySOCKS4: server returns CD "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, p4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 187
    :cond_4
    return-void

    .line 160
    :cond_5
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    sub-int v0, v3, p2

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 161
    if-gtz p3, :cond_6

    .line 162
    new-instance p1, Lcom/jcraft/jsch/JSchProxyException;

    const-string p2, "ProxySOCKS4: stream is closed"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    :cond_6
    add-int/2addr p2, p3

    goto :goto_2

    .line 123
    :cond_7
    add-int/lit8 v0, v1, 0x1

    :try_start_5
    aget-byte v4, p2, p3

    aput-byte v4, p1, v1
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 122
    add-int/lit8 p3, p3, 0x1

    move v1, v0

    goto/16 :goto_1

    :catch_3
    move-exception p1

    .line 126
    :try_start_6
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ProxySOCKS4: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 179
    :goto_4
    nop

    .line 181
    :try_start_7
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    if-eqz p2, :cond_8

    .line 182
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V

    .line 183
    goto :goto_5

    :catch_4
    move-exception p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 185
    :cond_8
    :goto_5
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ProxySOCKS4: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 177
    :goto_6
    nop

    .line 178
    throw p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public setUserPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->passwd:Ljava/lang/String;

    .line 72
    return-void
.end method
