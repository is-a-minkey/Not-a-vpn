.class Lcom/jcraft/jsch/RequestEnv;
.super Lcom/jcraft/jsch/Request;
.source "RequestEnv.java"


# instance fields
.field name:[B

.field value:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 30
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jsch/RequestEnv;->name:[B

    .line 31
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->value:[B

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

    .line 40
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 41
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/RequestEnv;->setReply(Z)V

    .line 43
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 44
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 46
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 47
    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 48
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 49
    const-string p2, "env"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 51
    iget-object p1, p0, Lcom/jcraft/jsch/RequestEnv;->name:[B

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 52
    iget-object p1, p0, Lcom/jcraft/jsch/RequestEnv;->value:[B

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/RequestEnv;->write(Lcom/jcraft/jsch/Packet;)V

    .line 54
    return-void
.end method

.method setEnv([B[B)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/jcraft/jsch/RequestEnv;->name:[B

    .line 35
    iput-object p2, p0, Lcom/jcraft/jsch/RequestEnv;->value:[B

    .line 36
    return-void
.end method
