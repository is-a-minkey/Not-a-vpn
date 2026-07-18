.class Lcom/jcraft/jsch/RequestExec;
.super Lcom/jcraft/jsch/Request;
.source "RequestExec.java"


# instance fields
.field private command:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestExec;->command:[B

    .line 33
    iput-object p1, p0, Lcom/jcraft/jsch/RequestExec;->command:[B

    .line 34
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

    .line 38
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 40
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 41
    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 49
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 50
    const/16 v1, 0x62

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 51
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 52
    const-string p2, "exec"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 53
    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestExec;->waitForReply()Z

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

    .line 54
    iget-object p2, p0, Lcom/jcraft/jsch/RequestExec;->command:[B

    array-length p2, p2

    const/4 v1, 0x4

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 55
    iget-object p2, p0, Lcom/jcraft/jsch/RequestExec;->command:[B

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/RequestExec;->write(Lcom/jcraft/jsch/Packet;)V

    .line 57
    return-void
.end method
