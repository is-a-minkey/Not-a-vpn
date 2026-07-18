.class Lcom/jcraft/jsch/KeyPairPKCS8;
.super Lcom/jcraft/jsch/KeyPair;
.source "KeyPairPKCS8.java"


# static fields
.field private static final aes128cbc:[B

.field private static final aes192cbc:[B

.field private static final aes256cbc:[B

.field private static final begin:[B

.field private static final des3cbc:[B

.field private static final descbc:[B

.field private static final dsaEncryption:[B

.field private static final ecPublicKey:[B

.field private static final ed25519:[B

.field private static final ed448:[B

.field private static final end:[B

.field private static final pbeWithMD2AndDESCBC:[B

.field private static final pbeWithMD2AndRC2CBC:[B

.field private static final pbeWithMD5AndDESCBC:[B

.field private static final pbeWithMD5AndRC2CBC:[B

.field private static final pbeWithSHA1AndDESCBC:[B

.field private static final pbeWithSHA1AndRC2CBC:[B

.field private static final pbes2:[B

.field private static final pbkdf2:[B

.field private static final rc2cbc:[B

.field private static final rc5cbc:[B

.field private static final rsaEncryption:[B

.field private static final scrypt:[B

.field private static final secp256r1:[B

.field private static final secp384r1:[B

.field private static final secp521r1:[B


# instance fields
.field private kpair:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 36
    const/16 v0, 0x9

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 37
    nop

    .line 36
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->rsaEncryption:[B

    .line 40
    const/4 v1, 0x7

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    .line 39
    sput-object v2, Lcom/jcraft/jsch/KeyPairPKCS8;->dsaEncryption:[B

    .line 43
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    .line 42
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->ecPublicKey:[B

    .line 45
    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Lcom/jcraft/jsch/KeyPairPKCS8;->ed25519:[B

    .line 47
    new-array v1, v1, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->ed448:[B

    .line 49
    const/16 v1, 0x8

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    .line 50
    nop

    .line 49
    sput-object v2, Lcom/jcraft/jsch/KeyPairPKCS8;->secp256r1:[B

    .line 53
    const/4 v2, 0x5

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/16 v5, 0x2b

    aput-byte v5, v3, v4

    const/4 v6, 0x1

    const/16 v7, -0x7f

    aput-byte v7, v3, v6

    const/4 v8, 0x2

    const/4 v9, 0x4

    aput-byte v9, v3, v8

    const/16 v10, 0x22

    aput-byte v10, v3, v9

    .line 52
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->secp384r1:[B

    .line 56
    new-array v3, v2, [B

    aput-byte v5, v3, v4

    aput-byte v7, v3, v6

    aput-byte v9, v3, v8

    const/16 v4, 0x23

    aput-byte v4, v3, v9

    .line 55
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->secp521r1:[B

    .line 58
    new-array v3, v0, [B

    fill-array-data v3, :array_6

    .line 59
    nop

    .line 58
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->pbes2:[B

    .line 61
    new-array v3, v0, [B

    fill-array-data v3, :array_7

    .line 62
    nop

    .line 61
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->pbkdf2:[B

    .line 64
    new-array v3, v0, [B

    fill-array-data v3, :array_8

    .line 65
    nop

    .line 64
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->scrypt:[B

    .line 67
    new-array v3, v0, [B

    fill-array-data v3, :array_9

    .line 68
    nop

    .line 67
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->aes128cbc:[B

    .line 70
    new-array v3, v0, [B

    fill-array-data v3, :array_a

    .line 71
    nop

    .line 70
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->aes192cbc:[B

    .line 73
    new-array v3, v0, [B

    fill-array-data v3, :array_b

    .line 74
    nop

    .line 73
    sput-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->aes256cbc:[B

    .line 77
    new-array v2, v2, [B

    fill-array-data v2, :array_c

    .line 76
    sput-object v2, Lcom/jcraft/jsch/KeyPairPKCS8;->descbc:[B

    .line 79
    new-array v2, v1, [B

    fill-array-data v2, :array_d

    .line 80
    nop

    .line 79
    sput-object v2, Lcom/jcraft/jsch/KeyPairPKCS8;->des3cbc:[B

    .line 82
    new-array v2, v1, [B

    fill-array-data v2, :array_e

    .line 83
    nop

    .line 82
    sput-object v2, Lcom/jcraft/jsch/KeyPairPKCS8;->rc2cbc:[B

    .line 85
    new-array v1, v1, [B

    fill-array-data v1, :array_f

    .line 86
    nop

    .line 85
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->rc5cbc:[B

    .line 88
    new-array v1, v0, [B

    fill-array-data v1, :array_10

    .line 89
    nop

    .line 88
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD2AndDESCBC:[B

    .line 91
    new-array v1, v0, [B

    fill-array-data v1, :array_11

    .line 92
    nop

    .line 91
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD2AndRC2CBC:[B

    .line 94
    new-array v1, v0, [B

    fill-array-data v1, :array_12

    .line 95
    nop

    .line 94
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD5AndDESCBC:[B

    .line 97
    new-array v1, v0, [B

    fill-array-data v1, :array_13

    .line 98
    nop

    .line 97
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD5AndRC2CBC:[B

    .line 100
    new-array v1, v0, [B

    fill-array-data v1, :array_14

    .line 101
    nop

    .line 100
    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithSHA1AndDESCBC:[B

    .line 103
    new-array v0, v0, [B

    fill-array-data v0, :array_15

    .line 104
    nop

    .line 103
    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithSHA1AndRC2CBC:[B

    .line 115
    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->begin:[B

    .line 116
    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->end:[B

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
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x38t
        0x4t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x2bt
        0x65t
        0x70t
    .end array-data

    :array_4
    .array-data 1
        0x2bt
        0x65t
        0x71t
    .end array-data

    :array_5
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data

    :array_6
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xdt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xct
    .end array-data

    nop

    :array_8
    .array-data 1
        0x2bt
        0x6t
        0x1t
        0x4t
        0x1t
        -0x26t
        0x47t
        0x4t
        0xbt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x16t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2at
    .end array-data

    nop

    :array_c
    .array-data 1
        0x2bt
        0xet
        0x3t
        0x2t
        0x7t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x3t
        0x7t
    .end array-data

    :array_e
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x3t
        0x2t
    .end array-data

    :array_f
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x3t
        0x9t
    .end array-data

    :array_10
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x4t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x3t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x6t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xat
    .end array-data

    nop

    :array_15
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xbt
    .end array-data
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 106
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    .line 110
    return-void
.end method

.method static getCipher([BLcom/jcraft/jsch/asn1/ASN1;[[B)Lcom/jcraft/jsch/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 706
    nop

    .line 707
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->aes128cbc:[B

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 708
    const-string v1, "aes128-cbc"

    .line 709
    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->aes192cbc:[B

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    const-string v1, "aes192-cbc"

    .line 711
    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->aes256cbc:[B

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    const-string v1, "aes256-cbc"

    .line 713
    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->descbc:[B

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "unsupported cipher function: des-cbc"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 715
    :cond_3
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->des3cbc:[B

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 716
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "unsupported cipher function: 3des-cbc"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 717
    :cond_4
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->rc2cbc:[B

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 718
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "unsupported cipher function: rc2-cbc"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 719
    :cond_5
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->rc5cbc:[B

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 720
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "unsupported cipher function: rc5-cbc"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 723
    :cond_6
    :goto_0
    if-nez v1, :cond_7

    .line 724
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unsupported cipher function oid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 727
    :cond_7
    invoke-virtual {p1}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    move-result p0

    if-nez p0, :cond_8

    .line 728
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p0}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p0

    .line 730
    :cond_8
    invoke-virtual {p1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, p2, p1

    .line 733
    :try_start_0
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class p2, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 734
    new-array p2, p1, [Ljava/lang/Class;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/Cipher;

    return-object p0

    .line 735
    :catch_0
    move-exception p0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    nop

    .line 736
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is not supported"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static getKDF(Ljava/lang/String;)Lcom/jcraft/jsch/KDF;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 698
    :try_start_0
    invoke-static {p0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/KDF;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 699
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KDF;

    return-object v0

    .line 700
    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    nop

    .line 701
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " is not supported"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public decrypt([B)Z
    .locals 13

    .line 519
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairPKCS8;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 520
    goto/16 :goto_2

    .line 522
    :cond_0
    if-nez p1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairPKCS8;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_13

    return v1

    .line 544
    :cond_1
    nop

    .line 545
    nop

    .line 546
    nop

    .line 550
    const/4 v0, 0x3

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/jcraft/jsch/asn1/ASN1;

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->data:[B

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 551
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v5

    if-nez v5, :cond_2

    .line 552
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 555
    :cond_2
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v4

    .line 556
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 557
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 559
    :cond_3
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v5

    if-nez v5, :cond_4

    .line 560
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 562
    :cond_4
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    move-result v5

    if-nez v5, :cond_5

    .line 563
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 566
    :cond_5
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v5
    :try_end_0
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 567
    :try_start_1
    aget-object v4, v4, v1

    .line 569
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v4

    .line 570
    array-length v7, v4

    if-eq v7, v6, :cond_6

    .line 571
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 573
    :cond_6
    aget-object v7, v4, v1

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v7

    if-nez v7, :cond_7

    .line 574
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 576
    :cond_7
    aget-object v7, v4, v2

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v7

    if-nez v7, :cond_8

    .line 577
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 580
    :cond_8
    aget-object v7, v4, v1

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v7

    .line 581
    aget-object v4, v4, v2

    .line 588
    sget-object v8, Lcom/jcraft/jsch/KeyPairPKCS8;->pbes2:[B

    invoke-static {v7, v8}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 589
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v4

    .line 590
    array-length v7, v4

    if-eq v7, v6, :cond_9

    .line 591
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 594
    :cond_9
    aget-object v7, v4, v1

    .line 595
    aget-object v4, v4, v2

    .line 597
    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v8

    if-nez v8, :cond_a

    .line 598
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 600
    :cond_a
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v8

    if-nez v8, :cond_b

    .line 601
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 604
    :cond_b
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v4

    .line 606
    array-length v8, v4

    if-eq v8, v6, :cond_c

    .line 607
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 609
    :cond_c
    aget-object v8, v4, v1

    invoke-virtual {v8}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v8

    if-nez v8, :cond_d

    .line 610
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 613
    :cond_d
    aget-object v8, v4, v1

    invoke-virtual {v8}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v8

    .line 614
    aget-object v4, v4, v2

    .line 616
    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v7

    .line 617
    array-length v9, v7

    if-eq v9, v6, :cond_e

    .line 618
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 620
    :cond_e
    aget-object v6, v7, v1

    invoke-virtual {v6}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v6

    if-nez v6, :cond_f

    .line 621
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 623
    :cond_f
    aget-object v6, v7, v2

    invoke-virtual {v6}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v6

    if-nez v6, :cond_10

    .line 624
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {p1}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw p1

    .line 627
    :cond_10
    aget-object v6, v7, v1

    invoke-virtual {v6}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v6

    .line 628
    sget-object v9, Lcom/jcraft/jsch/KeyPairPKCS8;->pbkdf2:[B

    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 629
    const-string v6, "pbkdf2"

    .line 630
    invoke-static {v6}, Lcom/jcraft/jsch/KeyPairPKCS8;->getKDF(Ljava/lang/String;)Lcom/jcraft/jsch/KDF;

    move-result-object v9

    .line 631
    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getRaw()[B

    move-result-object v7

    invoke-interface {v9, v7}, Lcom/jcraft/jsch/KDF;->initWithASN1([B)V

    .line 632
    goto :goto_0

    :cond_11
    sget-object v9, Lcom/jcraft/jsch/KeyPairPKCS8;->scrypt:[B

    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 633
    const-string v6, "scrypt"

    .line 634
    invoke-static {v6}, Lcom/jcraft/jsch/KeyPairPKCS8;->getKDF(Ljava/lang/String;)Lcom/jcraft/jsch/KDF;

    move-result-object v9

    .line 635
    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getRaw()[B

    move-result-object v7

    invoke-interface {v9, v7}, Lcom/jcraft/jsch/KDF;->initWithASN1([B)V

    .line 636
    nop

    .line 659
    :goto_0
    new-array v7, v2, [[B

    .line 660
    invoke-static {v8, v4, v7}, Lcom/jcraft/jsch/KeyPairPKCS8;->getCipher([BLcom/jcraft/jsch/asn1/ASN1;[[B)Lcom/jcraft/jsch/Cipher;

    move-result-object v4

    .line 661
    aget-object v7, v7, v1

    .line 663
    invoke-interface {v4}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v8

    invoke-interface {v9, p1, v8}, Lcom/jcraft/jsch/KDF;->getKey([BI)[B

    move-result-object p1
    :try_end_1
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 664
    if-nez p1, :cond_12

    .line 665
    :try_start_2
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "failed to generate key from KDF "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 683
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 677
    :catch_1
    move-exception v2

    move-object v6, v3

    :goto_1
    move-object v3, p1

    move-object p1, v2

    goto/16 :goto_5

    .line 667
    :cond_12
    invoke-interface {v4, v2, p1, v7}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 668
    array-length v6, v5

    new-array v6, v6, [B
    :try_end_2
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 669
    :try_start_3
    array-length v10, v5

    const/4 v12, 0x0

    move-object v7, v4

    move-object v8, v5

    move v9, v12

    move-object v11, v6

    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 670
    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/KeyPairPKCS8;->parse([B)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 671
    iput-boolean v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->encrypted:Z

    .line 672
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->data:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V
    :try_end_3
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 690
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 691
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 692
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 673
    :cond_13
    :goto_2
    move v1, v2

    return v1

    .line 675
    :cond_14
    :try_start_4
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "failed to parse decrypted key"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 689
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 683
    :catch_2
    move-exception v2

    move-object v3, v6

    goto/16 :goto_4

    .line 677
    :catch_3
    move-exception v2

    goto :goto_1

    .line 637
    :cond_15
    :try_start_5
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unsupported kdf oid: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 641
    :cond_16
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD2AndDESCBC:[B

    invoke-static {v7, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 642
    const-string p1, "pbeWithMD2AndDES-CBC unsupported"

    .line 643
    goto :goto_3

    :cond_17
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD2AndRC2CBC:[B

    invoke-static {v7, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 644
    const-string p1, "pbeWithMD2AndRC2-CBC unsupported"

    .line 645
    goto :goto_3

    :cond_18
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD5AndDESCBC:[B

    invoke-static {v7, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 646
    const-string p1, "pbeWithMD5AndDES-CBC unsupported"

    .line 647
    goto :goto_3

    :cond_19
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD5AndRC2CBC:[B

    invoke-static {v7, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 648
    const-string p1, "pbeWithMD5AndRC2-CBC unsupported"

    .line 649
    goto :goto_3

    :cond_1a
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithSHA1AndDESCBC:[B

    invoke-static {v7, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 650
    const-string p1, "pbeWithSHA1AndDES-CBC unsupported"

    .line 651
    goto :goto_3

    :cond_1b
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithSHA1AndRC2CBC:[B

    invoke-static {v7, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 652
    const-string p1, "pbeWithSHA1AndRC2-CBC unsupported"

    .line 653
    goto :goto_3

    .line 654
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported encryption oid: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 656
    :goto_3
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 689
    :catchall_1
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    goto/16 :goto_7

    .line 683
    :catch_4
    move-exception p1

    move-object v2, p1

    move-object p1, v3

    goto :goto_4

    .line 677
    :catch_5
    move-exception p1

    move-object v6, v3

    goto :goto_5

    .line 689
    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object v5, v3

    move-object p1, v5

    goto :goto_7

    .line 683
    :catch_6
    move-exception p1

    move-object v2, p1

    move-object v5, v3

    move-object p1, v5

    .line 683
    :goto_4
    nop

    .line 684
    :try_start_6
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v4}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 685
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v4}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PKCS8: failed to decrypt key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 686
    nop

    .line 685
    invoke-interface {v4, v0, v6, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 690
    :cond_1d
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 691
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 692
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 688
    return v1

    .line 689
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 677
    :catch_7
    move-exception p1

    move-object v5, v3

    move-object v6, v5

    .line 677
    :goto_5
    nop

    .line 678
    :try_start_7
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 679
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v4, "PKCS8: failed to decrypt key: ASN1 parsing error"

    .line 680
    nop

    .line 679
    invoke-interface {v2, v0, v4, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 690
    :cond_1e
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 691
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 692
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 682
    return v1

    .line 689
    :catchall_4
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    :goto_6
    move-object v3, v6

    .line 689
    :goto_7
    nop

    .line 690
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 691
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 692
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 693
    throw v0
.end method

.method public forSSHAgent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->forSSHAgent()[B

    move-result-object v0

    return-object v0
.end method

.method generate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method getBegin()[B
    .locals 1

    .line 120
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->begin:[B

    return-object v0
.end method

.method getEnd()[B
    .locals 1

    .line 125
    sget-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->end:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getKeySize()I

    move-result v0

    return v0
.end method

.method public getKeyType()I
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getKeyType()I

    move-result v1

    return v1

    .line 483
    :cond_0
    return v1
.end method

.method getKeyTypeName()[B
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeName()[B

    move-result-object v0

    return-object v0

    .line 474
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method getOpenSSHv1PrivateKeyBlob()[B
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getOpenSSHv1PrivateKeyBlob()[B

    move-result-object v1

    return-object v1

    .line 138
    :cond_0
    return-object v1
.end method

.method getPrivateKey()[B
    .locals 1

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->getSignature([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getVerifier()Lcom/jcraft/jsch/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;

    move-result-object p1

    return-object p1
.end method

.method parse([B)Z
    .locals 18

    move-object/from16 v1, p0

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 159
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lcom/jcraft/jsch/asn1/ASN1;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 160
    invoke-virtual {v6}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v7

    if-nez v7, :cond_0

    .line 161
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 164
    :cond_0
    invoke-virtual {v6}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v6

    .line 165
    array-length v7, v6

    if-lt v7, v4, :cond_3b

    array-length v7, v6

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    goto/16 :goto_a

    .line 168
    :cond_1
    aget-object v7, v6, v3

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v7

    if-nez v7, :cond_2

    .line 169
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 171
    :cond_2
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v7

    if-nez v7, :cond_3

    .line 172
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 174
    :cond_3
    const/4 v7, 0x2

    aget-object v9, v6, v7

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    move-result v9

    if-nez v9, :cond_4

    .line 175
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 178
    :cond_4
    array-length v9, v6

    if-le v9, v4, :cond_5

    aget-object v9, v6, v4

    invoke-virtual {v9, v3}, Lcom/jcraft/jsch/asn1/ASN1;->isCONTEXTCONSTRUCTED(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 179
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 182
    :cond_5
    aget-object v9, v6, v3

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v9

    invoke-static {v9}, Lcom/jcraft/jsch/asn1/ASN1;->parseASN1IntegerAsInt([B)I

    move-result v9

    .line 183
    if-eqz v9, :cond_6

    .line 184
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 187
    :cond_6
    aget-object v9, v6, v2

    .line 188
    aget-object v6, v6, v7

    .line 190
    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v9

    .line 191
    array-length v10, v9

    if-nez v10, :cond_7

    .line 192
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 194
    :cond_7
    aget-object v10, v9, v3

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v10

    if-nez v10, :cond_8

    .line 195
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 197
    :cond_8
    aget-object v10, v9, v3

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v10

    .line 199
    invoke-virtual {v6}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v6
    :try_end_0
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 201
    nop

    .line 202
    :try_start_1
    sget-object v11, Lcom/jcraft/jsch/KeyPairPKCS8;->rsaEncryption:[B

    invoke-static {v10, v11}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 203
    array-length v8, v9

    if-eq v8, v7, :cond_9

    .line 204
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 206
    :cond_9
    aget-object v7, v9, v2

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->isNULL()Z

    move-result v7

    if-nez v7, :cond_a

    .line 207
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 210
    :cond_a
    new-instance v7, Lcom/jcraft/jsch/KeyPairRSA;

    iget-object v8, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v7, v8}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 211
    invoke-virtual {v7, v1}, Lcom/jcraft/jsch/KeyPair;->copy(Lcom/jcraft/jsch/KeyPair;)V

    .line 212
    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 213
    iput-object v7, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;
    :try_end_1
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 451
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 452
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 453
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 454
    nop

    .line 214
    goto/16 :goto_9

    .line 216
    :cond_b
    :try_start_2
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v7, "failed to parse RSA"

    invoke-direct {v2, v7}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_c
    sget-object v11, Lcom/jcraft/jsch/KeyPairPKCS8;->dsaEncryption:[B

    invoke-static {v10, v11}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 219
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    array-length v10, v9

    if-le v10, v2, :cond_11

    aget-object v10, v9, v2

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 222
    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v9

    .line 223
    array-length v10, v9

    if-eq v10, v4, :cond_d

    .line 224
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 226
    :cond_d
    aget-object v10, v9, v3

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v10

    if-nez v10, :cond_e

    .line 227
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 229
    :cond_e
    aget-object v10, v9, v2

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v10

    if-nez v10, :cond_f

    .line 230
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 232
    :cond_f
    aget-object v10, v9, v7

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v10

    if-nez v10, :cond_10

    .line 233
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 236
    :cond_10
    aget-object v10, v9, v3

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    aget-object v10, v9, v2

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_11
    new-instance v9, Lcom/jcraft/jsch/asn1/ASN1;

    invoke-direct {v9, v6}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 242
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1a

    .line 247
    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v10

    if-nez v10, :cond_12

    .line 248
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 251
    :cond_12
    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v9

    .line 252
    array-length v10, v9

    if-eq v10, v7, :cond_13

    .line 253
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 255
    :cond_13
    aget-object v10, v9, v3

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v10

    if-nez v10, :cond_14

    .line 256
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 258
    :cond_14
    aget-object v10, v9, v2

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v10

    if-nez v10, :cond_15

    .line 259
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 262
    :cond_15
    aget-object v10, v9, v2

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v10
    :try_end_2
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 264
    :try_start_3
    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v9

    .line 265
    array-length v11, v9

    if-eq v11, v4, :cond_16

    .line 266
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 268
    :cond_16
    aget-object v11, v9, v3

    invoke-virtual {v11}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v11

    if-nez v11, :cond_17

    .line 269
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 271
    :cond_17
    aget-object v11, v9, v2

    invoke-virtual {v11}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v11

    if-nez v11, :cond_18

    .line 272
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 274
    :cond_18
    aget-object v11, v9, v7

    invoke-virtual {v11}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v11

    if-nez v11, :cond_19

    .line 275
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 278
    :cond_19
    aget-object v11, v9, v3

    invoke-virtual {v11}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    aget-object v11, v9, v2

    invoke-virtual {v11}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    move-object v9, v10

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v10

    goto/16 :goto_2

    .line 444
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    move-object v7, v8

    move-object v5, v10

    goto/16 :goto_d

    .line 438
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    move-object v7, v8

    move-object v5, v10

    goto/16 :goto_f

    .line 285
    :cond_1a
    :try_start_4
    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v10

    if-nez v10, :cond_1b

    .line 286
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 288
    :cond_1b
    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v9
    :try_end_4
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 291
    :goto_0
    :try_start_5
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, [B

    .line 292
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, [B

    .line 293
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [B

    .line 295
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 296
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v12}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7, v8, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    .line 295
    nop

    .line 298
    new-instance v7, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v11, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    move-object v10, v7

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V
    :try_end_5
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 299
    :try_start_6
    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair;->getPrivateKey()[B

    move-result-object v8
    :try_end_6
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 301
    :try_start_7
    new-instance v5, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v10, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v5, v10}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 302
    invoke-virtual {v5, v1}, Lcom/jcraft/jsch/KeyPair;->copy(Lcom/jcraft/jsch/KeyPair;)V

    .line 303
    invoke-virtual {v5, v8}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 304
    iput-object v5, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;
    :try_end_7
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 451
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 452
    invoke-static {v9}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 453
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 454
    if-eqz v7, :cond_1c

    .line 455
    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 305
    :cond_1c
    goto/16 :goto_9

    .line 307
    :cond_1d
    :try_start_8
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v5, "failed to parse DSA"

    invoke-direct {v2, v5}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 450
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v5, v7

    move-object/from16 v17, v8

    move-object v8, v9

    move-object/from16 v9, v17

    goto/16 :goto_11

    .line 444
    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 438
    :catch_3
    move-exception v0

    move-object v2, v0

    goto :goto_4

    .line 450
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    :goto_1
    move-object v9, v5

    goto/16 :goto_10

    .line 444
    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    goto :goto_3

    .line 438
    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    goto :goto_4

    .line 450
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    :goto_2
    move-object v9, v5

    goto/16 :goto_11

    .line 444
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    move-object v7, v8

    :goto_3
    move-object v5, v9

    goto/16 :goto_d

    .line 438
    :catch_7
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    move-object v7, v8

    :goto_4
    move-object v5, v9

    goto/16 :goto_f

    .line 309
    :cond_1e
    :try_start_9
    sget-object v11, Lcom/jcraft/jsch/KeyPairPKCS8;->ecPublicKey:[B

    invoke-static {v10, v11}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 310
    array-length v10, v9

    if-eq v10, v7, :cond_1f

    .line 311
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 313
    :cond_1f
    aget-object v10, v9, v2

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v10

    if-nez v10, :cond_20

    .line 314
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 317
    :cond_20
    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v9

    .line 319
    sget-object v10, Lcom/jcraft/jsch/KeyPairPKCS8;->secp256r1:[B

    invoke-static {v9, v10}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v10

    if-nez v10, :cond_21

    .line 320
    const-string v10, "nistp256"

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v10

    .line 321
    move-object v13, v10

    goto :goto_5

    :cond_21
    sget-object v10, Lcom/jcraft/jsch/KeyPairPKCS8;->secp384r1:[B

    invoke-static {v9, v10}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v10

    if-nez v10, :cond_22

    .line 322
    const-string v10, "nistp384"

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v10

    .line 323
    move-object v13, v10

    goto :goto_5

    :cond_22
    sget-object v10, Lcom/jcraft/jsch/KeyPairPKCS8;->secp521r1:[B

    invoke-static {v9, v10}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v10

    if-nez v10, :cond_33

    .line 324
    const-string v10, "nistp521"

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v10

    .line 325
    move-object v13, v10

    .line 329
    :goto_5
    new-instance v10, Lcom/jcraft/jsch/asn1/ASN1;

    invoke-direct {v10, v6}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 330
    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v11

    if-nez v11, :cond_23

    .line 331
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 340
    :cond_23
    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v10

    .line 341
    array-length v11, v10

    if-lt v11, v4, :cond_32

    array-length v11, v10

    if-le v11, v8, :cond_24

    goto/16 :goto_7

    .line 344
    :cond_24
    aget-object v8, v10, v3

    invoke-virtual {v8}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    move-result v8

    if-nez v8, :cond_25

    .line 345
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 347
    :cond_25
    aget-object v8, v10, v2

    invoke-virtual {v8}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    move-result v8

    if-nez v8, :cond_26

    .line 348
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 351
    :cond_26
    aget-object v8, v10, v3

    invoke-virtual {v8}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/asn1/ASN1;->parseASN1IntegerAsInt([B)I

    move-result v8

    .line 352
    if-eq v8, v2, :cond_27

    .line 353
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 355
    :cond_27
    aget-object v8, v10, v2

    invoke-virtual {v8}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v8
    :try_end_9
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 359
    :try_start_a
    array-length v11, v10

    if-ne v11, v4, :cond_28

    .line 360
    aget-object v7, v10, v7

    .line 361
    goto :goto_6

    .line 362
    :cond_28
    aget-object v11, v10, v4

    .line 365
    aget-object v12, v10, v7

    invoke-virtual {v12, v3}, Lcom/jcraft/jsch/asn1/ASN1;->isCONTEXTCONSTRUCTED(I)Z

    move-result v12

    if-nez v12, :cond_29

    .line 366
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 371
    :cond_29
    aget-object v7, v10, v7

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v7

    .line 372
    array-length v10, v7

    if-eq v10, v2, :cond_2a

    .line 373
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 375
    :cond_2a
    aget-object v10, v7, v3

    invoke-virtual {v10}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v10

    if-nez v10, :cond_2b

    .line 376
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 378
    :cond_2b
    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v7

    invoke-static {v7, v9}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 379
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    :cond_2c
    move-object v7, v11

    .line 384
    :goto_6
    invoke-virtual {v7, v2}, Lcom/jcraft/jsch/asn1/ASN1;->isCONTEXTCONSTRUCTED(I)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 385
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 387
    :cond_2d
    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v7

    .line 388
    array-length v9, v7

    if-eq v9, v2, :cond_2e

    .line 389
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 391
    :cond_2e
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/jcraft/jsch/asn1/ASN1;->isBITSTRING()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 392
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 395
    :cond_2f
    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v7

    .line 396
    invoke-static {v7}, Lcom/jcraft/jsch/KeyPairECDSA;->fromPoint([B)[[B

    move-result-object v7

    .line 397
    aget-object v14, v7, v3

    .line 398
    aget-object v15, v7, v2

    .line 400
    new-instance v7, Lcom/jcraft/jsch/KeyPairECDSA;

    iget-object v12, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    move-object v11, v7

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V
    :try_end_a
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 401
    :try_start_b
    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair;->getPrivateKey()[B

    move-result-object v9
    :try_end_b
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 403
    :try_start_c
    new-instance v5, Lcom/jcraft/jsch/KeyPairECDSA;

    iget-object v10, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v5, v10}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 404
    invoke-virtual {v5, v1}, Lcom/jcraft/jsch/KeyPair;->copy(Lcom/jcraft/jsch/KeyPair;)V

    .line 405
    invoke-virtual {v5, v9}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 406
    iput-object v5, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;
    :try_end_c
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 451
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 452
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 453
    invoke-static {v9}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 454
    if-eqz v7, :cond_30

    .line 455
    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 407
    :cond_30
    goto/16 :goto_9

    .line 409
    :cond_31
    :try_start_d
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v5, "failed to parse ECDSA"

    invoke-direct {v2, v5}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 450
    :catchall_4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10

    .line 444
    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v5, v8

    move-object v8, v9

    goto/16 :goto_d

    .line 438
    :catch_9
    move-exception v0

    move-object v2, v0

    move-object v5, v8

    move-object v8, v9

    goto/16 :goto_f

    .line 450
    :catchall_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1

    .line 444
    :catch_a
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v5

    move-object v5, v8

    move-object/from16 v8, v17

    goto/16 :goto_d

    .line 438
    :catch_b
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v5

    move-object v5, v8

    move-object/from16 v8, v17

    goto/16 :goto_f

    .line 450
    :catchall_6
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    .line 444
    :catch_c
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    move-object v5, v8

    move-object v8, v7

    goto/16 :goto_d

    .line 438
    :catch_d
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    move-object v5, v8

    move-object v8, v7

    goto/16 :goto_f

    .line 342
    :cond_32
    :goto_7
    :try_start_e
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 326
    :cond_33
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unsupported named curve oid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_34
    sget-object v7, Lcom/jcraft/jsch/KeyPairPKCS8;->ed25519:[B

    invoke-static {v10, v7}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v7

    if-nez v7, :cond_36

    .line 412
    sget-object v7, Lcom/jcraft/jsch/KeyPairPKCS8;->ed448:[B

    invoke-static {v10, v7}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_35

    goto :goto_8

    .line 435
    :cond_35
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unsupported privateKeyAlgorithm oid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 435
    invoke-direct {v2, v7}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_36
    :goto_8
    array-length v7, v9

    if-eq v7, v2, :cond_37

    .line 414
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 416
    :cond_37
    new-instance v7, Lcom/jcraft/jsch/asn1/ASN1;

    invoke-direct {v7, v6}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 417
    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    move-result v8

    if-nez v8, :cond_38

    .line 418
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2

    .line 421
    :cond_38
    invoke-virtual {v7}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v7
    :try_end_e
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 422
    :try_start_f
    sget-object v8, Lcom/jcraft/jsch/KeyPairPKCS8;->ed25519:[B

    invoke-static {v10, v8}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 423
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v8, "Ed25519 keys are not supported in this build"

    invoke-direct {v2, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_39
    new-instance v8, Lcom/jcraft/jsch/KeyPairEd448;

    iget-object v9, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v8, v9}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 427
    invoke-virtual {v8, v1}, Lcom/jcraft/jsch/KeyPair;->copy(Lcom/jcraft/jsch/KeyPair;)V

    .line 428
    invoke-virtual {v8, v7}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 429
    iput-object v8, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;
    :try_end_f
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 451
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 452
    invoke-static {v7}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 453
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 454
    nop

    .line 430
    :goto_9
    move v3, v2

    return v3

    .line 432
    :cond_3a
    :try_start_10
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v8, "failed to parse EdDSA"

    invoke-direct {v2, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 450
    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    goto/16 :goto_2

    .line 444
    :catch_e
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    move-object v5, v7

    goto :goto_c

    .line 438
    :catch_f
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    move-object v5, v7

    goto/16 :goto_e

    .line 450
    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object v8, v5

    goto :goto_b

    .line 444
    :catch_10
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    goto :goto_c

    .line 438
    :catch_11
    move-exception v0

    move-object v2, v0

    move-object v8, v5

    goto :goto_e

    .line 166
    :cond_3b
    :goto_a
    :try_start_11
    new-instance v2, Lcom/jcraft/jsch/asn1/ASN1Exception;

    invoke-direct {v2}, Lcom/jcraft/jsch/asn1/ASN1Exception;-><init>()V

    throw v2
    :try_end_11
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 450
    :catchall_9
    move-exception v0

    move-object v1, v0

    move-object v6, v5

    move-object v8, v6

    :goto_b
    move-object v9, v8

    goto/16 :goto_11

    .line 444
    :catch_12
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    move-object v8, v6

    :goto_c
    move-object v7, v8

    .line 444
    :goto_d
    nop

    .line 445
    :try_start_12
    iget-object v9, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v9}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 446
    iget-object v1, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PKCS8: failed to parse key: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 447
    nop

    .line 446
    invoke-interface {v1, v4, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 451
    :cond_3c
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 452
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 453
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 454
    if-eqz v7, :cond_3d

    .line 455
    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 449
    :cond_3d
    return v3

    .line 438
    :catch_13
    move-exception v0

    move-object v2, v0

    move-object v6, v5

    move-object v8, v6

    :goto_e
    move-object v7, v8

    .line 438
    :goto_f
    nop

    .line 439
    :try_start_13
    iget-object v9, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v9}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 440
    iget-object v1, v1, Lcom/jcraft/jsch/KeyPairPKCS8;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v9, "PKCS8: failed to parse key: ASN1 parsing error"

    .line 441
    nop

    .line 440
    invoke-interface {v1, v4, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 451
    :cond_3e
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 452
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 453
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 454
    if-eqz v7, :cond_3f

    .line 455
    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 443
    :cond_3f
    return v3

    .line 450
    :catchall_a
    move-exception v0

    move-object v1, v0

    move-object v9, v8

    move-object v8, v5

    :goto_10
    move-object v5, v7

    .line 450
    :goto_11
    nop

    .line 451
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 452
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 453
    invoke-static {v9}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 454
    if-eqz v5, :cond_40

    .line 455
    invoke-virtual {v5}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 457
    :cond_40
    throw v1
.end method
