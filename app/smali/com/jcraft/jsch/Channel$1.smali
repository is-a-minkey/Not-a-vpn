.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/Channel;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:[B

.field private buffer:Lcom/jcraft/jsch/Buffer;

.field private closed:Z

.field private dataLen:I

.field private packet:Lcom/jcraft/jsch/Packet;

.field final synthetic this$0:Lcom/jcraft/jsch/Channel;

.field private final synthetic val$channel:Lcom/jcraft/jsch/Channel;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 196
    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    .line 197
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 198
    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    .line 199
    iput-boolean p1, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    .line 217
    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    .line 195
    return-void
.end method

.method private declared-synchronized init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 202
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 203
    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    .line 205
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    array-length v0, v0

    add-int/lit8 v0, v0, -0xe

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getBufferMargin()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    .line 209
    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    .line 210
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to initialize the channel."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 212
    nop

    .line 213
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to initialize the channel."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    .line 289
    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    return-void

    .line 295
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v0, :cond_1

    .line 296
    return-void

    .line 298
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-lez v0, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->eof()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    .line 303
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-nez v0, :cond_1

    .line 266
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 268
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 269
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v1, v1, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 270
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 271
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 273
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    .line 274
    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    .line 275
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 275
    :cond_2
    monitor-exit v1

    .line 283
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :catch_0
    move-exception v0

    .line 279
    nop

    .line 280
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    .line 281
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 222
    iget-object p1, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    .line 223
    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v0, :cond_1

    .line 232
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 236
    array-length v1, v0

    .line 238
    nop

    .line 238
    :goto_0
    if-gtz p3, :cond_2

    .line 255
    nop

    .line 258
    return-void

    .line 239
    :cond_2
    nop

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getBufferMargin()I

    move-result v2

    .line 241
    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/16 v4, 0xe

    add-int/2addr v3, v4

    sub-int v3, v1, v3

    sub-int/2addr v3, v2

    if-le p3, v3, :cond_3

    .line 242
    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr v3, v4

    sub-int v3, v1, v3

    sub-int v2, v3, v2

    goto :goto_1

    :cond_3
    move v2, p3

    .line 245
    :goto_1
    if-gtz v2, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    .line 247
    goto :goto_0

    .line 250
    :cond_4
    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    .line 252
    add-int/2addr p2, v2

    .line 253
    sub-int/2addr p3, v2

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
