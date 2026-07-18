.class Lcom/jcraft/jsch/RequestSubsystem;
.super Lcom/jcraft/jsch/Request;
.source "RequestSubsystem.java"


# instance fields
.field private subsystem:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/RequestSubsystem;->subsystem:Ljava/lang/String;

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

    .line 41
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 43
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 44
    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 46
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 47
    const/16 v1, 0x62

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 48
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 49
    const-string p2, "subsystem"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 50
    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestSubsystem;->waitForReply()Z

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

    .line 51
    iget-object p2, p0, Lcom/jcraft/jsch/RequestSubsystem;->subsystem:Ljava/lang/String;

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/RequestSubsystem;->write(Lcom/jcraft/jsch/Packet;)V

    .line 53
    return-void
.end method

.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p4}, Lcom/jcraft/jsch/RequestSubsystem;->setReply(Z)V

    .line 35
    iput-object p3, p0, Lcom/jcraft/jsch/RequestSubsystem;->subsystem:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/RequestSubsystem;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 37
    return-void
.end method
