.class Lcom/jcraft/jsch/OpenSshCertificateBuffer;
.super Lcom/jcraft/jsch/Buffer;
.source "OpenSshCertificateBuffer.java"


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->s:I

    .line 34
    array-length p1, p1

    iput p1, p0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->index:I

    .line 35
    return-void
.end method

.method private getKeyValueData()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    .line 117
    new-instance v1, Lcom/jcraft/jsch/OpenSshCertificateBuffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;-><init>([B)V

    .line 118
    nop

    .line 118
    :goto_0
    invoke-virtual {v1}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLength()I

    move-result v2

    if-gtz v2, :cond_0

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {v1}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_1
    return-object v0
.end method


# virtual methods
.method getBytes()[B
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getInt()I

    move-result v0

    .line 45
    if-gez v0, :cond_0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length in certificate data: negative length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLength()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length in certificate data: requested "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, " bytes but only "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLength()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " available"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1
    new-array v0, v0, [B

    .line 54
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getByte([B)V

    .line 55
    return-object v0
.end method

.method getCriticalOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getKeyValueData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getKeyValueData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getStrings()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    nop

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLength()I

    move-result v1

    if-gtz v1, :cond_0

    .line 74
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
