.class public Lcom/jcraft/jsch/ProxySOCKS5;
.super Ljava/lang/Object;
.source "ProxySOCKS5.java"

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

    sput v0, Lcom/jcraft/jsch/ProxySOCKS5;->DEFAULTPORT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/jcraft/jsch/ProxySOCKS5;->DEFAULTPORT:I

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
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_host:Ljava/lang/String;

    .line 61
    iput v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_port:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_host:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_port:I

    .line 67
    return-void
.end method

.method private fill(Ljava/io/InputStream;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    nop

    .line 337
    const/4 v0, 0x0

    .line 337
    :goto_0
    if-lt v0, p3, :cond_0

    .line 344
    return-void

    .line 338
    :cond_0
    sub-int v1, p3, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 339
    if-gtz v1, :cond_1

    .line 340
    new-instance p1, Lcom/jcraft/jsch/JSchProxyException;

    const-string p2, "ProxySOCKS5: stream is closed"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getDefaultPort()I
    .locals 1

    .line 332
    sget v0, Lcom/jcraft/jsch/ProxySOCKS5;->DEFAULTPORT:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 324
    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    .line 327
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    .line 328
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    .line 329
    return-void
.end method

.method public connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 78
    if-nez p1, :cond_0

    .line 79
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_host:Ljava/lang/String;

    iget v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_port:I

    invoke-static {p1, v0, p4}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    .line 81
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    .line 82
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    .line 83
    goto :goto_0

    .line 289
    :catch_0
    move-exception p1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    goto/16 :goto_b

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_host:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->proxy_port:I

    invoke-interface {p1, v0, v1}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    .line 85
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    .line 86
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    .line 88
    :goto_0
    if-lez p4, :cond_1

    .line 89
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 93
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 94
    nop

    .line 95
    nop

    .line 96
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v0, p4

    .line 114
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v2, p1, v3

    .line 116
    const/4 v4, 0x2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 117
    const/4 v0, 0x3

    aput-byte v3, p1, v4

    .line 118
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x4

    aput-byte v4, p1, v0

    move v0, v1

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0, p1, v4}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    .line 133
    nop

    .line 134
    aget-byte v0, p1, p4

    and-int/lit16 v0, v0, 0xff

    .line 135
    nop

    .line 136
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 192
    :pswitch_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    goto/16 :goto_4

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    .line 162
    :cond_4
    nop

    .line 163
    const/4 v0, 0x1

    aput-byte p4, p1, v3

    .line 164
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p1, v0

    .line 165
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v3, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    .line 167
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p1, v0

    .line 168
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v6, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v3, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    .line 171
    iget-object v5, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0, p1, v4}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    .line 183
    aget-byte v0, p1, p4

    and-int/lit16 v0, v0, 0xff

    .line 184
    if-nez v0, :cond_5

    .line 185
    nop

    .line 186
    goto :goto_3

    .line 187
    :cond_5
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 188
    const-string v5, "SOCKS5 username/password authentication failed: server status = %02X"

    new-array v6, p4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    .line 187
    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    move v0, v3

    goto :goto_5

    .line 143
    :cond_6
    :goto_2
    const-string v1, "SOCKS5 username/password authentication requested by server with no username/password configured"

    .line 142
    nop

    .line 144
    move v0, v3

    goto :goto_5

    .line 138
    :pswitch_2
    nop

    .line 139
    :goto_3
    move v0, p4

    goto :goto_5

    .line 193
    :goto_4
    const-string v5, "Unsupported SOCKS5 authentication method requested by server: %02X"

    new-array v6, p4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    .line 192
    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 197
    :goto_5
    if-nez v0, :cond_8

    .line 199
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    goto :goto_6

    :catch_2
    move-exception p1

    .line 202
    :goto_6
    if-nez v1, :cond_7

    .line 203
    :try_start_2
    const-string v1, "fail in SOCKS5 proxy"

    .line 205
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/JSchProxyException;

    invoke-direct {p1, v1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_8
    nop

    .line 224
    const/4 v0, 0x1

    aput-byte v2, p1, v3

    .line 225
    const/4 v1, 0x2

    aput-byte p4, p1, v0

    .line 226
    const/4 v0, 0x3

    aput-byte v3, p1, v1

    .line 228
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    .line 229
    array-length v1, p2

    .line 230
    const/4 v2, 0x4

    const/4 v5, 0x3

    aput-byte v5, p1, v0

    .line 231
    const/4 v0, 0x5

    int-to-byte v6, v1

    aput-byte v6, p1, v2

    .line 232
    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    add-int p2, v0, v1

    .line 234
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 235
    add-int/lit8 p2, v0, 0x1

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 237
    iget-object p3, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    invoke-virtual {p3, p1, v3, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 260
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    const/4 p3, 0x4

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    .line 262
    aget-byte p2, p1, p4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p2, :cond_9

    .line 264
    :try_start_3
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 265
    goto :goto_7

    :catch_3
    move-exception p2

    .line 267
    :goto_7
    :try_start_4
    new-instance p2, Lcom/jcraft/jsch/JSchProxyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ProxySOCKS5: server returns "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, p4

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 270
    :cond_9
    aget-byte p2, p1, v5

    and-int/lit16 p2, p2, 0xff

    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_8

    .line 283
    :pswitch_4
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    const/16 p3, 0x12

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    goto :goto_8

    .line 277
    :pswitch_5
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    invoke-direct {p0, p2, p1, p4}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    .line 279
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    aget-byte p3, p1, v3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p3, v4

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V

    .line 280
    return-void

    .line 273
    :pswitch_6
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    const/4 p3, 0x6

    invoke-direct {p0, p2, p1, p3}, Lcom/jcraft/jsch/ProxySOCKS5;->fill(Ljava/io/InputStream;[BI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 274
    return-void

    .line 287
    :goto_8
    nop

    .line 298
    return-void

    .line 289
    :goto_9
    nop

    .line 291
    :try_start_5
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    if-eqz p2, :cond_a

    .line 292
    iget-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V

    .line 293
    goto :goto_a

    :catch_4
    move-exception p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 295
    :cond_a
    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ProxySOCKS5: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    new-instance p3, Lcom/jcraft/jsch/JSchProxyException;

    invoke-direct {p3, p2, p1}, Lcom/jcraft/jsch/JSchProxyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 288
    :goto_b
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS5;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public setUserPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS5;->user:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS5;->passwd:Ljava/lang/String;

    .line 72
    return-void
.end method
