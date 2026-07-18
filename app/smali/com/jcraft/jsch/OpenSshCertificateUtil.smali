.class Lcom/jcraft/jsch/OpenSshCertificateUtil;
.super Ljava/lang/Object;
.source "OpenSshCertificateUtil.java"


# static fields
.field static final ECDSA_P256_POINT_LENGTH:I = 0x41

.field static final ECDSA_P384_POINT_LENGTH:I = 0x61

.field static final ECDSA_P521_POINT_LENGTH:I = 0x85

.field static final EC_POINT_FORMAT_UNCOMPRESSED:I = 0x4

.field static final ED25519_PUBLIC_KEY_LENGTH:I = 0x20

.field static final ED448_PUBLIC_KEY_LENGTH:I = 0x39


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extractComment([B)[B
    .locals 1

    .line 176
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->extractSpaceDelimitedString([BI)[B

    move-result-object p0

    return-object p0
.end method

.method static extractKeyData([B)[B
    .locals 1

    .line 188
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->extractSpaceDelimitedString([BI)[B

    move-result-object p0

    return-object p0
.end method

.method static extractKeyType([B)[B
    .locals 1

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->extractSpaceDelimitedString([BI)[B

    move-result-object p0

    return-object p0
.end method

.method static extractSpaceDelimitedString([BI)[B
    .locals 7

    .line 213
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    array-length v1, p0

    if-nez v1, :cond_0

    return-object v0

    .line 216
    :cond_0
    if-gez p1, :cond_1

    .line 217
    return-object v0

    .line 220
    :cond_1
    nop

    .line 221
    nop

    .line 222
    nop

    .line 225
    const/4 v1, 0x0

    move v2, v1

    .line 225
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-byte v3, p0, v2

    invoke-static {v3}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isWhitespace(B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    goto :goto_1

    .line 226
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v3, -0x1

    move v4, v3

    move v5, v1

    .line 229
    :cond_4
    :goto_2
    array-length v6, p0

    if-lt v2, v6, :cond_6

    .line 257
    if-eq v4, v3, :cond_5

    if-ne v5, p1, :cond_5

    .line 258
    sub-int p1, v2, v4

    .line 259
    new-array v0, p1, [B

    .line 260
    invoke-static {p0, v4, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    return-object v0

    .line 264
    :cond_5
    return-object v0

    .line 231
    :cond_6
    aget-byte v6, p0, v2

    invoke-static {v6}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isWhitespace(B)Z

    move-result v6

    if-nez v6, :cond_8

    .line 232
    if-ne v4, v3, :cond_7

    .line 233
    move v4, v2

    .line 235
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 236
    goto :goto_2

    .line 238
    :cond_8
    if-eq v4, v3, :cond_a

    .line 239
    if-ne v5, p1, :cond_9

    .line 241
    sub-int p1, v2, v4

    .line 242
    new-array v0, p1, [B

    .line 243
    invoke-static {p0, v4, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    return-object v0

    .line 246
    :cond_9
    add-int/lit8 v4, v5, 0x1

    .line 247
    nop

    .line 251
    move v5, v4

    move v4, v3

    .line 251
    :cond_a
    :goto_3
    array-length v6, p0

    if-ge v2, v6, :cond_4

    aget-byte v6, p0, v2

    invoke-static {v6}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isWhitespace(B)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    .line 252
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 214
    :cond_c
    return-object v0
.end method

.method static filterUnavailableCertTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 368
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 372
    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server_host_key proposal before removing unavailable cert types is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 378
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    array-length v2, p1

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_4

    .line 388
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 389
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 390
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 391
    invoke-static {p0, p1}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    array-length v0, p1

    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_2

    .line 397
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "server_host_key proposal after removing unavailable cert types is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-interface {p1, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    aget-object v3, p1, v2

    .line 395
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (base algorithm unavailable)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    :cond_3
    :goto_2
    return-object p0

    :cond_4
    aget-object v4, p1, v3

    .line 382
    invoke-static {v4}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->getCertificateKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    if-eqz v4, :cond_5

    .line 384
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    :cond_6
    return-object p0
.end method

.method static getRawKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 325
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->getBaseKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getRevokedKeys(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jcraft/jsch/HostKeyRepository;",
            ")",
            "Ljava/util/Set<",
            "Lcom/jcraft/jsch/HostKey;",
            ">;"
        }
    .end annotation

    .line 526
    invoke-interface {p0}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey()[Lcom/jcraft/jsch/HostKey;

    move-result-object p0

    .line 527
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 528
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 529
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 527
    return-object p0
.end method

.method static getTrustedCAs(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jcraft/jsch/HostKeyRepository;",
            ")",
            "Ljava/util/Set<",
            "Lcom/jcraft/jsch/HostKey;",
            ">;"
        }
    .end annotation

    .line 494
    invoke-interface {p0}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey()[Lcom/jcraft/jsch/HostKey;

    move-result-object p0

    .line 495
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 496
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 497
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 495
    return-object p0
.end method

.method static hasBeenRevoked(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z
    .locals 1

    .line 576
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 577
    return v0

    .line 579
    :cond_0
    iget-object p1, p1, Lcom/jcraft/jsch/HostKey;->key:[B

    .line 580
    if-nez p1, :cond_1

    .line 582
    return v0

    .line 585
    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->getRevokedKeys(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 586
    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OmnlnpfjecZh5Z1Gir7KuCj-Amw;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OmnlnpfjecZh5Z1Gir7KuCj-Amw;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wZvY7saDnX1f0vALuitixKe1Jmo;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wZvY7saDnX1f0vALuitixKe1Jmo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 587
    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$kPK6iu09lzYd8zc5vMxt4c3do0Q;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$kPK6iu09lzYd8zc5vMxt4c3do0Q;-><init>([B)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 585
    return v0
.end method

.method static isCertificateKeyRevoked(Lcom/jcraft/jsch/HostKeyRepository;[B)Z
    .locals 1

    .line 552
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 553
    return v0

    .line 555
    :cond_0
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->getRevokedKeys(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 556
    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wZvY7saDnX1f0vALuitixKe1Jmo;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wZvY7saDnX1f0vALuitixKe1Jmo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 557
    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$MdlFDvC8wGoUP8bUQbpoiIBwZ8I;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$MdlFDvC8wGoUP8bUQbpoiIBwZ8I;-><init>([B)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 555
    return v0
.end method

.method static isCertificateSignedByTrustedCA(Lcom/jcraft/jsch/HostKeyRepository;Ljava/lang/String;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 455
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->getTrustedCAs(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 456
    new-instance v1, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$KLg37Z8ybilmZccr8Ja3WTdtteg;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$KLg37Z8ybilmZccr8Ja3WTdtteg;-><init>(Lcom/jcraft/jsch/HostKeyRepository;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wLcbHiP7rQP9B0VePs8MF0fOtTc;

    invoke-direct {v1, p1, p2}, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wLcbHiP7rQP9B0VePs8MF0fOtTc;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 455
    nop

    .line 464
    if-eqz v0, :cond_0

    .line 465
    new-instance p0, Lcom/jcraft/jsch/JSchRevokedHostKeyException;

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Rejected certificate: signing CA key has been revoked for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchRevokedHostKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 469
    :cond_0
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->getTrustedCAs(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$L6-bKYcBOgYw4vtZTXfFWp8ar_4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 470
    new-instance v1, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$bXmyj4jF1fD-uRmx_wXDRFtLZFU;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$bXmyj4jF1fD-uRmx_wXDRFtLZFU;-><init>(Lcom/jcraft/jsch/HostKeyRepository;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$n-eNdJyLUQ8Gnp6CoiUeMUpYR7E;

    invoke-direct {v0, p1, p2}, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$n-eNdJyLUQ8Gnp6CoiUeMUpYR7E;-><init>(Ljava/lang/String;[B)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 469
    return p0
.end method

.method static isEmpty(Ljava/lang/String;)Z
    .locals 2

    .line 132
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isEmpty(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isEmpty(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isKnownHostCaPublicKeyEntry(Lcom/jcraft/jsch/HostKey;)Z
    .locals 3

    .line 94
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "@cert-authority"

    invoke-virtual {p0}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method static isMarkedRevoked(Lcom/jcraft/jsch/HostKey;)Z
    .locals 3

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const-string v2, "@revoked"

    invoke-virtual {p0}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isValidNow(Lcom/jcraft/jsch/OpenSshCertificate;)Z
    .locals 2

    .line 276
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isValidNow(Lcom/jcraft/jsch/OpenSshCertificate;J)Z

    move-result p0

    return p0
.end method

.method static isValidNow(Lcom/jcraft/jsch/OpenSshCertificate;J)Z
    .locals 5

    .line 288
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificate;->getValidAfter()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificate;->getValidBefore()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    .line 288
    if-gez p0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private static isWhitespace(B)Z
    .locals 3

    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa

    if-eq p0, v2, :cond_0

    const/16 v2, 0xd

    if-eq p0, v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static synthetic lambda$1(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z
    .locals 0

    .line 456
    invoke-static {p0, p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->hasBeenRevoked(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$11([B[B)Z
    .locals 0

    .line 557
    invoke-static {p1, p0}, Lcom/jcraft/jsch/Util;->arraysequals([B[B)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$13(Lcom/jcraft/jsch/HostKey;)[B
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    return-object p0
.end method

.method static synthetic lambda$15([B[B)Z
    .locals 0

    .line 587
    invoke-static {p1, p0}, Lcom/jcraft/jsch/Util;->arraysequals([B[B)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$2(Ljava/lang/String;[BLcom/jcraft/jsch/HostKey;)Z
    .locals 3

    .line 457
    iget-object v0, p2, Lcom/jcraft/jsch/HostKey;->key:[B

    .line 458
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 459
    return v2

    .line 461
    :cond_0
    invoke-virtual {p2, p0}, Lcom/jcraft/jsch/HostKey;->isWildcardMatched(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 462
    invoke-static {v0, p1}, Lcom/jcraft/jsch/Util;->arraysequals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 461
    move v2, v1

    :cond_1
    return v2
.end method

.method static synthetic lambda$4(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z
    .locals 1

    .line 470
    invoke-static {p0, p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->hasBeenRevoked(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    move v0, p1

    return v0
.end method

.method static synthetic lambda$5(Ljava/lang/String;[BLcom/jcraft/jsch/HostKey;)Z
    .locals 3

    .line 471
    iget-object v0, p2, Lcom/jcraft/jsch/HostKey;->key:[B

    .line 472
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 473
    return v2

    .line 475
    :cond_0
    invoke-virtual {p2, p0}, Lcom/jcraft/jsch/HostKey;->isWildcardMatched(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 476
    invoke-static {v0, p1}, Lcom/jcraft/jsch/Util;->arraysequals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 475
    move v2, v1

    :cond_1
    return v2
.end method

.method static synthetic lambda$9(Lcom/jcraft/jsch/HostKey;)[B
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    return-object p0
.end method

.method static synthetic lambda$L6-bKYcBOgYw4vtZTXfFWp8ar_4(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$wZvY7saDnX1f0vALuitixKe1Jmo(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static parsePublicKeyComponents([B)[[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 603
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 604
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p0

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    .line 605
    invoke-static {p0, v0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->parsePublicKeyComponentsFromBuffer(Ljava/lang/String;Lcom/jcraft/jsch/Buffer;)[[B

    move-result-object p0

    return-object p0
.end method

.method static parsePublicKeyComponentsFromBuffer(Ljava/lang/String;Lcom/jcraft/jsch/Buffer;)[[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 623
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_a

    const-string v0, "rsa-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 629
    :cond_0
    const-string v0, "ssh-dss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p0

    .line 631
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v0

    .line 632
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v5

    .line 633
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    .line 635
    new-array v4, v4, [[B

    aput-object p1, v4, v2

    aput-object p0, v4, v1

    aput-object v0, v4, v3

    const/4 p0, 0x3

    aput-object v5, v4, p0

    return-object v4

    .line 638
    :cond_1
    const-string v0, "ecdsa-sha2-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 641
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p0

    .line 642
    const/16 v0, 0x85

    const/16 v5, 0x41

    if-lt p0, v5, :cond_4

    if-le p0, v0, :cond_2

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    .line 647
    if-eq v0, v4, :cond_3

    .line 648
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid ECDSA public key format: expected uncompressed point (0x04), got 0x"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 648
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 652
    :cond_3
    sub-int/2addr p0, v1

    div-int/2addr p0, v3

    new-array v0, p0, [B

    .line 653
    new-array p0, p0, [B

    .line 654
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 655
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 657
    new-array v4, v3, [[B

    aput-object v0, v4, v2

    aput-object p0, v4, v1

    return-object v4

    .line 643
    :cond_4
    :goto_0
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ECDSA public key length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (expected between "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 643
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_5
    const-string v0, "ssh-ed25519"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 661
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p0

    .line 662
    const/16 v0, 0x20

    if-eq p0, v0, :cond_6

    .line 663
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Ed25519 public key length: expected 32, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 663
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 666
    :cond_6
    new-array p0, p0, [B

    .line 667
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 668
    new-array v4, v1, [[B

    aput-object p0, v4, v2

    return-object v4

    .line 671
    :cond_7
    const-string v0, "ssh-ed448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 672
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p0

    .line 673
    const/16 v0, 0x39

    if-eq p0, v0, :cond_8

    .line 674
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Ed448 public key length: expected 57, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 674
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 677
    :cond_8
    new-array p0, p0, [B

    .line 678
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 679
    new-array v4, v1, [[B

    aput-object p0, v4, v2

    return-object v4

    .line 682
    :cond_9
    new-instance p1, Lcom/jcraft/jsch/JSchUnknownPublicKeyAlgorithmException;

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown algorithm \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 682
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchUnknownPublicKeyAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 624
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p0

    .line 625
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    .line 626
    new-array v4, v3, [[B

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    return-object v4
.end method

.method static toDateString(J)Ljava/lang/String;
    .locals 2

    .line 303
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 304
    const-string p0, "infinity"

    return-object p0

    .line 306
    :cond_0
    invoke-static {p0, p1}, Lcom/jcraft/jsch/SftpATTRS;->toDateString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static trimToEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 118
    if-nez p0, :cond_0

    .line 119
    const-string p0, ""

    return-object p0

    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
