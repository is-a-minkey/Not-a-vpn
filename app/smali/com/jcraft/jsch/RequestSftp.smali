.class Lcom/jcraft/jsch/RequestSftp;
.super Lcom/jcraft/jsch/Request;
.source "RequestSftp.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/RequestSftp;->setReply(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 38
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 39
    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 40
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 41
    const/16 v1, 0x62

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 42
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 43
    const-string p2, "subsystem"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 44
    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestSftp;->waitForReply()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    int-to-byte p2, v2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 45
    const-string p2, "sftp"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/RequestSftp;->write(Lcom/jcraft/jsch/Packet;)V

    .line 47
    return-void
.end method
