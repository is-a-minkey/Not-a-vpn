.class public Lcom/jcraft/jsch/asn1/ASN1;
.super Ljava/lang/Object;
.source "ASN1.java"


# instance fields
.field buf:[B

.field length:I

.field start:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/asn1/ASN1Exception;
        }
    .end annotation

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([BII)V

    .line 41
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/asn1/ASN1Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    .line 45
    iput p2, p0, Lcom/jcraft/jsch/asn1/ASN1;->start:I

    .line 46
    iput p3, p0, Lcom/jcraft/jsch/asn1/ASN1;->length:I

    .line 47
    add-int/2addr p2, p3

    array-length p1, p1

    if-le p2, p1, :cond_0

    .line 48
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 49
    :cond_0
    return-void
.end method

.method private getLength([I)I
    .locals 6

    .line 94
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 95
    iget-object v2, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 96
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 97
    and-int/lit8 v1, v1, 0x7f

    .line 98
    nop

    .line 99
    move v2, v1

    move v1, v0

    .line 99
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-gtz v2, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    move v2, v4

    move v3, v5

    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    aput v3, p1, v0

    .line 104
    return v1
.end method

.method public static parseASN1IntegerAsInt([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 152
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "BigInteger out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getContent()[B
    .locals 5

    .line 108
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 109
    iget v2, p0, Lcom/jcraft/jsch/asn1/ASN1;->start:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 110
    invoke-direct {p0, v1}, Lcom/jcraft/jsch/asn1/ASN1;->getLength([I)I

    move-result v0

    .line 111
    aget v1, v1, v2

    .line 112
    new-array v0, v0, [B

    .line 113
    iget-object v3, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    array-length v4, v0

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-object v0
.end method

.method public getContents()[Lcom/jcraft/jsch/asn1/ASN1;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/asn1/ASN1Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    iget v1, p0, Lcom/jcraft/jsch/asn1/ASN1;->start:I

    aget-byte v0, v0, v1

    .line 119
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 120
    iget v3, p0, Lcom/jcraft/jsch/asn1/ASN1;->start:I

    add-int/2addr v3, v1

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 121
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/asn1/ASN1;->getLength([I)I

    move-result v3

    .line 122
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    .line 123
    new-array v0, v4, [Lcom/jcraft/jsch/asn1/ASN1;

    return-object v0

    .line 125
    :cond_0
    aget v0, v2, v4

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 127
    nop

    .line 127
    :goto_0
    if-gtz v3, :cond_1

    .line 139
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jcraft/jsch/asn1/ASN1;

    .line 140
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    return-object v0

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 129
    add-int/lit8 v3, v3, -0x1

    .line 130
    nop

    .line 131
    aput v0, v2, v4

    .line 132
    invoke-direct {p0, v2}, Lcom/jcraft/jsch/asn1/ASN1;->getLength([I)I

    move-result v6

    .line 133
    aget v7, v2, v4

    .line 134
    sub-int v8, v7, v0

    sub-int/2addr v3, v8

    .line 135
    new-instance v9, Lcom/jcraft/jsch/asn1/ASN1;

    iget-object v10, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    sub-int/2addr v0, v1

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    invoke-direct {v9, v10, v0, v8}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([BII)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int v0, v7, v6

    .line 137
    sub-int/2addr v3, v6

    goto :goto_0
.end method

.method public getRaw()[B
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    iget v1, p0, Lcom/jcraft/jsch/asn1/ASN1;->start:I

    iget v2, p0, Lcom/jcraft/jsch/asn1/ASN1;->start:I

    iget v3, p0, Lcom/jcraft/jsch/asn1/ASN1;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/jcraft/jsch/asn1/ASN1;->buf:[B

    iget v1, p0, Lcom/jcraft/jsch/asn1/ASN1;->start:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isBITSTRING()Z
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method public isCONTEXTCONSTRUCTED(I)Z
    .locals 3

    .line 87
    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_2

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    or-int/lit16 p1, p1, 0xa0

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    move v2, v1

    return v2

    .line 88
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public isCONTEXTPRIMITIVE(I)Z
    .locals 3

    .line 80
    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_2

    and-int/lit8 v0, p1, 0x60

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    or-int/lit16 p1, p1, 0x80

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    move v2, v1

    return v2

    .line 81
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public isINTEGER()Z
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method public isNULL()Z
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method public isOBJECT()Z
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method public isOCTETSTRING()Z
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method public isSEQUENCE()Z
    .locals 4

    .line 56
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method
