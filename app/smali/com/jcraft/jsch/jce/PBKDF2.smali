.class public Lcom/jcraft/jsch/jce/PBKDF2;
.super Ljava/lang/Object;
.source "PBKDF2.java"

# interfaces
.implements Lcom/jcraft/jsch/KDF;


# static fields
.field private static final hmacWithSha1:[B

.field private static final hmacWithSha224:[B

.field private static final hmacWithSha256:[B

.field private static final hmacWithSha384:[B

.field private static final hmacWithSha512:[B

.field private static final hmacWithSha512224:[B

.field private static final hmacWithSha512256:[B


# instance fields
.field private iterations:I

.field private jceName:Ljava/lang/String;

.field private salt:[B

.field private skf:Ljavax/crypto/SecretKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 41
    nop

    .line 40
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha1:[B

    .line 43
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    .line 44
    nop

    .line 43
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha224:[B

    .line 46
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    .line 47
    nop

    .line 46
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha256:[B

    .line 49
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    .line 50
    nop

    .line 49
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha384:[B

    .line 52
    new-array v1, v0, [B

    fill-array-data v1, :array_4

    .line 53
    nop

    .line 52
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha512:[B

    .line 55
    new-array v1, v0, [B

    fill-array-data v1, :array_5

    .line 56
    nop

    .line 55
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha512224:[B

    .line 58
    new-array v0, v0, [B

    fill-array-data v0, :array_6

    .line 59
    nop

    .line 58
    sput-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha512256:[B

    .line 59
    return-void

    nop

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xat
    .end array-data

    :array_4
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xbt
    .end array-data

    :array_5
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xct
    .end array-data

    :array_6
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getJceName([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 148
    nop

    .line 149
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    sget-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha1:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha224:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v0, "PBKDF2WithHmacSHA224"

    .line 153
    goto :goto_1

    :cond_1
    sget-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha256:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-string v0, "PBKDF2WithHmacSHA256"

    .line 155
    goto :goto_1

    :cond_2
    sget-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha384:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    const-string v0, "PBKDF2WithHmacSHA384"

    .line 157
    goto :goto_1

    :cond_3
    sget-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha512:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    const-string v0, "PBKDF2WithHmacSHA512"

    .line 159
    goto :goto_1

    :cond_4
    sget-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha512224:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    const-string v0, "PBKDF2WithHmacSHA512/224"

    .line 161
    goto :goto_1

    :cond_5
    sget-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->hmacWithSha512256:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    const-string v0, "PBKDF2WithHmacSHA512/256"

    goto :goto_1

    .line 150
    :cond_6
    :goto_0
    const-string v0, "PBKDF2WithHmacSHA1"

    .line 151
    nop

    .line 165
    :cond_7
    :goto_1
    if-nez v0, :cond_8

    .line 166
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported pbkdf2 function oid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jcraft/jsch/jce/PBKDF2;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_8
    return-object v0
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 6

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "0"

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int v2, v1, v5

    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 177
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getKey([BI)[B
    .locals 4

    .line 134
    array-length v0, p1

    new-array v0, v0, [C

    .line 135
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 139
    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Lcom/jcraft/jsch/jce/PBKDF2;->salt:[B

    iget v3, p0, Lcom/jcraft/jsch/jce/PBKDF2;->iterations:I

    mul-int/lit8 p2, p2, 0x8

    invoke-direct {v1, v0, v2, v3, p2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 140
    iget-object p2, p0, Lcom/jcraft/jsch/jce/PBKDF2;->skf:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {p2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    .line 141
    move-object p1, p2

    return-object p1

    .line 142
    :catch_0
    move-exception p2

    .line 142
    nop

    .line 144
    return-object p1
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initWithASN1([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    nop

    .line 70
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/asn1/ASN1;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 71
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object p1

    .line 75
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    array-length v0, p1

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    goto/16 :goto_1

    .line 78
    :cond_1
    const/4 v0, 0x0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    move-result v3

    if-nez v3, :cond_2

    .line 79
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 81
    :cond_2
    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v4

    if-nez v4, :cond_3

    .line 82
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 85
    :cond_3
    array-length v4, p1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v4, v2, :cond_6

    .line 86
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v2

    if-nez v2, :cond_4

    .line 87
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 89
    :cond_4
    aget-object v2, p1, v5

    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v2

    if-nez v2, :cond_5

    .line 90
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 92
    :cond_5
    aget-object v2, p1, v5

    .line 93
    goto :goto_0

    :cond_6
    array-length v2, p1

    if-ne v2, v5, :cond_8

    .line 94
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 95
    aget-object v2, p1, v1

    .line 96
    goto :goto_0

    :cond_7
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v2

    if-nez v2, :cond_8

    .line 97
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    :cond_8
    move-object v2, v6

    .line 101
    :goto_0
    nop

    .line 102
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/PBKDF2;->salt:[B

    .line 103
    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/asn1/ASN1;->parseASN1IntegerAsInt([B)I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->iterations:I

    .line 105
    if-eqz v2, :cond_c

    .line 106
    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object p1

    .line 107
    array-length v2, p1

    if-eq v2, v1, :cond_9

    .line 108
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 110
    :cond_9
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v1

    if-nez v1, :cond_a

    .line 111
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 113
    :cond_a
    aget-object v1, p1, v3

    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isNULL()Z

    move-result v1

    if-nez v1, :cond_b

    .line 114
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 116
    :cond_b
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v6

    .line 119
    :cond_c
    invoke-static {v6}, Lcom/jcraft/jsch/jce/PBKDF2;->getJceName([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->jceName:Ljava/lang/String;

    .line 120
    iget-object p1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->jceName:Ljava/lang/String;

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->skf:Ljavax/crypto/SecretKeyFactory;

    .line 121
    nop

    .line 130
    return-void

    .line 76
    :cond_d
    :goto_1
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_e

    .line 123
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1

    .line 124
    :cond_e
    instance-of v0, p1, Ljava/security/NoSuchAlgorithmException;

    if-eqz v0, :cond_f

    .line 125
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported pbkdf2 algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/jce/PBKDF2;->jceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 126
    :cond_f
    instance-of v0, p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    if-nez v0, :cond_11

    instance-of v0, p1, Ljava/lang/ArithmeticException;

    if-eqz v0, :cond_10

    goto :goto_2

    .line 128
    :cond_10
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "pbkdf2 unavailable"

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 127
    :cond_11
    :goto_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid ASN1"

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
