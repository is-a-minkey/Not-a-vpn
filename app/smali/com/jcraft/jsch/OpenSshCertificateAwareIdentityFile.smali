.class Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;
.super Ljava/lang/Object;
.source "OpenSshCertificateAwareIdentityFile.java"

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# static fields
.field static final MAX_KEY_TYPE_LENGTH:I = 0x64


# instance fields
.field private final certificate:Lcom/jcraft/jsch/OpenSshCertificate;

.field private final comment:Ljava/lang/String;

.field private final identity:Ljava/lang/String;

.field private final keyType:Ljava/lang/String;

.field private final kpair:Lcom/jcraft/jsch/KeyPair;

.field private final publicKeyBlob:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/jcraft/jsch/OpenSshCertificate;Lcom/jcraft/jsch/KeyPair;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->identity:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->certificate:Lcom/jcraft/jsch/OpenSshCertificate;

    .line 198
    iput-object p5, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    .line 199
    iput-object p6, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->comment:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->keyType:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->publicKeyBlob:[B

    .line 202
    return-void
.end method

.method static isOpenSshCertificateFile([B)Z
    .locals 3

    .line 70
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    return v0

    .line 75
    :cond_0
    invoke-static {p0, v0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->extractSpaceDelimitedString([BI)[B

    move-result-object p0

    .line 74
    nop

    .line 78
    if-eqz p0, :cond_2

    array-length v1, p0

    if-eqz v1, :cond_2

    .line 79
    array-length v1, p0

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 85
    invoke-static {v0}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->isCertificateKeyType(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 80
    :cond_2
    :goto_0
    return v0

    .line 71
    :cond_3
    return v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->fromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->fromFile(Ljava/lang/String;)[B

    move-result-object p1

    .line 105
    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-static {p0, v0, p1, p2}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 106
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->extractKeyType([B)[B

    move-result-object v0

    .line 134
    if-eqz v0, :cond_8

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 138
    :cond_0
    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->extractKeyData([B)[B

    move-result-object v1

    .line 137
    nop

    .line 139
    if-eqz v1, :cond_7

    array-length v2, v1

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 142
    :cond_1
    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->extractComment([B)[B

    move-result-object p2

    .line 144
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v7

    .line 145
    invoke-static {p3, v7}, Lcom/jcraft/jsch/OpenSshCertificateParser;->parse(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/OpenSshCertificate;

    move-result-object v8

    .line 147
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 148
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, v0}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    move-object v10, p2

    goto :goto_0

    :cond_2
    move-object v10, v0

    .line 151
    :goto_0
    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->getKeyType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 152
    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->getKeyType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->isValidNow()Z

    move-result p2

    if-nez p2, :cond_4

    .line 161
    invoke-virtual {p3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "certificate is not valid. Valid after: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->getValidAfter()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->toDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Valid before: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->getValidBefore()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->toDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    const/4 v1, 0x2

    invoke-interface {p2, v1, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 167
    :cond_4
    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->getCertificatePublicKey()[B

    move-result-object p2

    .line 168
    if-nez p2, :cond_5

    .line 169
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "Invalid certificate: missing public key"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_5
    invoke-static {p3, p1, p2}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 180
    new-instance p1, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;

    .line 181
    nop

    .line 180
    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/jcraft/jsch/OpenSshCertificate;Lcom/jcraft/jsch/KeyPair;Ljava/lang/String;)V

    return-object p1

    .line 153
    :cond_6
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Key type declared at the beginning of the certificate file, does not correspond to the encoded key type. Declared type: \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' - Encoded Key type: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->getKeyType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    const/4 p2, 0x3

    invoke-interface {p0, p2, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 156
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Certificate key type mismatch: declared type \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string p2, "\' does not match encoded type \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/jcraft/jsch/OpenSshCertificate;->getKeyType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_7
    :goto_2
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "Invalid certificate file: missing or empty key data"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_8
    :goto_3
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "Invalid certificate file: missing or empty key type"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :catch_0
    move-exception p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    nop

    .line 178
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected error parsing certificate: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 175
    :catch_1
    move-exception p0

    .line 175
    nop

    .line 176
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid certificate data: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 174
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid certificate format: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 246
    return-void
.end method

.method public getAlgName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->certificate:Lcom/jcraft/jsch/OpenSshCertificate;

    invoke-virtual {v0}, Lcom/jcraft/jsch/OpenSshCertificate;->getKeyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getComment()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->comment:Ljava/lang/String;

    return-object v0
.end method

.method getIdentity()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->identity:Ljava/lang/String;

    return-object v0
.end method

.method getKeyType()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method getKpair()Lcom/jcraft/jsch/KeyPair;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->publicKeyBlob:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 1

    .line 221
    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->getRawKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 222
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->keyType:Ljava/lang/String;

    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->getRawKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->keyType:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->getSignature([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public isEncrypted()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public setPassphrase([B)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    move-result p1

    return p1
.end method
