.class Lcom/jcraft/jsch/RequestWindowChange;
.super Lcom/jcraft/jsch/Request;
.source "RequestWindowChange.java"


# instance fields
.field height_pixels:I

.field height_rows:I

.field width_columns:I

.field width_pixels:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    .line 31
    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    .line 32
    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    .line 33
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

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

    .line 44
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 46
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 47
    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 57
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 58
    const/16 v1, 0x62

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 59
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 60
    const-string p2, "window-change"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 61
    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestWindowChange;->waitForReply()Z

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

    .line 62
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 63
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 64
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 65
    iget p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/RequestWindowChange;->write(Lcom/jcraft/jsch/Packet;)V

    .line 67
    return-void
.end method

.method setSize(IIII)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    .line 37
    iput p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    .line 38
    iput p3, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    .line 39
    iput p4, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    .line 40
    return-void
.end method
