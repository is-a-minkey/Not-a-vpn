.class Lcom/jcraft/jsch/RequestPtyReq;
.super Lcom/jcraft/jsch/Request;
.source "RequestPtyReq.java"


# instance fields
.field private tcol:I

.field private terminal_mode:[B

.field private thp:I

.field private trow:I

.field private ttype:Ljava/lang/String;

.field private twp:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 30
    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    .line 32
    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    .line 34
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    .line 36
    sget-object v0, Lcom/jcraft/jsch/Util;->empty:[B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    .line 29
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

    .line 57
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 59
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 60
    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 62
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 63
    const/16 v1, 0x62

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 64
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 65
    const-string p2, "pty-req"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 66
    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestPtyReq;->waitForReply()Z

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

    .line 67
    iget-object p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 68
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 69
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 70
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 71
    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 72
    iget-object p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/RequestPtyReq;->write(Lcom/jcraft/jsch/Packet;)V

    .line 74
    return-void
.end method

.method setCode(Ljava/lang/String;)V
    .locals 0

    .line 38
    return-void
.end method

.method setTSize(IIII)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    .line 50
    iput p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    .line 51
    iput p3, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    .line 52
    iput p4, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    .line 53
    return-void
.end method

.method setTType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    .line 42
    return-void
.end method

.method setTerminalMode([B)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    .line 46
    return-void
.end method
