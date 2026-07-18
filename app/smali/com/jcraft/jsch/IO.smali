.class Lcom/jcraft/jsch/IO;
.super Ljava/lang/Object;
.source "IO.java"


# instance fields
.field in:Ljava/io/InputStream;

.field private in_dontclose:Z

.field out:Ljava/io/OutputStream;

.field private out_dontclose:Z

.field out_ext:Ljava/io/OutputStream;

.field private out_ext_dontclose:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->in_dontclose:Z

    .line 40
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->out_dontclose:Z

    .line 41
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->out_ext_dontclose:Z

    .line 34
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 115
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jcraft/jsch/IO;->in_dontclose:Z

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 117
    :cond_0
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    :catch_0
    move-exception v1

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/IO;->out_close()V

    .line 124
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jcraft/jsch/IO;->out_ext_dontclose:Z

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 126
    :cond_1
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    .line 127
    return-void

    :catch_1
    move-exception v0

    .line 129
    return-void
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
.end method

.method getByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method getByte([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 91
    return-void
.end method

.method getByte([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 96
    if-gez v0, :cond_1

    .line 97
    new-instance p1, Ljava/io/IOException;

    const-string p2, "End of IO Stream Read"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    add-int/2addr p2, v0

    .line 100
    sub-int/2addr p3, v0

    .line 101
    nop

    .line 94
    if-gtz p3, :cond_0

    .line 102
    return-void
.end method

.method out_close()V
    .locals 1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->out_dontclose:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    .line 109
    return-void

    :catch_0
    move-exception v0

    .line 111
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method put(Lcom/jcraft/jsch/Packet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget p1, p1, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    iget-object p1, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 73
    return-void
.end method

.method put([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget-object p1, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 78
    return-void
.end method

.method put_ext([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget-object p1, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 83
    return-void
.end method

.method setExtOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    .line 54
    return-void
.end method

.method setExtOutputStream(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 57
    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->out_ext_dontclose:Z

    .line 58
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;)V

    .line 59
    return-void
.end method

.method setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    .line 63
    return-void
.end method

.method setInputStream(Ljava/io/InputStream;Z)V
    .locals 0

    .line 66
    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->in_dontclose:Z

    .line 67
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method

.method setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method setOutputStream(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 48
    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->out_dontclose:Z

    .line 49
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 50
    return-void
.end method
