.class Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;
.super Ljava/lang/Object;
.source "OpenSSHConfig.java"

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/OpenSSHConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfig"
.end annotation


# instance fields
.field private _configs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/util/Vector<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field final synthetic this$0:Lcom/jcraft/jsch/OpenSSHConfig;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/OpenSSHConfig;Ljava/lang/String;)V
    .locals 9

    .line 185
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->this$0:Lcom/jcraft/jsch/OpenSSHConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    .line 186
    iput-object p2, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->host:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$0(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 190
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    .line 191
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$1(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 192
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$1(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    .line 193
    :cond_0
    nop

    .line 194
    nop

    .line 195
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$1(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[ \t]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 196
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1
    array-length v7, v2

    if-lt v4, v7, :cond_2

    .line 212
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 213
    iget-object v2, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$0(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$1(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_2
    nop

    .line 198
    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 199
    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    nop

    .line 201
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v3

    .line 203
    :goto_2
    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, p2}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 204
    if-eqz v8, :cond_4

    .line 205
    nop

    .line 206
    move v6, v1

    goto :goto_3

    .line 207
    :cond_4
    move v5, v1

    .line 196
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 217
    :cond_6
    return-void
.end method

.method private find(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 220
    nop

    .line 221
    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->access$2()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->access$2()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 224
    :goto_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 225
    nop

    .line 226
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v2, v4, :cond_1

    goto :goto_4

    .line 227
    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 228
    move v6, v1

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_2

    goto :goto_3

    .line 229
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 230
    aget-object v8, v7, v1

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 231
    aget-object v3, v7, v5

    .line 232
    nop

    .line 235
    :goto_3
    if-eqz v3, :cond_a

    .line 236
    nop

    .line 239
    :goto_4
    if-eqz v3, :cond_4

    const-string v2, "SERVERALIVEINTERVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CONNECTTIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 242
    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    move-object v3, v2

    goto :goto_5

    :catch_0
    move-exception v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    invoke-direct {p0, p1, v2}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->logError(Ljava/lang/String;Ljava/lang/NumberFormatException;)V

    .line 248
    :cond_4
    :goto_5
    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->access$3()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 249
    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "^"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    :cond_5
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 253
    const-string v0, "+"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    return-object v3

    :cond_6
    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 256
    nop

    .line 258
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_6
    if-lt v1, v4, :cond_7

    .line 261
    const-string p1, ","

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 262
    return-object v3

    :cond_7
    aget-object p1, v2, v1

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    const-string v0, "^"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    :cond_9
    return-object v3

    .line 226
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 228
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method private logError(Ljava/lang/String;Ljava/lang/NumberFormatException;)V
    .locals 3

    .line 271
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error during parsing of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    nop

    .line 273
    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    :cond_0
    return-void
.end method

.method private multiFind(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 279
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 280
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 281
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 294
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 295
    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 296
    return-object p1

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 283
    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 285
    aget-object v6, v5, v1

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 286
    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 287
    if-eqz v5, :cond_2

    .line 288
    invoke-virtual {v0, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 283
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 301
    const-string v0, "Hostname"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 311
    const-string v0, "Port"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    nop

    .line 315
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    move v1, v0

    return v1

    :catch_0
    move-exception v0

    .line 319
    const-string v2, "Port"

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->logError(Ljava/lang/String;Ljava/lang/NumberFormatException;)V

    .line 322
    :cond_0
    return v1
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 306
    const-string v0, "User"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 327
    const-string v0, "compression.s2c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "compression.c2s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 328
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    if-eqz p1, :cond_3

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 331
    :cond_2
    const-string p1, "zlib@openssh.com,zlib,none"

    return-object p1

    .line 330
    :cond_3
    :goto_1
    const-string p1, "none,zlib@openssh.com,zlib"

    return-object p1
.end method

.method public getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->multiFind(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
