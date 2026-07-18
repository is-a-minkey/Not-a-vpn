.class Lcom/jcraft/jsch/RequestX11;
.super Lcom/jcraft/jsch/Request;
.source "RequestX11.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 38
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 39
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 49
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 50
    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 51
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 52
    const-string p2, "x11-req"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 53
    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestX11;->waitForReply()Z

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 55
    const-string p2, "MIT-MAGIC-COOKIE-1"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 56
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->getFakedCookie(Lcom/jcraft/jsch/Session;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 57
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/RequestX11;->write(Lcom/jcraft/jsch/Packet;)V

    .line 60
    iput-boolean v3, p1, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    .line 61
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lcom/jcraft/jsch/ChannelX11;->cookie:[B

    .line 32
    return-void
.end method
