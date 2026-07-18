.class public abstract Lcom/jcraft/jsch/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"


# static fields
.field private static final AUTH_MAGIC:[B

.field public static final DEFERRED:I = -0x1

.field public static final DSA:I = 0x1

.field public static final ECDSA:I = 0x3

.field public static final ED25519:I = 0x5

.field public static final ED448:I = 0x6

.field public static final ERROR:I = 0x0

.field private static final OPENSSH_V1_BEGIN:[B

.field private static final OPENSSH_V1_DEFAULT_CIPHERNAME:Ljava/lang/String; = "aes256-ctr"

.field private static final OPENSSH_V1_DEFAULT_ROUNDS:I = 0x10

.field private static final OPENSSH_V1_END:[B

.field private static final OPENSSH_V1_KDFNAME:Ljava/lang/String; = "bcrypt"

.field private static final OPENSSH_V1_NONE:[B

.field private static final OPENSSH_V1_SALT_LEN:I = 0x10

.field public static final RSA:I = 0x2

.field public static final UNKNOWN:I = 0x4

.field static final VENDOR_FSECURE:I = 0x1

.field static final VENDOR_OPENSSH:I = 0x0

.field static final VENDOR_OPENSSH_V1:I = 0x4

.field static final VENDOR_PKCS8:I = 0x3

.field static final VENDOR_PUTTY:I = 0x2

.field static final VENDOR_PUTTY_V3:I = 0x5

.field private static final cr:[B

.field static header:[[B

.field private static space:[B


# instance fields
.field protected cipher:Lcom/jcraft/jsch/Cipher;

.field protected data:[B

.field protected encrypted:Z

.field private hash:Lcom/jcraft/jsch/HASH;

.field instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

.field private iv:[B

.field private kdf:Lcom/jcraft/jsch/KDF;

.field protected publicKeyComment:Ljava/lang/String;

.field private publickeyblob:[B

.field private random:Lcom/jcraft/jsch/Random;

.field private sha1:Lcom/jcraft/jsch/HASH;

.field vendor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const-string v0, "openssh-key-v1\u0000"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->AUTH_MAGIC:[B

    .line 64
    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->cr:[B

    .line 66
    const-string v0, "-----BEGIN OPENSSH PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 65
    sput-object v0, Lcom/jcraft/jsch/KeyPair;->OPENSSH_V1_BEGIN:[B

    .line 67
    const-string v0, "-----END OPENSSH PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->OPENSSH_V1_END:[B

    .line 68
    const-string v0, "none"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->OPENSSH_V1_NONE:[B

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const-string v1, "Proc-Type: 4,ENCRYPTED"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DEK-Info: DES-EDE3-CBC,"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 136
    sput-object v0, Lcom/jcraft/jsch/KeyPair;->header:[[B

    .line 424
    const-string v0, " "

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->space:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    .line 123
    const-string v1, "no comment"

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    .line 913
    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    .line 915
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->iv:[B

    .line 916
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    .line 133
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 134
    return-void
.end method

.method private static a2b(B)B
    .locals 2

    .line 1552
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    .line 1553
    sub-int/2addr p0, v0

    goto :goto_0

    .line 1554
    :cond_0
    add-int/lit8 p0, p0, -0x61

    add-int/lit8 p0, p0, 0xa

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method private static b2a(B)B
    .locals 1

    .line 1558
    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    .line 1559
    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    .line 1560
    :cond_0
    add-int/lit8 p0, p0, -0xa

    add-int/lit8 p0, p0, 0x41

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method private decrypt([B[B[B)[B
    .locals 7

    .line 691
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/jcraft/jsch/KeyPair;->genKey([B[B)[B

    move-result-object p2

    .line 692
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2, p3}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 693
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 694
    array-length p2, p1

    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {p3}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result p3

    sub-int/2addr p2, p3

    new-array p2, p2, [B

    .line 695
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {p3}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 696
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 697
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    array-length p3, p1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v2

    sub-int v4, p3, v2

    const/4 v6, 0x0

    const/4 v3, -0x4

    move-object v2, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 698
    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {p3}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 699
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    array-length v4, p1

    const/4 v6, 0x0

    move-object v2, p1

    move v3, v6

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 700
    goto :goto_0

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    array-length v4, p1

    const/4 v6, 0x0

    move-object v2, p1

    move v3, v6

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 703
    :goto_0
    move-object v0, p2

    return-object v0

    .line 704
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    nop

    .line 705
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 706
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string v1, "failed to decrypt key"

    invoke-interface {p2, p3, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    :cond_2
    return-object v0
.end method

.method private encrypt([B[[B[B)[B
    .locals 9

    .line 647
    if-nez p3, :cond_0

    .line 648
    return-object p1

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    if-nez v0, :cond_1

    .line 651
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genCipher()Lcom/jcraft/jsch/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 654
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    if-nez p2, :cond_2

    .line 655
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genRandom()Lcom/jcraft/jsch/Random;

    move-result-object p2

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    .line 656
    :cond_2
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    array-length v2, v0

    invoke-interface {p2, v0, v1, v2}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 658
    invoke-virtual {p0, p3, v0}, Lcom/jcraft/jsch/KeyPair;->genKey([B[B)[B

    move-result-object p2

    .line 659
    nop

    .line 664
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {p3}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result p3

    .line 665
    array-length v2, p1

    div-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, p3

    new-array v2, v2, [B

    .line 666
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    array-length p1, p1

    rem-int/2addr p1, p3

    sub-int p1, p3, p1

    .line 668
    array-length p3, v2

    add-int/lit8 p3, p3, -0x1

    :goto_0
    array-length v3, v2

    sub-int/2addr v3, p1

    if-le v3, p3, :cond_4

    .line 671
    nop

    .line 675
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {p1, v1, p2, v0}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 676
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    array-length v6, v2

    const/4 v8, 0x0

    move-object v4, v2

    move v5, v8

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 677
    goto :goto_1

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 679
    iget-object p3, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    const-string v1, "failed to encrypt key"

    invoke-interface {p3, v0, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 682
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 683
    move-object p1, v2

    return-object p1

    .line 669
    :cond_4
    int-to-byte v3, p1

    aput-byte v3, v2, p3

    .line 668
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method public static extractX509SubjectPublicKeyInfo([B[BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1580
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/asn1/ASN1;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 1581
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1582
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1583
    const-string p1, "invalid public key value (SubjectPublicKeyInfo is not a SEQUENCE)"

    .line 1582
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1586
    :cond_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object p0

    .line 1587
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1588
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "invalid public key value (SubjectPublicKeyInfo is wrong length)"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1591
    :cond_1
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 1592
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1593
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1594
    const-string p1, "invalid public key value (SubjectPublicKeyInfo algorithm is not a SEQUENCE)"

    .line 1593
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1597
    :cond_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    move-result-object v1

    .line 1598
    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 1599
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1600
    const-string p1, "invalid public key value (SubjectPublicKeyInfo algorithm is wrong length)"

    .line 1599
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1603
    :cond_3
    aget-object v1, v1, v0

    .line 1604
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1605
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1606
    const-string p1, "invalid public key value (AlgorithmIdentifier algorithm is not an OBJECT IDENTIFIER)"

    .line 1605
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1609
    :cond_4
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1610
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1611
    const-string p1, "invalid public key value (AlgorithmIdentifier algorithm is wrong value)"

    .line 1610
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1614
    :cond_5
    aget-object p0, p0, v3

    .line 1615
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->isBITSTRING()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1616
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1617
    const-string p1, "invalid public key value (SubjectPublicKeyInfo subjectPublicKey is not a BIT STRING)"

    .line 1616
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1620
    :cond_6
    invoke-virtual {p0}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    move-result-object p0

    .line 1621
    aget-byte p1, p0, v0

    if-nez p1, :cond_8

    array-length p1, p0

    sub-int/2addr p1, v3

    if-eq p1, p2, :cond_7

    goto :goto_0

    .line 1626
    :cond_7
    array-length p1, p0

    invoke-static {p0, v3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 1622
    :cond_8
    :goto_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1623
    const-string p1, "invalid public key value (SubjectPublicKeyInfo subjectPublicKey is wrong length)"

    .line 1622
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1627
    :catch_0
    move-exception p0
    :try_end_0
    .catch Lcom/jcraft/jsch/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    nop

    .line 1628
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "invalid ASN.1 encoding"

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private genCipher()Lcom/jcraft/jsch/Cipher;
    .locals 4

    .line 815
    :try_start_0
    const-string v0, "3des-cbc"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 814
    nop

    .line 816
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    .line 817
    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "failed to create cipher"

    invoke-interface {v1, v2, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 822
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    return-object v0
.end method

.method private genFingerPrintHash()Lcom/jcraft/jsch/HASH;
    .locals 6

    .line 798
    nop

    .line 800
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "FingerprintHash"

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jcraft/jsch/HASH;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 802
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/HASH;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1

    .line 803
    :try_start_1
    invoke-interface {v1}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 804
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 805
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 806
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v4, "failed to create hash"

    invoke-interface {v2, v3, v4, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 809
    :cond_0
    return-object v1
.end method

.method private genHash()Lcom/jcraft/jsch/HASH;
    .locals 4

    .line 786
    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/HASH;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 787
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HASH;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    .line 788
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->init()V

    .line 789
    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "failed to create hash"

    invoke-interface {v1, v2, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    return-object v0
.end method

.method public static genKeyPair(Lcom/jcraft/jsch/JSch;I)Lcom/jcraft/jsch/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 75
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->genKeyPair(Lcom/jcraft/jsch/JSch;II)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static genKeyPair(Lcom/jcraft/jsch/JSch;II)Lcom/jcraft/jsch/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 79
    nop

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 81
    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 82
    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 83
    new-instance v0, Lcom/jcraft/jsch/KeyPairRSA;

    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 84
    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 85
    new-instance v0, Lcom/jcraft/jsch/KeyPairECDSA;

    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 86
    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 87
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "Ed25519 keys are not supported in this build"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 89
    new-instance v0, Lcom/jcraft/jsch/KeyPairEd448;

    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 91
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 92
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/KeyPair;->generate(I)V

    .line 94
    :cond_5
    return-object v0
.end method

.method private genRandom()Lcom/jcraft/jsch/Random;
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    if-nez v0, :cond_0

    .line 773
    :try_start_0
    const-string v0, "random"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/Random;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 772
    nop

    .line 774
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Random;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    .line 775
    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "failed to create random"

    invoke-interface {v1, v2, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    return-object v0
.end method

.method private static isOpenSSHPrivateKey([BII)Z
    .locals 4

    .line 1546
    const-string v0, "OPENSSH PRIVATE KEY-----"

    .line 1547
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, p2, :cond_0

    .line 1548
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1547
    move v3, v2

    :cond_0
    return v3
.end method

.method static load(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 973
    nop

    .line 974
    nop

    .line 977
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->fromFile(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 978
    nop

    .line 982
    nop

    .line 983
    if-nez p2, :cond_0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".pub"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 988
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->fromFile(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 989
    goto :goto_1

    :catch_0
    move-exception p1

    .line 990
    if-eqz p2, :cond_1

    .line 991
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    move-object p1, v1

    .line 996
    :goto_1
    :try_start_2
    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 998
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 996
    return-object p0

    .line 997
    :catchall_0
    move-exception p0

    .line 997
    nop

    .line 998
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 999
    throw p0

    :catch_1
    move-exception p0

    .line 979
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static load(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1009
    const/16 v4, 0x8

    new-array v5, v4, [B

    .line 1010
    nop

    .line 1011
    nop

    .line 1013
    nop

    .line 1015
    nop

    .line 1016
    nop

    .line 1017
    const-string v6, ""

    .line 1018
    nop

    .line 1021
    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    .line 1022
    array-length v12, v2

    const/16 v13, 0xb

    if-le v12, v13, :cond_7

    aget-byte v12, v2, v11

    if-nez v12, :cond_7

    aget-byte v12, v2, v10

    if-nez v12, :cond_7

    aget-byte v12, v2, v9

    if-nez v12, :cond_7

    .line 1024
    aget-byte v12, v2, v8

    if-eq v12, v7, :cond_0

    aget-byte v12, v2, v8

    const/16 v14, 0x9

    if-eq v12, v14, :cond_0

    aget-byte v12, v2, v8

    if-eq v12, v13, :cond_0

    aget-byte v12, v2, v8

    const/16 v13, 0x13

    if-ne v12, v13, :cond_7

    .line 1026
    :cond_0
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 1027
    array-length v2, v2

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 1028
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    .line 1029
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1031
    nop

    .line 1032
    const-string v4, "ssh-rsa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1033
    invoke-static {v1, v3}, Lcom/jcraft/jsch/KeyPairRSA;->fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    .line 1034
    goto :goto_1

    :cond_1
    const-string v4, "ssh-dss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1035
    invoke-static {v1, v3}, Lcom/jcraft/jsch/KeyPairDSA;->fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    .line 1036
    goto :goto_1

    :cond_2
    const-string v4, "ecdsa-sha2-nistp256"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ecdsa-sha2-nistp384"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1037
    const-string v4, "ecdsa-sha2-nistp521"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "ssh-ed25519"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1040
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "Ed25519 keys are not supported in this build"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1041
    :cond_4
    const-string v4, "ssh-ed448"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1042
    invoke-static {v1, v3}, Lcom/jcraft/jsch/KeyPairEd448;->fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    .line 1043
    goto :goto_1

    .line 1044
    :cond_5
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "privatekey: invalid key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1038
    :cond_6
    :goto_0
    invoke-static {v1, v3}, Lcom/jcraft/jsch/KeyPairECDSA;->fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    .line 1039
    nop

    .line 1046
    :goto_1
    return-object v1

    .line 1050
    :cond_7
    nop

    .line 1052
    if-eqz v2, :cond_8

    .line 1053
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/jcraft/jsch/KeyPair;->loadPPK(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v13

    .line 1054
    if-eqz v13, :cond_8

    .line 1055
    move-object v1, v13

    return-object v1

    .line 1457
    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v12, 0x0

    goto/16 :goto_3d

    .line 1058
    :cond_8
    if-eqz v2, :cond_9

    array-length v13, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_9
    move v13, v11

    .line 1059
    :goto_2
    nop

    .line 1062
    move v14, v11

    .line 1062
    :goto_3
    const/4 v15, 0x4

    const/16 v12, 0x2d

    if-lt v14, v13, :cond_a

    .line 1070
    goto :goto_4

    .line 1063
    :cond_a
    :try_start_1
    aget-byte v11, v2, v14

    if-ne v11, v12, :cond_6c

    add-int v11, v14, v15

    if-ge v11, v13, :cond_6c

    add-int v18, v14, v10

    aget-byte v7, v2, v18

    if-ne v7, v12, :cond_6b

    add-int v7, v14, v9

    aget-byte v7, v2, v7

    if-ne v7, v12, :cond_6b

    .line 1064
    add-int v7, v14, v8

    aget-byte v7, v2, v7

    if-ne v7, v12, :cond_6b

    aget-byte v7, v2, v11

    if-ne v7, v12, :cond_6b

    .line 1065
    :goto_4
    move v12, v14

    const/4 v14, 0x0

    const/16 v20, 0x0

    move v7, v10

    const/4 v11, 0x0

    .line 1070
    :goto_5
    if-lt v12, v13, :cond_b

    :goto_6
    move/from16 v8, v20

    goto/16 :goto_e

    .line 1071
    :cond_b
    aget-byte v15, v2, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_c

    const/16 v4, 0x45

    const/16 v9, 0x42

    if-ne v15, v9, :cond_14

    add-int v15, v12, v8

    if-ge v15, v13, :cond_14

    add-int v18, v12, v10

    :try_start_2
    aget-byte v9, v2, v18

    if-ne v9, v4, :cond_14

    const/4 v9, 0x2

    add-int v18, v12, v9

    aget-byte v9, v2, v18

    const/16 v8, 0x47

    if-ne v9, v8, :cond_14

    .line 1072
    aget-byte v8, v2, v15

    const/16 v9, 0x49

    if-ne v8, v9, :cond_14

    .line 1073
    add-int/lit8 v8, v12, 0x6

    .line 1074
    const/4 v12, 0x2

    add-int v14, v8, v12

    if-lt v14, v13, :cond_c

    .line 1075
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "invalid privatekey"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1076
    :cond_c
    aget-byte v12, v2, v8

    const/16 v15, 0x44

    if-ne v12, v15, :cond_d

    add-int v12, v8, v10

    aget-byte v12, v2, v12

    const/16 v15, 0x53

    if-ne v12, v15, :cond_d

    aget-byte v12, v2, v14

    const/16 v15, 0x41

    if-ne v12, v15, :cond_d

    .line 1077
    nop

    .line 1078
    move v14, v10

    goto/16 :goto_8

    :cond_d
    aget-byte v12, v2, v8

    const/16 v15, 0x52

    if-ne v12, v15, :cond_e

    add-int v12, v8, v10

    aget-byte v12, v2, v12

    const/16 v9, 0x53

    if-ne v12, v9, :cond_e

    aget-byte v9, v2, v14

    const/16 v12, 0x41

    if-ne v9, v12, :cond_e

    .line 1079
    nop

    .line 1080
    const/4 v14, 0x2

    goto/16 :goto_8

    :cond_e
    aget-byte v9, v2, v8

    if-ne v9, v4, :cond_f

    add-int v9, v8, v10

    aget-byte v9, v2, v9

    const/16 v12, 0x43

    if-ne v9, v12, :cond_f

    .line 1081
    nop

    .line 1082
    const/4 v14, 0x3

    goto/16 :goto_8

    :cond_f
    aget-byte v9, v2, v8

    const/16 v12, 0x53

    if-ne v9, v12, :cond_10

    add-int v9, v8, v10

    aget-byte v9, v2, v9

    if-ne v9, v12, :cond_10

    aget-byte v9, v2, v14

    const/16 v12, 0x48

    if-ne v9, v12, :cond_10

    .line 1083
    nop

    .line 1084
    nop

    .line 1085
    const/4 v14, 0x4

    move/from16 v20, v10

    goto/16 :goto_8

    :cond_10
    const/4 v9, 0x6

    add-int/2addr v9, v8

    const/16 v4, 0x50

    if-ge v9, v13, :cond_11

    aget-byte v12, v2, v8

    if-ne v12, v4, :cond_11

    add-int v12, v8, v10

    aget-byte v12, v2, v12

    if-ne v12, v15, :cond_11

    aget-byte v12, v2, v14

    const/16 v4, 0x49

    if-ne v12, v4, :cond_11

    .line 1086
    const/4 v4, 0x3

    add-int v12, v8, v4

    aget-byte v4, v2, v12

    const/16 v12, 0x56

    if-ne v4, v12, :cond_11

    const/4 v4, 0x4

    add-int v12, v8, v4

    aget-byte v4, v2, v12

    const/16 v12, 0x41

    if-ne v4, v12, :cond_11

    const/4 v4, 0x5

    add-int v12, v8, v4

    aget-byte v4, v2, v12

    const/16 v12, 0x54

    if-ne v4, v12, :cond_11

    aget-byte v4, v2, v9

    const/16 v12, 0x45

    if-ne v4, v12, :cond_11

    .line 1087
    nop

    .line 1088
    nop

    .line 1089
    nop

    .line 1090
    add-int/lit8 v8, v8, 0x3

    .line 1091
    const/4 v7, 0x0

    const/4 v14, 0x4

    :goto_7
    const/16 v20, 0x3

    goto :goto_8

    :cond_11
    const/16 v4, 0x8

    add-int v12, v8, v4

    if-ge v12, v13, :cond_12

    aget-byte v4, v2, v8

    const/16 v15, 0x45

    if-ne v4, v15, :cond_12

    add-int v4, v8, v10

    aget-byte v4, v2, v4

    const/16 v15, 0x4e

    if-ne v4, v15, :cond_12

    aget-byte v4, v2, v14

    const/16 v14, 0x43

    if-ne v4, v14, :cond_12

    .line 1092
    const/4 v4, 0x3

    add-int v14, v8, v4

    aget-byte v4, v2, v14

    const/16 v14, 0x52

    if-ne v4, v14, :cond_12

    const/4 v4, 0x4

    add-int v14, v8, v4

    aget-byte v4, v2, v14

    const/16 v14, 0x59

    if-ne v4, v14, :cond_12

    const/4 v4, 0x5

    add-int/2addr v4, v8

    aget-byte v4, v2, v4

    const/16 v14, 0x50

    if-ne v4, v14, :cond_12

    aget-byte v4, v2, v9

    const/16 v9, 0x54

    if-ne v4, v9, :cond_12

    .line 1093
    const/4 v4, 0x7

    add-int v9, v8, v4

    aget-byte v4, v2, v9

    const/16 v9, 0x45

    if-ne v4, v9, :cond_12

    aget-byte v4, v2, v12

    const/16 v9, 0x44

    if-ne v4, v9, :cond_12

    .line 1094
    nop

    .line 1095
    nop

    .line 1096
    add-int/lit8 v8, v8, 0x5

    .line 1097
    const/4 v14, 0x4

    goto :goto_7

    :cond_12
    invoke-static {v2, v8, v13}, Lcom/jcraft/jsch/KeyPair;->isOpenSSHPrivateKey([BII)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1098
    nop

    .line 1099
    nop

    .line 1100
    const/4 v14, 0x4

    const/16 v20, 0x4

    .line 1103
    :goto_8
    add-int/lit8 v12, v8, 0x3

    .line 1104
    const/16 v4, 0x8

    goto/16 :goto_a

    .line 1101
    :cond_13
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "invalid privatekey"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    .line 1106
    :cond_14
    :try_start_3
    aget-byte v4, v2, v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_c

    const/16 v8, 0x41

    if-ne v4, v8, :cond_16

    const/4 v4, 0x7

    add-int v8, v12, v4

    if-ge v8, v13, :cond_16

    add-int v4, v12, v10

    :try_start_4
    aget-byte v4, v2, v4

    const/16 v9, 0x45

    if-ne v4, v9, :cond_16

    const/4 v4, 0x2

    add-int v9, v12, v4

    aget-byte v4, v2, v9

    const/16 v9, 0x53

    if-ne v4, v9, :cond_16

    .line 1107
    const/4 v4, 0x3

    add-int v9, v12, v4

    aget-byte v4, v2, v9

    const/16 v9, 0x2d

    if-ne v4, v9, :cond_16

    const/4 v4, 0x4

    add-int v9, v12, v4

    aget-byte v4, v2, v9

    const/16 v9, 0x32

    if-ne v4, v9, :cond_16

    const/4 v4, 0x5

    add-int v9, v12, v4

    aget-byte v4, v2, v9

    const/16 v9, 0x35

    if-ne v4, v9, :cond_16

    const/4 v4, 0x6

    add-int v9, v12, v4

    aget-byte v4, v2, v9

    const/16 v9, 0x36

    if-ne v4, v9, :cond_16

    .line 1108
    aget-byte v4, v2, v8

    const/16 v8, 0x2d

    if-ne v4, v8, :cond_16

    .line 1109
    add-int/lit8 v12, v12, 0x8

    .line 1110
    const-string v4, "aes256-cbc"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1112
    const-string v4, "aes256-cbc"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 1111
    nop

    .line 1113
    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/jcraft/jsch/Cipher;

    .line 1115
    invoke-interface {v11}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v4

    new-array v5, v4, [B

    .line 1116
    const/16 v4, 0x8

    goto/16 :goto_a

    .line 1117
    :cond_15
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "privatekey: aes256-cbc is not available"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_0

    .line 1121
    :cond_16
    :try_start_5
    aget-byte v4, v2, v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_c

    const/16 v8, 0x31

    const/16 v9, 0x41

    if-ne v4, v9, :cond_18

    const/4 v4, 0x7

    add-int v9, v12, v4

    if-ge v9, v13, :cond_18

    add-int v4, v12, v10

    :try_start_6
    aget-byte v4, v2, v4

    const/16 v15, 0x45

    if-ne v4, v15, :cond_18

    const/4 v4, 0x2

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    const/16 v15, 0x53

    if-ne v4, v15, :cond_18

    .line 1122
    const/4 v4, 0x3

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    const/16 v15, 0x2d

    if-ne v4, v15, :cond_18

    const/4 v4, 0x4

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    if-ne v4, v8, :cond_18

    const/4 v4, 0x5

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    const/16 v15, 0x39

    if-ne v4, v15, :cond_18

    const/4 v4, 0x6

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    const/16 v15, 0x32

    if-ne v4, v15, :cond_18

    .line 1123
    aget-byte v4, v2, v9

    const/16 v9, 0x2d

    if-ne v4, v9, :cond_18

    .line 1124
    add-int/lit8 v12, v12, 0x8

    .line 1125
    const-string v4, "aes192-cbc"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1127
    const-string v4, "aes192-cbc"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 1126
    nop

    .line 1128
    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/jcraft/jsch/Cipher;

    .line 1130
    invoke-interface {v11}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v4

    new-array v5, v4, [B

    .line 1131
    const/16 v4, 0x8

    goto/16 :goto_a

    .line 1132
    :cond_17
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "privatekey: aes192-cbc is not available"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_0

    .line 1136
    :cond_18
    :try_start_7
    aget-byte v4, v2, v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_7} :catch_c

    const/16 v9, 0x41

    if-ne v4, v9, :cond_1a

    const/4 v4, 0x7

    add-int v9, v12, v4

    if-ge v9, v13, :cond_1a

    add-int v4, v12, v10

    :try_start_8
    aget-byte v4, v2, v4

    const/16 v15, 0x45

    if-ne v4, v15, :cond_1a

    const/4 v4, 0x2

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    const/16 v15, 0x53

    if-ne v4, v15, :cond_1a

    .line 1137
    const/4 v4, 0x3

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    const/16 v15, 0x2d

    if-ne v4, v15, :cond_1a

    const/4 v4, 0x4

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    if-ne v4, v8, :cond_1a

    const/4 v4, 0x5

    add-int v8, v12, v4

    aget-byte v4, v2, v8

    const/16 v8, 0x32

    if-ne v4, v8, :cond_1a

    const/4 v4, 0x6

    add-int v8, v12, v4

    aget-byte v4, v2, v8

    const/16 v8, 0x38

    if-ne v4, v8, :cond_1a

    .line 1138
    aget-byte v4, v2, v9

    const/16 v8, 0x2d

    if-ne v4, v8, :cond_1a

    .line 1139
    add-int/lit8 v12, v12, 0x8

    .line 1140
    const-string v4, "aes128-cbc"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1142
    const-string v4, "aes128-cbc"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 1141
    nop

    .line 1143
    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/jcraft/jsch/Cipher;

    .line 1145
    invoke-interface {v11}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v4

    new-array v5, v4, [B

    .line 1146
    const/16 v4, 0x8

    goto :goto_a

    .line 1147
    :cond_19
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "privatekey: aes128-cbc is not available"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_8} :catch_0

    .line 1151
    :cond_1a
    :try_start_9
    aget-byte v4, v2, v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_9 .. :try_end_9} :catch_c

    const/16 v8, 0x43

    if-ne v4, v8, :cond_1c

    const/4 v4, 0x3

    add-int v9, v12, v4

    if-ge v9, v13, :cond_1c

    add-int v4, v12, v10

    :try_start_a
    aget-byte v4, v2, v4

    const/16 v15, 0x42

    if-ne v4, v15, :cond_1c

    const/4 v4, 0x2

    add-int v15, v12, v4

    aget-byte v4, v2, v15

    if-ne v4, v8, :cond_1c

    .line 1152
    aget-byte v4, v2, v9

    const/16 v8, 0x2c

    if-ne v4, v8, :cond_1c

    .line 1153
    add-int/lit8 v4, v12, 0x4

    .line 1154
    move v12, v4

    const/4 v4, 0x0

    :goto_9
    array-length v8, v5

    if-lt v4, v8, :cond_1b

    .line 1157
    const/16 v4, 0x8

    goto :goto_a

    .line 1155
    :cond_1b
    add-int/lit8 v8, v12, 0x1

    aget-byte v9, v2, v12

    invoke-static {v9}, Lcom/jcraft/jsch/KeyPair;->a2b(B)B

    move-result v9

    const/4 v12, 0x4

    shl-int/2addr v9, v12

    and-int/lit16 v9, v9, 0xf0

    add-int/lit8 v12, v8, 0x1

    aget-byte v8, v2, v8

    invoke-static {v8}, Lcom/jcraft/jsch/KeyPair;->a2b(B)B

    move-result v8

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_a .. :try_end_a} :catch_0

    .line 1154
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1159
    :cond_1c
    :try_start_b
    aget-byte v4, v2, v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_b .. :try_end_b} :catch_c

    const/16 v8, 0xd

    if-ne v4, v8, :cond_1d

    add-int v4, v12, v10

    :try_start_c
    array-length v8, v2

    if-ge v4, v8, :cond_1d

    aget-byte v4, v2, v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_c} :catch_0

    const/16 v8, 0xa

    if-ne v4, v8, :cond_1d

    .line 1160
    add-int/lit8 v12, v12, 0x1

    .line 1161
    const/16 v4, 0x8

    :goto_a
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v15, 0x4

    goto/16 :goto_5

    .line 1163
    :cond_1d
    :try_start_d
    aget-byte v4, v2, v12

    const/16 v8, 0xa

    if-ne v4, v8, :cond_6a

    add-int v4, v12, v10

    array-length v9, v2

    if-ge v4, v9, :cond_6a

    .line 1164
    aget-byte v9, v2, v4

    if-ne v9, v8, :cond_1e

    .line 1165
    add-int/lit8 v12, v12, 0x2

    .line 1166
    goto/16 :goto_6

    .line 1168
    :cond_1e
    aget-byte v8, v2, v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_d .. :try_end_d} :catch_c

    const/16 v9, 0xd

    if-ne v8, v9, :cond_1f

    const/4 v8, 0x2

    add-int v9, v12, v8

    :try_start_e
    array-length v8, v2

    if-ge v9, v8, :cond_1f

    aget-byte v8, v2, v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_e .. :try_end_e} :catch_0

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1f

    .line 1169
    add-int/lit8 v12, v12, 0x3

    .line 1170
    goto/16 :goto_6

    .line 1172
    :cond_1f
    nop

    .line 1173
    :goto_b
    :try_start_f
    array-length v8, v2

    if-lt v4, v8, :cond_20

    goto :goto_c

    .line 1174
    :cond_20
    aget-byte v8, v2, v4

    const/16 v9, 0xa

    if-ne v8, v9, :cond_21

    .line 1175
    :goto_c
    const/4 v4, 0x0

    goto :goto_d

    .line 1177
    :cond_21
    aget-byte v8, v2, v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/LinkageError; {:try_start_f .. :try_end_f} :catch_c

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_69

    .line 1178
    nop

    .line 1179
    move v4, v10

    .line 1182
    :goto_d
    if-nez v4, :cond_68

    .line 1183
    add-int/lit8 v12, v12, 0x1

    .line 1184
    const/4 v4, 0x3

    move/from16 v8, v20

    if-eq v8, v4, :cond_22

    .line 1185
    nop

    .line 1186
    const/4 v7, 0x0

    .line 1192
    :cond_22
    :goto_e
    if-eqz v2, :cond_2f

    .line 1194
    if-nez v14, :cond_23

    .line 1195
    :try_start_10
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "invalid privatekey"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1198
    :cond_23
    nop

    .line 1199
    move v4, v12

    .line 1199
    :goto_f
    if-lt v4, v13, :cond_24

    goto :goto_10

    .line 1200
    :cond_24
    aget-byte v9, v2, v4

    const/16 v15, 0x2d

    if-ne v9, v15, :cond_2e

    .line 1201
    nop

    .line 1206
    :goto_10
    sub-int v9, v13, v4

    if-eqz v9, :cond_2d

    sub-int/2addr v4, v12

    if-nez v4, :cond_25

    goto/16 :goto_17

    .line 1211
    :cond_25
    new-array v4, v4, [B

    .line 1212
    array-length v9, v4

    const/4 v13, 0x0

    invoke-static {v2, v12, v4, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1213
    nop

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    array-length v9, v4

    .line 1219
    const/4 v12, 0x0

    .line 1219
    :goto_11
    if-lt v12, v9, :cond_26

    move-object/from16 v27, v6

    goto :goto_14

    .line 1220
    :cond_26
    aget-byte v13, v4, v12

    const/16 v15, 0xa

    if-ne v13, v15, :cond_2a

    .line 1221
    if-lez v12, :cond_27

    sub-int v13, v12, v10

    aget-byte v13, v4, v13

    const/16 v15, 0xd

    if-ne v13, v15, :cond_27

    move v13, v10

    goto :goto_12

    :cond_27
    const/4 v13, 0x0

    .line 1223
    :goto_12
    add-int v15, v12, v10

    if-eqz v13, :cond_28

    move/from16 v18, v10

    goto :goto_13

    :cond_28
    const/16 v18, 0x0

    :goto_13
    sub-int v10, v12, v18

    move-object/from16 v27, v6

    sub-int v6, v9, v15

    invoke-static {v4, v15, v4, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1224
    if-eqz v13, :cond_29

    .line 1225
    add-int/lit8 v9, v9, -0x1

    .line 1226
    add-int/lit8 v6, v12, -0x1

    move v12, v6

    .line 1228
    :cond_29
    add-int/lit8 v9, v9, -0x1

    .line 1229
    const/4 v10, 0x1

    goto :goto_16

    :cond_2a
    move-object/from16 v27, v6

    .line 1231
    aget-byte v6, v4, v12

    const/16 v10, 0x2d

    if-ne v6, v10, :cond_2c

    .line 1232
    nop

    .line 1237
    :goto_14
    const/4 v6, 0x0

    sub-int v9, v12, v6

    if-lez v9, :cond_2b

    .line 1238
    invoke-static {v4, v6, v9}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v9
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_10 .. :try_end_10} :catch_0

    move-object v12, v9

    goto :goto_15

    :cond_2b
    const/4 v12, 0x0

    .line 1240
    :goto_15
    :try_start_11
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->bzero([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_18

    .line 1234
    :cond_2c
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    :goto_16
    move-object/from16 v6, v27

    goto :goto_11

    .line 1207
    :cond_2d
    :goto_17
    :try_start_12
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "invalid privatekey"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_12 .. :try_end_12} :catch_0

    :cond_2e
    move-object/from16 v27, v6

    .line 1203
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x1

    goto/16 :goto_f

    :cond_2f
    move-object/from16 v27, v6

    const/4 v12, 0x0

    .line 1243
    :goto_18
    const/4 v4, 0x4

    if-ne v8, v4, :cond_30

    .line 1244
    :try_start_13
    invoke-static {v1, v12}, Lcom/jcraft/jsch/KeyPair;->loadOpenSSHKeyv1(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    return-object v1

    .line 1457
    :catch_1
    move-exception v0

    :goto_19
    move-object v1, v0

    goto/16 :goto_3d

    .line 1245
    :cond_30
    if-eqz v12, :cond_33

    array-length v6, v12

    if-le v6, v4, :cond_33

    .line 1246
    const/4 v4, 0x0

    aget-byte v6, v12, v4

    const/16 v4, 0x3f

    if-ne v6, v4, :cond_33

    const/4 v4, 0x1

    aget-byte v6, v12, v4

    const/16 v4, 0x6f

    if-ne v6, v4, :cond_33

    const/4 v4, 0x2

    aget-byte v6, v12, v4

    const/4 v4, -0x7

    if-ne v6, v4, :cond_33

    .line 1247
    const/4 v4, 0x3

    aget-byte v6, v12, v4

    const/16 v4, -0x15

    if-ne v6, v4, :cond_33

    .line 1249
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v12}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 1250
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1251
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1252
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 1253
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v6

    .line 1254
    const-string v7, "3des-cbc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1255
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1256
    array-length v1, v12

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getOffSet()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 1257
    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_13 .. :try_end_13} :catch_1

    .line 1258
    nop

    .line 1259
    nop

    .line 1260
    :try_start_14
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 1261
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cipher "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not supported for this privatekey format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1260
    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_14 .. :try_end_14} :catch_2

    .line 1457
    :catch_2
    move-exception v0

    move-object v12, v1

    goto :goto_19

    .line 1262
    :cond_31
    :try_start_15
    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1263
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1264
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1266
    nop

    .line 1268
    array-length v6, v12

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getOffSet()I

    move-result v7

    sub-int/2addr v6, v7

    new-array v6, v6, [B

    .line 1269
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1270
    nop

    .line 1271
    move-object v12, v6

    const/4 v7, 0x0

    goto :goto_1a

    .line 1272
    :cond_32
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipher "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not supported for this privatekey format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1272
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_15 .. :try_end_15} :catch_1

    .line 1277
    :cond_33
    :goto_1a
    if-eqz v3, :cond_5c

    .line 1279
    nop

    .line 1280
    :try_start_16
    array-length v4, v3

    .line 1281
    array-length v6, v3

    const/4 v13, 0x4

    if-le v6, v13, :cond_45

    .line 1282
    const/4 v6, 0x0

    aget-byte v13, v3, v6

    const/16 v6, 0x2d

    if-ne v13, v6, :cond_45

    const/4 v13, 0x1

    aget-byte v15, v3, v13

    if-ne v15, v6, :cond_45

    const/4 v13, 0x2

    aget-byte v15, v3, v13

    if-ne v15, v6, :cond_45

    const/4 v13, 0x3

    aget-byte v15, v3, v13

    if-ne v15, v6, :cond_45

    .line 1284
    nop

    .line 1285
    const/4 v6, 0x0

    .line 1287
    :cond_34
    add-int/lit8 v6, v6, 0x1

    .line 1288
    array-length v13, v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/lang/LinkageError; {:try_start_16 .. :try_end_16} :catch_7

    if-le v13, v6, :cond_35

    :try_start_17
    aget-byte v13, v3, v6
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/LinkageError; {:try_start_17 .. :try_end_17} :catch_1

    const/16 v15, 0xa

    if-ne v13, v15, :cond_34

    .line 1289
    :cond_35
    :try_start_18
    array-length v13, v3

    if-gt v13, v6, :cond_36

    .line 1290
    nop

    .line 1293
    const/4 v13, 0x0

    goto :goto_1b

    :cond_36
    const/4 v13, 0x1

    .line 1293
    :goto_1b
    if-nez v13, :cond_37

    goto :goto_1f

    .line 1294
    :cond_37
    aget-byte v15, v3, v6

    const/16 v9, 0xa

    if-ne v15, v9, :cond_44

    .line 1295
    nop

    .line 1296
    const/4 v9, 0x1

    add-int v15, v6, v9

    :goto_1c
    array-length v9, v3

    if-lt v15, v9, :cond_38

    goto :goto_1d

    .line 1297
    :cond_38
    aget-byte v9, v3, v15

    const/16 v10, 0xa

    if-ne v9, v10, :cond_39

    .line 1298
    :goto_1d
    const/16 v10, 0x3a

    const/4 v9, 0x0

    goto :goto_1e

    .line 1299
    :cond_39
    aget-byte v9, v3, v15

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_43

    .line 1300
    nop

    .line 1301
    const/4 v9, 0x1

    .line 1304
    :goto_1e
    if-nez v9, :cond_42

    .line 1305
    add-int/lit8 v6, v6, 0x1

    .line 1306
    nop

    .line 1311
    :goto_1f
    array-length v9, v3

    if-gt v9, v6, :cond_3a

    .line 1312
    const/4 v13, 0x0

    .line 1315
    :cond_3a
    nop

    .line 1316
    move v9, v4

    move v4, v6

    .line 1316
    :goto_20
    if-eqz v13, :cond_3e

    if-lt v4, v9, :cond_3b

    goto :goto_21

    .line 1317
    :cond_3b
    aget-byte v10, v3, v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/LinkageError; {:try_start_18 .. :try_end_18} :catch_7

    const/16 v15, 0xa

    if-ne v10, v15, :cond_3c

    .line 1318
    const/4 v10, 0x1

    add-int v15, v4, v10

    sub-int v18, v9, v4

    move-object/from16 v28, v12

    sub-int v12, v18, v10

    :try_start_19
    invoke-static {v3, v15, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1319
    add-int/lit8 v9, v9, -0x1

    .line 1320
    move-object/from16 v12, v28

    goto :goto_20

    :cond_3c
    move-object/from16 v28, v12

    .line 1322
    aget-byte v10, v3, v4

    const/16 v12, 0x2d

    if-ne v10, v12, :cond_3d

    .line 1323
    goto :goto_22

    .line 1325
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v28

    goto :goto_20

    :cond_3e
    :goto_21
    move-object/from16 v28, v12

    .line 1327
    :goto_22
    if-eqz v13, :cond_5d

    .line 1328
    sub-int/2addr v4, v6

    invoke-static {v3, v6, v4}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v12
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_19 .. :try_end_19} :catch_9

    .line 1329
    if-eqz v2, :cond_3f

    const/4 v2, 0x4

    if-ne v14, v2, :cond_41

    .line 1330
    :cond_3f
    const/16 v9, 0x8

    :try_start_1a
    aget-byte v2, v12, v9

    const/16 v4, 0x64

    if-ne v2, v4, :cond_40

    .line 1331
    nop

    .line 1332
    const/4 v9, 0x1

    goto/16 :goto_37

    :cond_40
    aget-byte v2, v12, v9
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_1a .. :try_end_1a} :catch_9

    const/16 v4, 0x72

    if-ne v2, v4, :cond_41

    .line 1333
    nop

    .line 1337
    const/4 v9, 0x2

    goto/16 :goto_37

    :cond_41
    move v9, v14

    goto/16 :goto_37

    :catch_3
    move-exception v0

    move-object v2, v0

    goto/16 :goto_35

    :cond_42
    const/16 v9, 0x8

    goto :goto_23

    :cond_43
    const/16 v9, 0x8

    move-object/from16 v28, v12

    .line 1296
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1c

    :cond_44
    const/16 v9, 0x8

    const/16 v10, 0x3a

    :goto_23
    move-object/from16 v28, v12

    .line 1309
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v28

    goto/16 :goto_1b

    :cond_45
    move-object/from16 v28, v12

    .line 1338
    const/4 v6, 0x0

    :try_start_1b
    aget-byte v9, v3, v6

    const/16 v6, 0x20

    const/16 v10, 0x65

    const/16 v12, 0x73

    if-ne v9, v12, :cond_52

    const/4 v9, 0x1

    aget-byte v13, v3, v9

    if-ne v13, v12, :cond_52

    const/4 v9, 0x2

    aget-byte v13, v3, v9

    const/16 v9, 0x68

    if-ne v13, v9, :cond_52

    const/4 v9, 0x3

    aget-byte v13, v3, v9

    const/16 v15, 0x2d

    if-ne v13, v15, :cond_52

    .line 1339
    if-nez v2, :cond_49

    array-length v2, v3

    const/4 v9, 0x7

    if-le v2, v9, :cond_49

    .line 1340
    const/4 v2, 0x4

    aget-byte v9, v3, v2

    const/16 v12, 0x64

    if-ne v9, v12, :cond_46

    .line 1341
    nop

    .line 1342
    const/4 v9, 0x1

    goto :goto_24

    :cond_46
    aget-byte v9, v3, v2

    const/16 v12, 0x72

    if-ne v9, v12, :cond_47

    .line 1343
    nop

    .line 1344
    const/4 v9, 0x2

    goto :goto_24

    :cond_47
    aget-byte v9, v3, v2

    if-ne v9, v10, :cond_48

    const/4 v2, 0x6

    aget-byte v9, v3, v2

    const/16 v2, 0x32

    if-ne v9, v2, :cond_48

    .line 1345
    nop

    .line 1346
    const/4 v9, 0x5

    goto :goto_24

    :cond_48
    const/16 v18, 0x4

    aget-byte v2, v3, v18

    if-ne v2, v10, :cond_49

    const/4 v2, 0x6

    aget-byte v9, v3, v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_1b .. :try_end_1b} :catch_9

    const/16 v2, 0x34

    if-ne v9, v2, :cond_49

    .line 1347
    const/4 v9, 0x6

    goto :goto_24

    :cond_49
    move v9, v14

    .line 1350
    :goto_24
    nop

    .line 1351
    const/4 v2, 0x0

    .line 1351
    :goto_25
    if-lt v2, v4, :cond_4a

    goto :goto_26

    .line 1352
    :cond_4a
    :try_start_1c
    aget-byte v10, v3, v2

    if-ne v10, v6, :cond_51

    .line 1353
    nop

    .line 1356
    :goto_26
    add-int/lit8 v2, v2, 0x1

    .line 1357
    if-ge v2, v4, :cond_4d

    .line 1358
    nop

    .line 1359
    move v10, v2

    .line 1359
    :goto_27
    if-lt v10, v4, :cond_4b

    goto :goto_28

    .line 1360
    :cond_4b
    aget-byte v12, v3, v10

    if-ne v12, v6, :cond_4c

    .line 1361
    nop

    .line 1364
    :goto_28
    sub-int v6, v10, v2

    invoke-static {v3, v2, v6}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_1c .. :try_end_1c} :catch_9

    move-object v12, v2

    move v2, v10

    goto :goto_29

    .line 1362
    :cond_4c
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_4d
    const/4 v12, 0x0

    .line 1366
    :goto_29
    add-int/lit8 v6, v2, 0x1

    if-ge v2, v4, :cond_5e

    .line 1367
    nop

    .line 1368
    move v2, v6

    .line 1368
    :goto_2a
    if-lt v2, v4, :cond_4e

    goto :goto_2b

    .line 1369
    :cond_4e
    :try_start_1d
    aget-byte v10, v3, v2

    const/16 v13, 0xa

    if-ne v10, v13, :cond_50

    .line 1370
    nop

    .line 1373
    :goto_2b
    if-lez v2, :cond_4f

    const/4 v4, 0x1

    sub-int v10, v2, v4

    aget-byte v4, v3, v10

    const/16 v10, 0xd

    if-ne v4, v10, :cond_4f

    .line 1374
    add-int/lit8 v2, v2, -0x1

    .line 1375
    :cond_4f
    if-ge v6, v2, :cond_5e

    .line 1376
    sub-int/2addr v2, v6

    invoke-static {v3, v6, v2}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1d .. :try_end_1d} :catch_9

    .line 1379
    goto/16 :goto_38

    .line 1371
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :catch_4
    move-exception v0

    move-object v2, v0

    goto/16 :goto_36

    .line 1354
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :catch_5
    move-exception v0

    move-object v2, v0

    const/4 v12, 0x0

    goto/16 :goto_36

    :cond_52
    const/4 v9, 0x0

    :try_start_1e
    aget-byte v13, v3, v9

    if-ne v13, v10, :cond_5d

    const/4 v9, 0x1

    aget-byte v10, v3, v9

    const/16 v9, 0x63

    if-ne v10, v9, :cond_5d

    const/4 v9, 0x2

    aget-byte v10, v3, v9

    const/16 v9, 0x64

    if-ne v10, v9, :cond_5d

    const/4 v9, 0x3

    aget-byte v10, v3, v9

    if-ne v10, v12, :cond_5d

    .line 1380
    if-nez v2, :cond_53

    array-length v2, v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_1e .. :try_end_1e} :catch_9

    const/4 v10, 0x7

    if-le v2, v10, :cond_53

    .line 1381
    const/4 v9, 0x3

    goto :goto_2c

    :cond_53
    move v9, v14

    .line 1383
    :goto_2c
    nop

    .line 1384
    const/4 v2, 0x0

    .line 1384
    :goto_2d
    if-lt v2, v4, :cond_54

    goto :goto_2e

    .line 1385
    :cond_54
    :try_start_1f
    aget-byte v10, v3, v2

    if-ne v10, v6, :cond_5b

    .line 1386
    nop

    .line 1389
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    .line 1390
    if-ge v2, v4, :cond_57

    .line 1391
    nop

    .line 1392
    move v10, v2

    .line 1392
    :goto_2f
    if-lt v10, v4, :cond_55

    goto :goto_30

    .line 1393
    :cond_55
    aget-byte v12, v3, v10

    if-ne v12, v6, :cond_56

    .line 1394
    nop

    .line 1397
    :goto_30
    sub-int v6, v10, v2

    invoke-static {v3, v2, v6}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_1f .. :try_end_1f} :catch_9

    move-object v12, v2

    move v2, v10

    goto :goto_31

    .line 1395
    :cond_56
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_57
    const/4 v12, 0x0

    .line 1399
    :goto_31
    add-int/lit8 v6, v2, 0x1

    if-ge v2, v4, :cond_5e

    .line 1400
    nop

    .line 1401
    move v2, v6

    .line 1401
    :goto_32
    if-lt v2, v4, :cond_58

    goto :goto_33

    .line 1402
    :cond_58
    :try_start_20
    aget-byte v10, v3, v2

    const/16 v13, 0xa

    if-ne v10, v13, :cond_5a

    .line 1403
    nop

    .line 1406
    :goto_33
    if-lez v2, :cond_59

    const/4 v4, 0x1

    sub-int v10, v2, v4

    aget-byte v4, v3, v10

    const/16 v10, 0xd

    if-ne v4, v10, :cond_59

    .line 1407
    add-int/lit8 v2, v2, -0x1

    .line 1408
    :cond_59
    if-ge v6, v2, :cond_5e

    .line 1409
    sub-int/2addr v2, v6

    invoke-static {v3, v6, v2}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v6
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_20 .. :try_end_20} :catch_9

    .line 1414
    goto :goto_38

    :cond_5a
    const/16 v10, 0xd

    .line 1404
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_5b
    const/16 v13, 0xa

    const/16 v10, 0xd

    .line 1387
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :catch_6
    move-exception v0

    goto :goto_34

    .line 1457
    :catch_7
    move-exception v0

    move-object/from16 v28, v12

    goto/16 :goto_19

    :catch_8
    move-exception v0

    move-object/from16 v28, v12

    :goto_34
    move-object v2, v0

    const/4 v12, 0x0

    :goto_35
    move v9, v14

    .line 1415
    :goto_36
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    const-string v10, "failed to parse public key"

    invoke-interface {v4, v6, v10, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_5c
    move-object/from16 v28, v12

    :cond_5d
    move v9, v14

    const/4 v12, 0x0

    :cond_5e
    :goto_37
    move-object/from16 v6, v27

    .line 1421
    :goto_38
    nop

    .line 1422
    const/4 v2, 0x1

    if-ne v9, v2, :cond_5f

    .line 1423
    new-instance v2, Lcom/jcraft/jsch/KeyPairDSA;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 1424
    move-object v1, v2

    goto :goto_39

    .line 1457
    :catch_9
    move-exception v0

    move-object v1, v0

    move-object/from16 v12, v28

    goto/16 :goto_3d

    :cond_5f
    const/4 v4, 0x2

    if-ne v9, v4, :cond_60

    .line 1425
    new-instance v2, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    .line 1426
    move-object v1, v2

    goto :goto_39

    :cond_60
    const/4 v2, 0x3

    if-ne v9, v2, :cond_61

    .line 1427
    new-instance v2, Lcom/jcraft/jsch/KeyPairECDSA;

    invoke-direct {v2, v1, v3}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)V

    .line 1428
    move-object v1, v2

    goto :goto_39

    :cond_61
    const/4 v4, 0x5

    if-ne v9, v4, :cond_62

    .line 1429
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "Ed25519 keys are not supported in this build"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1430
    :cond_62
    const/4 v4, 0x6

    if-ne v9, v4, :cond_63

    .line 1431
    new-instance v2, Lcom/jcraft/jsch/KeyPairEd448;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 1432
    move-object v1, v2

    goto :goto_39

    :cond_63
    const/4 v4, 0x0

    const/4 v2, 0x3

    if-ne v8, v2, :cond_64

    .line 1433
    new-instance v2, Lcom/jcraft/jsch/KeyPairPKCS8;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/KeyPairPKCS8;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9
    .catch Ljava/lang/LinkageError; {:try_start_21 .. :try_end_21} :catch_9

    move-object v1, v2

    goto :goto_39

    :cond_64
    move-object v1, v4

    .line 1436
    :goto_39
    if-eqz v1, :cond_67

    .line 1437
    :try_start_22
    iput-boolean v7, v1, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    .line 1438
    iput-object v12, v1, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    .line 1439
    iput v8, v1, Lcom/jcraft/jsch/KeyPair;->vendor:I

    .line 1440
    iput-object v6, v1, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    .line 1441
    iput-object v11, v1, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    .line 1443
    if-eqz v7, :cond_65

    .line 1444
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    .line 1445
    iput-object v5, v1, Lcom/jcraft/jsch/KeyPair;->iv:[B
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_b
    .catch Ljava/lang/LinkageError; {:try_start_22 .. :try_end_22} :catch_b

    .line 1446
    move-object/from16 v4, v28

    :try_start_23
    iput-object v4, v1, Lcom/jcraft/jsch/KeyPair;->data:[B

    .line 1447
    return-object v1

    :cond_65
    move-object/from16 v4, v28

    .line 1448
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1449
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    .line 1450
    return-object v1

    .line 1451
    :cond_66
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "invalid privatekey"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1457
    :catch_a
    move-exception v0

    goto :goto_3a

    .line 1457
    :catch_b
    move-exception v0

    move-object/from16 v4, v28

    :goto_3a
    move-object v1, v0

    move-object v12, v4

    goto/16 :goto_3d

    .line 1456
    :cond_67
    return-object v1

    :cond_68
    const/16 v9, 0x8

    move/from16 v8, v20

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v27, v6

    const/16 v15, 0x2d

    const/16 v18, 0x4

    const/16 v16, 0x3

    move v6, v10

    const/4 v10, 0x7

    move/from16 v25, v10

    const/16 v24, 0x2

    goto :goto_3b

    :cond_69
    const/16 v22, 0x5

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v27, v6

    const/16 v26, 0x32

    const/16 v24, 0x2

    const/16 v23, 0x6

    const/16 v16, 0x3

    const/16 v25, 0x7

    move/from16 v8, v20

    const/16 v20, 0xa

    const/16 v15, 0x2d

    const/16 v21, 0xd

    const/16 v18, 0x4

    move v6, v10

    move v10, v9

    const/16 v9, 0x8

    .line 1173
    add-int/lit8 v4, v4, 0x1

    move v10, v6

    move-object/from16 v6, v27

    move/from16 v20, v8

    goto/16 :goto_b

    :cond_6a
    const/16 v25, 0x7

    const/16 v9, 0x8

    move/from16 v8, v20

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v27, v6

    const/16 v15, 0x2d

    const/16 v24, 0x2

    const/16 v18, 0x4

    const/16 v16, 0x3

    move v6, v10

    .line 1189
    :goto_3b
    add-int/lit8 v12, v12, 0x1

    move v4, v9

    move v10, v6

    move-object/from16 v6, v27

    move/from16 v9, v24

    move/from16 v15, v18

    move/from16 v20, v8

    move/from16 v8, v16

    goto/16 :goto_5

    :cond_6b
    const/16 v25, 0x7

    goto :goto_3c

    :cond_6c
    move/from16 v25, v7

    :goto_3c
    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v27, v6

    move/from16 v24, v9

    move/from16 v16, v8

    move v9, v4

    move v6, v10

    .line 1067
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v25

    move v4, v9

    move v10, v6

    move/from16 v11, v17

    move-object/from16 v6, v27

    move/from16 v9, v24

    move/from16 v8, v16

    goto/16 :goto_3

    .line 1457
    :catch_c
    move-exception v0

    const/16 v19, 0x0

    move-object v1, v0

    move-object/from16 v12, v19
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_23 .. :try_end_23} :catch_a

    .line 1457
    :goto_3d
    nop

    .line 1458
    invoke-static {v12}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 1459
    instance-of v2, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v2, :cond_6d

    .line 1460
    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    .line 1461
    :cond_6d
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".pub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 961
    move-object v0, v2

    .line 963
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 967
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1003
    iget-object p0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method static loadOpenSSHKeyv1(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1467
    if-nez p1, :cond_0

    .line 1468
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "invalid privatekey"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1471
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 1472
    sget-object p1, Lcom/jcraft/jsch/KeyPair;->AUTH_MAGIC:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 1473
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1474
    sget-object v1, Lcom/jcraft/jsch/KeyPair;->AUTH_MAGIC:[B

    invoke-static {v1, p1}, Lcom/jcraft/jsch/Util;->arraysequals([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1475
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "Invalid openssh v1 format."

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1478
    :cond_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    .line 1479
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    .line 1480
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 1482
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    .line 1483
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1484
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "We don\'t support having more than 1 key in the file (yet)."

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1487
    :cond_2
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 1488
    const/4 v5, 0x0

    invoke-static {p0, v3, v5}, Lcom/jcraft/jsch/KeyPair;->parsePubkeyBlob(Lcom/jcraft/jsch/JSch$InstanceLogger;[BLjava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    .line 1489
    const-string v5, "none"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v4, v6

    :cond_3
    iput-boolean v4, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    .line 1490
    iput-object v3, p0, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    .line 1491
    const/4 v3, 0x4

    iput v3, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    .line 1492
    const-string v3, ""

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    .line 1495
    :try_start_0
    iget-boolean v3, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-nez v3, :cond_5

    .line 1496
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    .line 1497
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1498
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "invalid privatekey"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1500
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1502
    return-object p0

    .line 1505
    :cond_5
    :try_start_1
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 1504
    nop

    .line 1506
    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Cipher;

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    .line 1507
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v3}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v3

    .line 1508
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v4}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    move-result v4

    const/16 v5, 0xc

    if-eqz v4, :cond_6

    .line 1509
    nop

    .line 1510
    move v3, v6

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v4}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1511
    move v3, v5

    .line 1513
    :cond_7
    :goto_0
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/jcraft/jsch/KeyPair;->iv:[B

    .line 1516
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 1517
    array-length v4, v3

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v5}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 1518
    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1519
    array-length v5, v3

    array-length v7, v4

    array-length v3, v3

    sub-int v3, v7, v3

    invoke-virtual {v0, v4, v5, v3}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    .line 1520
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPair;->data:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1521
    nop

    .line 1528
    :try_start_2
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/jcraft/jsch/KDF;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 1529
    new-array v0, v6, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/KDF;

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->kdf:Lcom/jcraft/jsch/KDF;

    .line 1530
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->kdf:Lcom/jcraft/jsch/KDF;

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/KDF;->initWithOpenSSHv1KDFOptions([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    .line 1531
    nop

    .line 1538
    return-object p0

    :catch_0
    move-exception p1

    .line 1532
    :try_start_3
    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_8

    .line 1533
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1

    .line 1534
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kdf "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 1522
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_9

    .line 1523
    move-object p1, v0

    check-cast p1, Lcom/jcraft/jsch/JSchException;

    throw p1

    .line 1524
    :cond_9
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipher "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1539
    :catch_2
    move-exception p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1539
    nop

    .line 1540
    iget-object p0, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 1541
    throw p1
.end method

.method static loadPPK(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1633
    nop

    .line 1634
    nop

    .line 1635
    nop

    .line 1636
    nop

    .line 1638
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 1639
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1642
    :cond_0
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1647
    const-string v1, "PuTTY-User-Key-File-2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1648
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 1649
    const-string v1, "PuTTY-User-Key-File-3"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1650
    if-nez v1, :cond_1

    .line 1651
    return-object v4

    .line 1653
    :cond_1
    nop

    .line 1655
    goto :goto_0

    .line 1656
    :cond_2
    move v2, v3

    .line 1660
    :goto_0
    :try_start_0
    const-string v5, "Public-Lines"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1661
    invoke-static {v0, v5}, Lcom/jcraft/jsch/KeyPair;->parseLines(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v5

    .line 1664
    :cond_3
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1668
    const-string v6, "Private-Lines"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1669
    invoke-static {v0, v6}, Lcom/jcraft/jsch/KeyPair;->parseLines(Lcom/jcraft/jsch/Buffer;I)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1672
    :cond_4
    :try_start_1
    invoke-static {v0, p1}, Lcom/jcraft/jsch/KeyPair;->parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1676
    array-length v0, v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1677
    :try_start_2
    array-length v4, v5

    invoke-static {v5, v7, v4}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v4

    .line 1679
    invoke-static {p0, v4, v1}, Lcom/jcraft/jsch/KeyPair;->parsePubkeyBlob(Lcom/jcraft/jsch/JSch$InstanceLogger;[BLjava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    .line 1680
    const-string v1, "Encryption"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "none"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    move v5, v7

    :cond_5
    iput-boolean v5, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    .line 1681
    iput-object v4, p0, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    .line 1682
    iput v2, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    .line 1683
    const-string v1, "Comment"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    .line 1684
    iget-boolean v1, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_a

    .line 1687
    :try_start_3
    const-string v1, "aes256-cbc"

    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1686
    nop

    .line 1688
    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/Cipher;

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    .line 1689
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPair;->iv:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1690
    nop

    .line 1696
    if-ne v2, v3, :cond_7

    .line 1698
    :try_start_4
    const-string p1, "sha-1"

    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/jcraft/jsch/HASH;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 1699
    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/HASH;

    .line 1700
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->init()V

    .line 1701
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->sha1:Lcom/jcraft/jsch/HASH;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1702
    goto :goto_1

    :catch_0
    move-exception p0

    .line 1703
    :try_start_5
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    if-eqz p1, :cond_6

    .line 1704
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    throw p0

    .line 1705
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v1, "hash sha-1 is not available"

    invoke-direct {p1, v1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1708
    :cond_7
    const-string v1, "Key-Derivation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1710
    :try_start_6
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/jcraft/jsch/KDF;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 1711
    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/KDF;

    iput-object v2, p0, Lcom/jcraft/jsch/KeyPair;->kdf:Lcom/jcraft/jsch/KDF;

    .line 1712
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPair;->kdf:Lcom/jcraft/jsch/KDF;

    invoke-interface {v2, p1}, Lcom/jcraft/jsch/KDF;->initWithPPKv3Header(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1713
    nop

    .line 1720
    :goto_1
    :try_start_7
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    .line 1721
    goto :goto_2

    :catch_1
    move-exception p0

    .line 1714
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    if-eqz p1, :cond_8

    .line 1715
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    throw p0

    .line 1716
    :cond_8
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kdf "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 1691
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    if-eqz p1, :cond_9

    .line 1692
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    throw p0

    .line 1693
    :cond_9
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v1, "cipher aes256-cbc is not available"

    invoke-direct {p1, v1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1722
    :cond_a
    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    .line 1723
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1724
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "invalid privatekey"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1726
    :cond_b
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1729
    :goto_2
    nop

    .line 1734
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 1729
    move-object v4, p0

    return-object v4

    .line 1730
    :catch_3
    move-exception p0

    goto :goto_3

    .line 1733
    :catchall_0
    move-exception p0

    goto :goto_5

    .line 1730
    :catch_4
    move-exception p0

    move-object v0, v4

    :goto_3
    move-object v4, v6

    goto :goto_4

    .line 1733
    :catchall_1
    move-exception p0

    move-object v6, v4

    goto :goto_5

    .line 1730
    :catch_5
    move-exception p0

    move-object v0, v4

    .line 1730
    :goto_4
    nop

    .line 1731
    :try_start_8
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 1732
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1733
    :goto_5
    nop

    .line 1734
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 1735
    throw p0
.end method

.method private static parseHeader(Lcom/jcraft/jsch/Buffer;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jcraft/jsch/Buffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1832
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1833
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1834
    nop

    .line 1835
    nop

    .line 1836
    move v2, v1

    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    const/16 v5, 0xa

    const/16 v6, 0xd

    const/4 v7, 0x0

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 1837
    :cond_0
    aget-byte v3, v0, v2

    if-eq v3, v6, :cond_4

    aget-byte v3, v0, v2

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 1843
    :cond_1
    aget-byte v3, v0, v2

    const/16 v8, 0x3a

    if-ne v3, v8, :cond_3

    .line 1844
    sub-int v3, v2, v1

    invoke-static {v0, v1, v3}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    .line 1845
    add-int/lit8 v2, v2, 0x1

    .line 1846
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-byte v3, v0, v2

    const/16 v8, 0x20

    if-ne v3, v8, :cond_2

    .line 1847
    add-int/lit8 v2, v2, 0x1

    .line 1849
    :cond_2
    nop

    .line 1850
    goto :goto_3

    .line 1836
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1838
    :cond_4
    :goto_1
    add-int/2addr v2, v4

    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget-byte v2, v0, v2

    if-ne v2, v5, :cond_5

    .line 1839
    nop

    .line 1841
    :cond_5
    :goto_2
    move v2, v1

    move-object v1, v7

    .line 1854
    :goto_3
    const/4 v3, 0x0

    if-nez v1, :cond_6

    .line 1855
    return v3

    .line 1857
    :cond_6
    move v8, v2

    :goto_4
    array-length v9, v0

    if-lt v8, v9, :cond_7

    goto :goto_6

    .line 1858
    :cond_7
    aget-byte v9, v0, v8

    if-eq v9, v6, :cond_9

    aget-byte v9, v0, v8

    if-ne v9, v5, :cond_8

    goto :goto_5

    .line 1857
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1859
    :cond_9
    :goto_5
    sub-int v6, v8, v2

    invoke-static {v0, v2, v6}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v7

    .line 1860
    add-int/lit8 v2, v8, 0x1

    .line 1861
    array-length v6, v0

    if-ge v2, v6, :cond_a

    aget-byte v0, v0, v2

    if-ne v0, v5, :cond_a

    .line 1862
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1864
    :cond_a
    nop

    .line 1865
    nop

    .line 1869
    :goto_6
    if-eqz v7, :cond_b

    .line 1870
    invoke-interface {p1, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    iput v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1874
    :cond_b
    if-eqz v1, :cond_c

    if-eqz v7, :cond_c

    move v3, v4

    :cond_c
    return v3
.end method

.method private static parseLines(Lcom/jcraft/jsch/Buffer;I)[B
    .locals 9

    .line 1797
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1798
    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1799
    nop

    .line 1801
    nop

    .line 1802
    const/4 v2, 0x0

    move v3, p1

    move p1, v1

    .line 1802
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-gtz v3, :cond_1

    .line 1825
    if-eqz v2, :cond_0

    .line 1826
    iput v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1828
    :cond_0
    return-object v2

    .line 1803
    :cond_1
    :goto_1
    array-length v3, v0

    const/16 v5, 0xa

    if-gt v3, p1, :cond_2

    move v3, p1

    goto :goto_3

    .line 1804
    :cond_2
    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v0, p1

    .line 1805
    const/16 v6, 0xd

    if-eq p1, v6, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    move p1, v3

    goto :goto_1

    .line 1806
    :cond_4
    :goto_2
    sub-int p1, v3, v1

    add-int/lit8 p1, p1, -0x1

    .line 1807
    const/4 v6, 0x0

    if-nez v2, :cond_5

    .line 1808
    new-array v2, p1, [B

    .line 1809
    invoke-static {v0, v1, v2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1810
    goto :goto_3

    :cond_5
    if-lez p1, :cond_6

    .line 1811
    array-length v7, v2

    add-int/2addr v7, p1

    new-array v7, v7, [B

    .line 1812
    array-length v8, v2

    invoke-static {v2, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1813
    array-length v6, v2

    invoke-static {v0, v1, v7, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1814
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 1815
    nop

    .line 1817
    move-object v2, v7

    .line 1820
    :cond_6
    :goto_3
    array-length p1, v0

    if-ge v3, p1, :cond_7

    aget-byte p1, v0, v3

    if-ne p1, v5, :cond_7

    .line 1821
    add-int/lit8 p1, v3, 0x1

    goto :goto_4

    :cond_7
    move p1, v3

    .line 1822
    :goto_4
    move v3, v4

    move v1, p1

    goto :goto_0
.end method

.method private static parsePubkeyBlob(Lcom/jcraft/jsch/JSch$InstanceLogger;[BLjava/lang/String;)Lcom/jcraft/jsch/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1740
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 1741
    array-length p1, p1

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 1743
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    .line 1744
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1747
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pubkeyblob type ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] does not match expected type ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1747
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object p1, p2

    goto :goto_1

    .line 1745
    :cond_2
    :goto_0
    nop

    .line 1746
    nop

    .line 1751
    :goto_1
    const-string p2, "ssh-rsa"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 1752
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    new-array p1, p1, [B

    .line 1753
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1754
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p2

    new-array p2, p2, [B

    .line 1755
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1757
    new-instance v0, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    return-object v0

    .line 1758
    :cond_3
    const-string p2, "ssh-dss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1759
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    new-array v3, p1, [B

    .line 1760
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1761
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    new-array v4, p1, [B

    .line 1762
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1763
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    new-array v5, p1, [B

    .line 1764
    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1765
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    new-array v6, p1, [B

    .line 1766
    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1768
    new-instance p1, Lcom/jcraft/jsch/KeyPairDSA;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    :goto_2
    move-object v0, p1

    return-object v0

    .line 1769
    :cond_4
    const-string p2, "ecdsa-sha2-nistp256"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "ecdsa-sha2-nistp384"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1770
    const-string p2, "ecdsa-sha2-nistp521"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    .line 1782
    :cond_5
    const-string p2, "ssh-ed25519"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "ssh-ed448"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    .line 1792
    :cond_6
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "key type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1783
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p2

    new-array p2, p2, [B

    .line 1784
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1786
    const-string v0, "ssh-ed25519"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1787
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "Ed25519 keys are not supported in this build"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1789
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/KeyPairEd448;

    invoke-direct {v0, p0, p2, v1}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    return-object v0

    .line 1771
    :cond_9
    :goto_4
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    .line 1773
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 1774
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1776
    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x2

    new-array v5, p1, [B

    .line 1777
    new-array v6, p1, [B

    .line 1778
    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1779
    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 1781
    new-instance p1, Lcom/jcraft/jsch/KeyPairECDSA;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    goto/16 :goto_2

    return-object v0
.end method


# virtual methods
.method copy(Lcom/jcraft/jsch/KeyPair;)V
    .locals 1

    .line 1878
    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    .line 1879
    iget v0, p1, Lcom/jcraft/jsch/KeyPair;->vendor:I

    iput v0, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    .line 1880
    iget-object v0, p1, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    .line 1881
    iget-object p1, p1, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    .line 1882
    return-void
.end method

.method countLength(I)I
    .locals 2

    .line 743
    nop

    .line 744
    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    .line 745
    return v0

    .line 746
    :cond_0
    :goto_0
    if-gtz p1, :cond_1

    .line 750
    return v0

    .line 747
    :cond_1
    ushr-int/lit8 p1, p1, 0x8

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public decrypt(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    move-result p1

    return p1

    .line 928
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move p1, v1

    return p1

    :cond_2
    move p1, v0

    return p1
.end method

.method public decrypt([B)Z
    .locals 5

    .line 935
    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 936
    return v1

    .line 938
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 939
    iget-boolean p1, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-eqz p1, :cond_3

    :goto_0
    move v1, v0

    return v1

    .line 941
    :cond_1
    array-length v2, p1

    new-array v2, v2, [B

    .line 942
    array-length v3, v2

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 943
    nop

    .line 944
    nop

    .line 946
    const/4 p1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPair;->iv:[B

    invoke-direct {p0, v3, v2, v4}, Lcom/jcraft/jsch/KeyPair;->decrypt([B[B[B)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 947
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/KeyPair;->parse([B)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 948
    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    .line 949
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 951
    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    :cond_2
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 953
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 955
    iget-boolean p1, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 952
    :goto_1
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 953
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 954
    throw p1
.end method

.method public dispose()V
    .locals 0

    .line 1563
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1568
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 1569
    return-void
.end method

.method public abstract forSSHAgent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation
.end method

.method declared-synchronized genKey([B[B)[B
    .locals 9

    monitor-enter p0

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    if-nez v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genCipher()Lcom/jcraft/jsch/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    if-nez v0, :cond_1

    .line 833
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genHash()Lcom/jcraft/jsch/HASH;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->cipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 836
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v1}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    move-result v1

    .line 837
    array-length v2, v0

    div-int/2addr v2, v1

    mul-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    add-int/2addr v2, v3

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    nop

    .line 840
    const/4 v3, 0x3

    :try_start_1
    iget v5, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v6, 0x0

    if-nez v5, :cond_6

    .line 841
    move v5, v4

    .line 841
    :goto_1
    add-int v7, v5, v1

    array-length v8, v2

    if-le v7, v8, :cond_3

    .line 851
    array-length p1, v0

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    goto/16 :goto_4

    .line 842
    :cond_3
    if-eqz v6, :cond_4

    .line 843
    iget-object v7, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    array-length v8, v6

    invoke-interface {v7, v6, v4, v8}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 845
    :cond_4
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    array-length v7, p1

    invoke-interface {v6, p1, v4, v7}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 846
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    array-length v7, p2

    const/16 v8, 0x8

    if-le v7, v8, :cond_5

    goto :goto_2

    :cond_5
    array-length v8, p2

    :goto_2
    invoke-interface {v6, p2, v4, v8}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 847
    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v6}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v6

    .line 848
    array-length v7, v6

    invoke-static {v6, v4, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    array-length v7, v6

    add-int/2addr v5, v7

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_7

    .line 853
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->kdf:Lcom/jcraft/jsch/KDF;

    array-length v2, v0

    array-length v5, p2

    add-int/2addr v2, v5

    invoke-interface {v1, p1, v2}, Lcom/jcraft/jsch/KDF;->getKey([BI)[B

    move-result-object p1

    .line 854
    array-length v1, v0

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    array-length v1, v0

    array-length v2, p2

    invoke-static {p1, v1, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 857
    goto/16 :goto_4

    :cond_7
    iget v5, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_a

    .line 858
    move p2, v4

    .line 858
    :goto_3
    add-int v5, p2, v1

    array-length v7, v2

    if-le v5, v7, :cond_8

    .line 867
    array-length p1, v0

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    goto/16 :goto_4

    .line 859
    :cond_8
    if-eqz v6, :cond_9

    .line 860
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    array-length v7, v6

    invoke-interface {v5, v6, v4, v7}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 862
    :cond_9
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    array-length v6, p1

    invoke-interface {v5, p1, v4, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 863
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPair;->hash:Lcom/jcraft/jsch/HASH;

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v6

    .line 864
    array-length v5, v6

    invoke-static {v6, v4, v2, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    array-length v5, v6

    add-int/2addr p2, v5

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 869
    new-array p2, v7, [B

    .line 871
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->sha1:Lcom/jcraft/jsch/HASH;

    array-length v2, p2

    invoke-interface {v1, p2, v4, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 872
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->sha1:Lcom/jcraft/jsch/HASH;

    array-length v2, p1

    invoke-interface {v1, p1, v4, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 873
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->sha1:Lcom/jcraft/jsch/HASH;

    invoke-interface {v1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v1

    .line 874
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 877
    aput-byte v8, p2, v3

    .line 878
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->sha1:Lcom/jcraft/jsch/HASH;

    array-length v2, p2

    invoke-interface {v1, p2, v4, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 879
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->sha1:Lcom/jcraft/jsch/HASH;

    array-length v1, p1

    invoke-interface {p2, p1, v4, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 880
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPair;->sha1:Lcom/jcraft/jsch/HASH;

    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object p1

    .line 881
    array-length p2, p1

    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v1, v2

    invoke-static {p1, v4, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 883
    goto :goto_4

    :cond_b
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 884
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->kdf:Lcom/jcraft/jsch/KDF;

    array-length v2, v0

    array-length v5, p2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    invoke-interface {v1, p1, v2}, Lcom/jcraft/jsch/KDF;->getKey([BI)[B

    move-result-object p1

    .line 885
    array-length v1, v0

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    array-length v1, v0

    array-length v2, p2

    invoke-static {p1, v1, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    goto :goto_4

    :catch_0
    move-exception p1

    .line 890
    :try_start_2
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 891
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string v1, "failed to generate key from passphrase"

    invoke-interface {p2, v3, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 894
    :cond_c
    :goto_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method abstract generate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation
.end method

.method abstract getBegin()[B
.end method

.method abstract getEnd()[B
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 4

    .line 637
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPair;->genFingerPrintHash()Lcom/jcraft/jsch/HASH;

    move-result-object v0

    .line 638
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 639
    return-object v1

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v2

    .line 641
    if-nez v2, :cond_1

    .line 642
    return-object v1

    .line 643
    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/jcraft/jsch/Util;->getFingerPrint(Lcom/jcraft/jsch/HASH;[BZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getKeySize()I
.end method

.method public abstract getKeyType()I
.end method

.method abstract getKeyTypeName()[B
.end method

.method public getKeyTypeString()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeName()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getOpenSSHv1PrivateKeyBlob()[B
.end method

.method abstract getPrivateKey()[B
.end method

.method public getPublicKeyBlob()[B
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publickeyblob:[B

    return-object v0
.end method

.method public getPublicKeyComment()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSignature([B)[B
.end method

.method public abstract getSignature([BLjava/lang/String;)[B
.end method

.method public abstract getVerifier()Lcom/jcraft/jsch/Signature;
.end method

.method public abstract getVerifier(Ljava/lang/String;)Lcom/jcraft/jsch/Signature;
.end method

.method public isEncrypted()Z
    .locals 1

    .line 919
    iget-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    return v0
.end method

.method abstract parse([B)Z
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 902
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPassphrase([B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deprecated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPublicKeyComment(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    .line 121
    return-void
.end method

.method writeDATA([BBI[B)I
    .locals 1

    .line 735
    add-int/lit8 v0, p3, 0x1

    aput-byte p2, p1, p3

    .line 736
    array-length p2, p4

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writeLength([BII)I

    move-result p2

    .line 737
    array-length p3, p4

    const/4 v0, 0x0

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    array-length p1, p4

    add-int/2addr p1, p2

    .line 739
    return p1
.end method

.method writeINTEGER([BI[B)I
    .locals 2

    .line 719
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x2

    aput-byte v1, p1, p2

    .line 720
    array-length p2, p3

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writeLength([BII)I

    move-result p2

    .line 721
    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    array-length p1, p3

    add-int/2addr p1, p2

    .line 723
    return p1
.end method

.method writeLength([BII)I
    .locals 4

    .line 754
    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/KeyPair;->countLength(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 755
    if-nez v0, :cond_0

    .line 756
    add-int/lit8 v0, p2, 0x1

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 757
    return v0

    .line 759
    :cond_0
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x80

    or-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 760
    add-int p2, v1, v0

    .line 761
    nop

    .line 761
    :goto_0
    if-gtz v0, :cond_1

    .line 766
    move v0, p2

    return v0

    .line 762
    :cond_1
    add-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 763
    ushr-int/lit8 p3, p3, 0x8

    .line 764
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method writeOCTETSTRING([BI[B)I
    .locals 2

    .line 727
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x4

    aput-byte v1, p1, p2

    .line 728
    array-length p2, p3

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/KeyPair;->writeLength([BII)I

    move-result p2

    .line 729
    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 730
    array-length p1, p3

    add-int/2addr p1, p2

    .line 731
    return p1
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V

    .line 212
    return-void
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V

    .line 236
    return-void
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 223
    const/16 v0, 0x10

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V

    .line 224
    return-void
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 248
    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_0

    .line 249
    const/4 v3, 0x0

    .line 251
    :cond_0
    if-nez p3, :cond_1

    .line 252
    const-string v5, "aes256-ctr"

    goto :goto_0

    :cond_1
    move-object/from16 v5, p3

    .line 255
    :goto_0
    sget-object v6, Lcom/jcraft/jsch/KeyPair;->OPENSSH_V1_NONE:[B

    .line 256
    sget-object v7, Lcom/jcraft/jsch/KeyPair;->OPENSSH_V1_NONE:[B

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v8

    .line 261
    if-nez v8, :cond_2

    .line 262
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "Unable to get public key blob"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_2
    new-instance v9, Lcom/jcraft/jsch/Buffer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 266
    iget-object v11, v1, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    if-nez v11, :cond_3

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/KeyPair;->genRandom()Lcom/jcraft/jsch/Random;

    move-result-object v11

    iput-object v11, v1, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    .line 270
    :cond_3
    nop

    .line 271
    nop

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 280
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/KeyPair;->getOpenSSHv1PrivateKeyBlob()[B

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 281
    if-nez v11, :cond_4

    .line 282
    :try_start_1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "Unable to get private key blob"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    :goto_3
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    goto/16 :goto_19

    .line 285
    :cond_4
    const/16 v12, 0x10

    const/4 v13, 0x4

    if-eqz v3, :cond_9

    .line 288
    :try_start_2
    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 287
    nop

    .line 289
    new-array v7, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/Cipher;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    nop

    .line 296
    :try_start_3
    const-string v7, "bcrypt"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    :try_start_4
    invoke-static {v7}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-class v15, Lcom/jcraft/jsch/KDF;

    invoke-virtual {v9, v15}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 299
    new-array v15, v10, [Ljava/lang/Class;

    invoke-virtual {v9, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v15, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jcraft/jsch/KDF;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    nop

    .line 306
    :try_start_5
    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    .line 307
    new-array v15, v12, [B

    .line 308
    iget-object v4, v1, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;

    array-length v14, v15

    invoke-interface {v4, v15, v10, v14}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 310
    array-length v4, v15

    add-int/2addr v4, v13

    .line 311
    add-int/lit8 v4, v4, 0x4

    .line 312
    new-instance v14, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v14, v4}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 313
    invoke-virtual {v14, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 314
    move/from16 v4, p4

    invoke-virtual {v14, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 315
    iget-object v4, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {v9, v4}, Lcom/jcraft/jsch/KDF;->initWithOpenSSHv1KDFOptions([B)V

    .line 317
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    .line 318
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v5

    .line 319
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v15

    .line 320
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v12

    new-array v12, v12, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    :try_start_6
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v19

    .line 322
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    move-result v20

    const/16 v21, 0xc

    if-eqz v20, :cond_5

    .line 323
    nop

    .line 324
    move v13, v10

    goto :goto_4

    :cond_5
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 325
    move/from16 v13, v21

    goto :goto_4

    :cond_6
    move/from16 v13, v19

    .line 327
    :goto_4
    new-array v13, v13, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 328
    :try_start_7
    array-length v10, v12

    move-object/from16 v22, v4

    array-length v4, v13

    add-int/2addr v4, v10

    invoke-interface {v9, v3, v4}, Lcom/jcraft/jsch/KDF;->getKey([BI)[B

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 329
    :try_start_8
    array-length v9, v12

    const/4 v10, 0x0

    invoke-static {v4, v10, v12, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    array-length v9, v12

    move/from16 v23, v5

    array-length v5, v13

    invoke-static {v4, v9, v13, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    invoke-interface {v6, v10, v12, v13}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v10, v6

    move-object/from16 v6, v22

    move-object v9, v14

    move-object v5, v4

    move-object v4, v12

    goto/16 :goto_6

    .line 409
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v12

    move-object v3, v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_15

    .line 409
    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    :goto_5
    move-object v2, v12

    move-object v3, v13

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v2, v12

    move-object v3, v13

    goto/16 :goto_3

    .line 409
    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    move-object v2, v12

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v2, v12

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 301
    :try_start_9
    instance-of v2, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v2, :cond_7

    .line 302
    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    .line 303
    :cond_7
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kdf "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 291
    instance-of v2, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v2, :cond_8

    .line 292
    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    .line 293
    :cond_8
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cipher "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_9
    const/16 v23, 0x8

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 334
    :goto_6
    const/4 v12, 0x4

    :try_start_a
    new-array v14, v12, [B

    .line 335
    iget-object v12, v1, Lcom/jcraft/jsch/KeyPair;->random:Lcom/jcraft/jsch/Random;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    move-object/from16 v30, v13

    :try_start_b
    array-length v13, v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    move-object/from16 v31, v4

    const/4 v4, 0x0

    :try_start_c
    invoke-interface {v12, v14, v4, v13}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 336
    aget-byte v12, v14, v4

    shl-int/lit8 v4, v12, 0x18

    const/high16 v12, -0x1000000

    and-int/2addr v4, v12

    const/4 v12, 0x1

    aget-byte v13, v14, v12

    const/16 v18, 0x10

    shl-int v13, v13, v18

    const/high16 v18, 0xff0000

    and-int v13, v13, v18

    or-int/2addr v4, v13

    .line 337
    const/4 v13, 0x2

    aget-byte v13, v14, v13

    const/16 v17, 0x8

    shl-int v13, v13, v17

    const v17, 0xff00

    and-int v13, v13, v17

    .line 336
    or-int/2addr v4, v13

    .line 337
    const/4 v13, 0x3

    aget-byte v13, v14, v13

    and-int/lit16 v13, v13, 0xff

    .line 336
    or-int/2addr v4, v13

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 339
    if-nez v1, :cond_a

    .line 340
    const/4 v1, 0x0

    :try_start_d
    new-array v13, v1, [B
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v1, v13

    goto :goto_7

    .line 409
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    goto/16 :goto_12

    .line 343
    :cond_a
    :goto_7
    nop

    .line 344
    const/16 v13, 0x8

    .line 345
    :try_start_e
    array-length v14, v11

    add-int/2addr v13, v14

    .line 346
    array-length v14, v1

    const/16 v17, 0x4

    add-int v14, v17, v14

    add-int/2addr v13, v14

    .line 347
    add-int v13, v13, v23

    .line 348
    add-int/2addr v13, v15

    .line 349
    new-instance v14, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v14, v13}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 350
    :try_start_f
    invoke-virtual {v14, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 351
    invoke-virtual {v14, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 352
    invoke-virtual {v14, v11}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 353
    invoke-virtual {v14, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 354
    nop

    .line 355
    move v1, v12

    .line 355
    :goto_8
    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v4

    rem-int v4, v4, v23
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-nez v4, :cond_12

    .line 359
    if-eqz v3, :cond_d

    .line 360
    :try_start_10
    invoke-interface {v10}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 361
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 362
    iget-object v1, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v27

    iget-object v3, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v29, 0x0

    const/16 v26, -0x4

    move-object/from16 v24, v10

    move-object/from16 v25, v1

    move-object/from16 v28, v3

    invoke-interface/range {v24 .. v29}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 363
    goto :goto_9

    :cond_b
    invoke-interface {v10}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 364
    iget-object v1, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v27

    iget-object v3, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v29, 0x0

    move-object/from16 v24, v10

    move-object/from16 v25, v1

    move/from16 v26, v29

    move-object/from16 v28, v3

    invoke-interface/range {v24 .. v29}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 365
    goto :goto_9

    .line 366
    :cond_c
    iget-object v1, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v27

    iget-object v3, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v29, 0x0

    move-object/from16 v24, v10

    move-object/from16 v25, v1

    move/from16 v26, v29

    move-object/from16 v28, v3

    invoke-interface/range {v24 .. v29}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_9

    .line 409
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    goto/16 :goto_17

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    goto/16 :goto_13

    .line 370
    :cond_d
    :goto_9
    :try_start_11
    sget-object v1, Lcom/jcraft/jsch/KeyPair;->AUTH_MAGIC:[B

    array-length v1, v1

    .line 371
    array-length v3, v6

    const/4 v4, 0x4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 372
    array-length v3, v7

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 373
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 374
    add-int/lit8 v1, v1, 0x4

    .line 375
    array-length v3, v8

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 376
    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 377
    add-int/2addr v1, v15

    .line 378
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 379
    :try_start_12
    sget-object v1, Lcom/jcraft/jsch/KeyPair;->AUTH_MAGIC:[B

    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 380
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 381
    invoke-virtual {v4, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 382
    iget-object v1, v9, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v4, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 383
    invoke-virtual {v4, v12}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 384
    invoke-virtual {v4, v8}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 385
    iget-object v1, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v3}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 386
    iget-object v1, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    invoke-virtual {v4, v1, v3, v15}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    .line 387
    iget-object v1, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    const/4 v13, 0x0

    invoke-static {v1, v13, v3, v12}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 389
    :try_start_13
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->OPENSSH_V1_BEGIN:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 390
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 391
    nop

    .line 392
    nop

    .line 392
    :goto_a
    array-length v3, v1

    if-lt v13, v3, :cond_e

    goto :goto_b

    .line 393
    :cond_e
    const/16 v3, 0x46

    add-int v6, v13, v3

    array-length v7, v1

    if-ge v6, v7, :cond_f

    .line 394
    invoke-virtual {v2, v1, v13, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 395
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 396
    add-int/lit8 v13, v13, 0x46

    .line 397
    goto :goto_a

    .line 399
    :cond_f
    array-length v3, v1

    sub-int/2addr v3, v13

    invoke-virtual {v2, v1, v13, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 400
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 401
    nop

    .line 403
    :goto_b
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->OPENSSH_V1_END:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 404
    sget-object v3, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 405
    nop

    .line 410
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 411
    move-object/from16 v2, v31

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 412
    move-object/from16 v3, v30

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 413
    invoke-static {v11}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 414
    if-eqz v14, :cond_10

    .line 415
    iget-object v2, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 417
    :cond_10
    if-eqz v4, :cond_11

    .line 418
    iget-object v2, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 420
    :cond_11
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 422
    return-void

    .line 409
    :catchall_6
    move-exception v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object v6, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_1b

    :catch_8
    move-exception v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object/from16 v16, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_1a

    .line 409
    :catchall_7
    move-exception v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object v1, v0

    move-object v6, v4

    move-object v4, v5

    goto/16 :goto_18

    :catch_9
    move-exception v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object v1, v0

    move-object/from16 v16, v4

    goto/16 :goto_14

    .line 409
    :catchall_8
    move-exception v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object v1, v0

    move-object v4, v5

    goto/16 :goto_17

    :catch_a
    move-exception v0

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    move-object v1, v0

    goto/16 :goto_13

    :cond_12
    const/4 v13, 0x0

    const/4 v4, 0x4

    move-object/from16 v17, v31

    move-object/from16 v18, v30

    .line 356
    add-int v4, v1, v12

    int-to-byte v4, v4

    :try_start_14
    invoke-virtual {v14, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-object/from16 v31, v17

    move-object/from16 v30, v18

    move v1, v4

    goto/16 :goto_8

    .line 409
    :catchall_9
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    goto :goto_d

    .line 409
    :catchall_a
    move-exception v0

    move-object/from16 v17, v31

    move-object/from16 v18, v30

    :goto_c
    move-object v1, v0

    move-object v4, v5

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_17

    :catch_c
    move-exception v0

    move-object/from16 v17, v31

    move-object/from16 v18, v30

    :goto_d
    move-object v1, v0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_13

    .line 409
    :catchall_b
    move-exception v0

    move-object/from16 v17, v31

    goto :goto_e

    :catch_d
    move-exception v0

    move-object/from16 v17, v31

    goto :goto_f

    .line 409
    :catchall_c
    move-exception v0

    move-object/from16 v17, v4

    :goto_e
    move-object/from16 v18, v30

    goto :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v17, v4

    :goto_f
    move-object/from16 v18, v30

    goto :goto_11

    .line 409
    :catchall_d
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    :goto_10
    move-object v1, v0

    move-object v4, v5

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_16

    :catch_f
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    :goto_11
    move-object v1, v0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    :goto_12
    const/4 v14, 0x0

    :goto_13
    const/16 v16, 0x0

    :goto_14
    move-object v4, v5

    :goto_15
    const/4 v5, 0x0

    goto :goto_1a

    .line 409
    :catchall_e
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_16
    const/4 v14, 0x0

    :goto_17
    const/4 v6, 0x0

    :goto_18
    const/4 v5, 0x0

    goto :goto_1b

    :catch_10
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_19
    const/4 v4, 0x0

    .line 406
    :goto_1a
    :try_start_15
    instance-of v6, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v6, :cond_13

    .line 407
    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    .line 408
    :cond_13
    new-instance v6, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 409
    :catchall_f
    move-exception v0

    move-object v1, v0

    move-object/from16 v6, v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    .line 409
    :goto_1b
    nop

    .line 410
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 411
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 412
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 413
    invoke-static {v11}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 414
    if-eqz v14, :cond_14

    .line 415
    iget-object v2, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 417
    :cond_14
    if-eqz v6, :cond_15

    .line 418
    iget-object v2, v6, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 420
    :cond_15
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 421
    throw v1
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/lang/String;[B)V

    .line 569
    return-void
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 580
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 581
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 583
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v0

    :goto_0
    throw p1
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/lang/String;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 596
    :try_start_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 598
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v0

    :goto_0
    throw p1
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 610
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :try_start_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 613
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v0

    :goto_0
    throw p1
.end method

.method public writeOpenSSHv1PrivateKey(Ljava/lang/String;[BLjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 626
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    :try_start_1
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/jcraft/jsch/KeyPair;->writeOpenSSHv1PrivateKey(Ljava/io/OutputStream;[BLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 629
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v0

    :goto_0
    throw p1
.end method

.method public writePrivateKey(Ljava/io/OutputStream;)V
    .locals 1

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/io/OutputStream;[B)V

    .line 151
    return-void
.end method

.method public writePrivateKey(Ljava/io/OutputStream;[B)V
    .locals 5

    .line 160
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPrivateKey()[B

    move-result-object v0

    .line 161
    const/4 v1, 0x1

    new-array v2, v1, [[B

    .line 162
    invoke-direct {p0, v0, v2, p2}, Lcom/jcraft/jsch/KeyPair;->encrypt([B[[B[B)[B

    move-result-object v3

    .line 163
    if-eq v3, v0, :cond_0

    .line 164
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 165
    :cond_0
    const/4 v0, 0x0

    aget-object v2, v2, v0

    .line 166
    array-length v4, v3

    invoke-static {v3, v0, v4, v1}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object v3

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getBegin()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 170
    sget-object v4, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 171
    if-eqz p2, :cond_2

    .line 172
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->header:[[B

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 173
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 174
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->header:[[B

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 175
    move p2, v0

    :goto_0
    array-length v1, v2

    if-lt p2, v1, :cond_1

    .line 179
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 180
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 176
    :cond_1
    aget-byte v1, v2, p2

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/jcraft/jsch/KeyPair;->b2a(B)B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 177
    aget-byte v1, v2, p2

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/jcraft/jsch/KeyPair;->b2a(B)B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 175
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 182
    :cond_2
    :goto_1
    nop

    .line 183
    nop

    .line 183
    :goto_2
    array-length p2, v3

    if-lt v0, p2, :cond_3

    goto :goto_3

    .line 184
    :cond_3
    const/16 p2, 0x40

    add-int v1, v0, p2

    array-length v2, v3

    if-ge v1, v2, :cond_4

    .line 185
    invoke-virtual {p1, v3, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 187
    add-int/lit8 v0, v0, 0x40

    .line 188
    goto :goto_2

    .line 190
    :cond_4
    array-length p2, v3

    sub-int/2addr p2, v0

    invoke-virtual {p1, v3, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 192
    nop

    .line 194
    :goto_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getEnd()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 195
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 197
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 199
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string v1, "failed to write private key"

    invoke-interface {p2, v0, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_5
    return-void
.end method

.method public writePrivateKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/lang/String;[B)V

    .line 544
    return-void
.end method

.method public writePrivateKey(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 556
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/jcraft/jsch/KeyPair;->writePrivateKey(Ljava/io/OutputStream;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 558
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v0

    :goto_0
    throw p1
.end method

.method public writePublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .line 458
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    .line 459
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object v0

    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeName()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 462
    sget-object v1, Lcom/jcraft/jsch/KeyPair;->space:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 463
    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 464
    sget-object v0, Lcom/jcraft/jsch/KeyPair;->space:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 465
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 466
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 467
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 469
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string v1, "failed to write public key"

    invoke-interface {p2, v0, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    :cond_0
    return-void
.end method

.method public writePublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/jcraft/jsch/KeyPair;->writePublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 486
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v0

    :goto_0
    throw p1
.end method

.method public writeSECSHPublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .line 496
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    .line 497
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object v0

    .line 499
    :try_start_0
    const-string v1, "---- BEGIN SSH2 PUBLIC KEY ----"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 500
    sget-object v1, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Comment: \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 502
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 503
    nop

    .line 504
    nop

    .line 504
    :goto_0
    array-length p2, v0

    if-lt v2, p2, :cond_0

    .line 512
    const-string p2, "---- END SSH2 PUBLIC KEY ----"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 513
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 514
    return-void

    .line 505
    :cond_0
    nop

    .line 506
    array-length p2, v0

    sub-int/2addr p2, v2

    const/16 v1, 0x46

    if-ge p2, v1, :cond_1

    .line 507
    array-length p2, v0

    sub-int v1, p2, v2

    .line 508
    :cond_1
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 509
    sget-object p2, Lcom/jcraft/jsch/KeyPair;->cr:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 510
    add-int/2addr v2, v1

    goto :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 516
    iget-object p2, p0, Lcom/jcraft/jsch/KeyPair;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const-string v1, "failed to write public key"

    invoke-interface {p2, v0, v1, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    :cond_2
    return-void
.end method

.method public writeSECSHPublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 532
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/jcraft/jsch/KeyPair;->writeSECSHPublicKey(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 534
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v0

    :goto_0
    throw p1
.end method

.method writeSEQUENCE([BII)I
    .locals 2

    .line 713
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x30

    aput-byte v1, p1, p2

    .line 714
    invoke-virtual {p0, p1, v0, p3}, Lcom/jcraft/jsch/KeyPair;->writeLength([BII)I

    move-result p1

    .line 715
    return p1
.end method
