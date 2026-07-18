.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.super Ljava/lang/Object;
.source "ChannelSftp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    }
.end annotation


# instance fields
.field count:I

.field head:I

.field rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

.field final synthetic this$0:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;I)V
    .locals 1

    .line 1162
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1159
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 1163
    new-array p1, p2, [Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 1164
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length p2, p2

    if-lt p1, p2, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    .line 1168
    return-void

    .line 1165
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    aput-object v0, p2, p1

    .line 1164
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method add(IJI)V
    .locals 2

    .line 1175
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    if-nez v0, :cond_0

    .line 1176
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    .line 1177
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    add-int/2addr v0, v1

    .line 1178
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1179
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1180
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    .line 1181
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object p1, p1, v0

    iput-wide p2, p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    .line 1182
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object p1, p1, v0

    int-to-long p2, p4

    iput-wide p2, p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    .line 1183
    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    .line 1184
    return-void
.end method

.method cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    .line 1220
    const/4 v1, 0x0

    move-object v2, p1

    move p1, v1

    :goto_0
    if-lt p1, v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    .line 1232
    return-void

    .line 1221
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3, p2, v2}, Lcom/jcraft/jsch/ChannelSftp;->access$10(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    .line 1222
    iget v3, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 1223
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v5, v5

    if-lt v4, v5, :cond_1

    goto :goto_2

    .line 1224
    :cond_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    iget v6, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    if-ne v5, v6, :cond_2

    .line 1225
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v4, v5, v4

    iput v1, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    .line 1226
    nop

    .line 1229
    :goto_2
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->access$11(Lcom/jcraft/jsch/ChannelSftp;J)V

    .line 1220
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1223
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method count()I
    .locals 1

    .line 1211
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    return v0
.end method

.method get(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1187
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    .line 1188
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    .line 1189
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    .line 1190
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v3, v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 1191
    iput v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    .line 1192
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    if-eq v2, p1, :cond_4

    .line 1193
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->getOffset()J

    move-result-wide v2

    .line 1194
    nop

    .line 1195
    move v0, v4

    :goto_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v5, v5

    if-lt v0, v5, :cond_1

    goto :goto_1

    .line 1196
    :cond_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    if-ne v5, p1, :cond_3

    .line 1197
    nop

    .line 1198
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v5, v0

    iput v4, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    .line 1199
    move v4, v1

    .line 1202
    :goto_1
    if-eqz v4, :cond_2

    .line 1203
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;

    invoke-direct {p1, p0, v2, v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V

    throw p1

    .line 1204
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestQueue: unknown request id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1195
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object p1, p1, v0

    iput v4, p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    .line 1207
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object p1, p1, v0

    return-object p1
.end method

.method getOffset()J
    .locals 5

    .line 1235
    nop

    .line 1237
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 1244
    return-wide v0

    .line 1238
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    if-nez v3, :cond_1

    .line 1239
    goto :goto_1

    .line 1240
    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v3, v3, v2

    iget-wide v3, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 1241
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v0, v0, v2

    iget-wide v0, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    .line 1237
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 1

    .line 1171
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    .line 1172
    return-void
.end method

.method size()I
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v0, v0

    return v0
.end method
