.class Lcom/jcraft/jsch/OpenSshCertificateParser;
.super Ljava/lang/Object;
.source "OpenSshCertificateParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExpectedEcdsaPointLength(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x41

    const/16 v2, 0x61

    const/16 v3, 0x85

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    move v3, v1

    return v3

    :sswitch_1
    const-string v0, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    move v3, v2

    return v3

    :sswitch_2
    const-string v0, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    return v3

    .line 202
    :goto_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ECDSA certificate key type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0xd639142 -> :sswitch_2
        0x4b541863 -> :sswitch_1
        0x7dc932ff -> :sswitch_0
    .end sparse-switch
.end method

.method static parse(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/OpenSshCertificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;-><init>([B)V

    .line 63
    new-instance p1, Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    invoke-direct {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;-><init>()V

    .line 66
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->trimToEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    nop

    .line 68
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->keyType(Ljava/lang/String;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->nonce([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    .line 71
    invoke-static {p0, v1, v0}, Lcom/jcraft/jsch/OpenSshCertificateParser;->parsePublicKey(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->certificatePublicKey([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->serial(J)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->type(I)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->id(Ljava/lang/String;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    .line 77
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getBytes()[B

    move-result-object p0

    .line 78
    new-instance v1, Lcom/jcraft/jsch/OpenSshCertificateBuffer;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;-><init>([B)V

    .line 79
    invoke-virtual {v1}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getStrings()Ljava/util/Collection;

    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->principals(Ljava/util/Collection;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validAfter(J)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validBefore(J)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getCriticalOptions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->criticalOptions(Ljava/util/Map;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getExtensions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->extensions(Ljava/util/Map;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->reserved(Ljava/lang/String;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signatureKey([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    .line 86
    iget p0, v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->s:I

    .line 88
    iget-object v1, v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 90
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->message([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    .line 92
    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->getString()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signature([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;

    .line 94
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->build()Lcom/jcraft/jsch/OpenSshCertificate;

    move-result-object p0

    .line 96
    iget p1, v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->s:I

    iget v1, v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->index:I

    if-eq p1, v1, :cond_0

    .line 97
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot read OpenSSH certificate, got more data than expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v0, v0, Lcom/jcraft/jsch/OpenSshCertificateBuffer;->index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". ID of the ca certificate: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificate;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_0
    return-object p0
.end method

.method static parsePublicKey(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "ssh-dss-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v3

    .line 133
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v4

    .line 134
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v5

    .line 135
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v6

    .line 136
    new-instance p1, Lcom/jcraft/jsch/KeyPairDSA;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B[B)V

    return-object p1

    :sswitch_3
    const-string v0, "rsa-sha2-256-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ssh-ed448-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 168
    :cond_1
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    .line 169
    const/16 v0, 0x39

    if-eq p1, v0, :cond_2

    .line 170
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Ed448 public key length: expected 57, got "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_2
    new-array p1, p1, [B

    .line 174
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 175
    new-instance p2, Lcom/jcraft/jsch/KeyPairEd448;

    invoke-direct {p2, p0, p1, v1}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    move-object p1, p2

    return-object p1

    :sswitch_5
    const-string v0, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 140
    :cond_3
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 141
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 142
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificateParser;->getExpectedEcdsaPointLength(Ljava/lang/String;)I

    move-result v1

    .line 143
    if-eq v0, v1, :cond_4

    .line 144
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ECDSA public key length for "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": expected "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", got "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_4
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result p1

    .line 148
    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    .line 149
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid ECDSA public key format: expected uncompressed point (0x04), got 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_5
    add-int/lit8 p1, v0, -0x1

    div-int/lit8 p1, p1, 0x2

    new-array v4, p1, [B

    .line 154
    new-array v5, p1, [B

    .line 155
    invoke-virtual {p2, v4}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 156
    invoke-virtual {p2, v5}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 157
    new-instance p1, Lcom/jcraft/jsch/KeyPairECDSA;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/KeyPairECDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B[B)V

    return-object p1

    :sswitch_6
    const-string v0, "rsa-sha2-512-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :sswitch_7
    const-string p0, "ssh-ed25519-cert-v01@openssh.com"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 159
    :cond_6
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p0

    .line 160
    const/16 p1, 0x20

    if-eq p0, p1, :cond_7

    .line 161
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Ed25519 public key length: expected 32, got "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_7
    new-array p0, p0, [B

    .line 165
    invoke-virtual {p2, p0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 166
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Ed25519 certs are not supported in this build"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_8
    const-string v0, "ssh-rsa-cert-v01@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 128
    :cond_8
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p2

    .line 130
    new-instance v0, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B[B)V

    move-object p1, v0

    return-object p1

    .line 177
    :goto_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported Algorithm for Certificate public key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x6e416ecf -> :sswitch_8
        -0x4e631eea -> :sswitch_7
        -0x414d2bf0 -> :sswitch_6
        -0xd639142 -> :sswitch_5
        -0xc1e38e8 -> :sswitch_4
        0xd8b76f3 -> :sswitch_3
        0x3f0fe02d -> :sswitch_2
        0x4b541863 -> :sswitch_1
        0x7dc932ff -> :sswitch_0
    .end sparse-switch
.end method
