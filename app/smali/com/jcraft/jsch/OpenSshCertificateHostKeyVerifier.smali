.class Lcom/jcraft/jsch/OpenSshCertificateHostKeyVerifier;
.super Ljava/lang/Object;
.source "OpenSshCertificateHostKeyVerifier.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkHostCertificate(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/OpenSshCertificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getSignatureKey()[B

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    const-string p1, "Cannot verify host certificate: session host is null"

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_0
    nop

    .line 50
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getHostKeyAlias()Ljava/lang/String;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    nop

    .line 53
    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getPort()I

    move-result v3

    const/16 v4, 0x16

    if-eq v3, v4, :cond_2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v4

    .line 63
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getCertificatePublicKey()[B

    move-result-object v5

    .line 64
    if-eqz v5, :cond_3

    .line 65
    invoke-static {v4, v5}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isCertificateKeyRevoked(Lcom/jcraft/jsch/HostKeyRepository;[B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    new-instance p0, Lcom/jcraft/jsch/JSchRevokedHostKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejected certificate \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, "\': host certificate public key is marked as revoked for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchRevokedHostKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_3
    nop

    .line 72
    nop

    .line 71
    invoke-static {v4, v3, v0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isCertificateSignedByTrustedCA(Lcom/jcraft/jsch/HostKeyRepository;Ljava/lang/String;[B)Z

    move-result v4

    .line 74
    if-nez v4, :cond_4

    .line 75
    new-instance p0, Lcom/jcraft/jsch/JSchUnknownCAKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejected certificate \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string p1, "Certification Authority not in the known hosts or revoked for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchUnknownCAKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_4
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 80
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getId()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->isHostCertificate()Z

    move-result v4

    if-nez v4, :cond_5

    .line 85
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "rejected HostKey: certificate id=\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a host certificate. Host:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_5
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->isValidNow()Z

    move-result v4

    if-nez v4, :cond_6

    .line 90
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "rejected HostKey: certificate not valid (expired or not yet valid) for id:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_6
    invoke-static {p1, v0, p0}, Lcom/jcraft/jsch/OpenSshCertificateHostKeyVerifier;->checkSignature(Lcom/jcraft/jsch/OpenSshCertificate;Ljava/lang/String;Lcom/jcraft/jsch/Session;)V

    .line 97
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getPrincipals()Ljava/util/Collection;

    move-result-object p0

    .line 101
    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move-object v2, v1

    .line 102
    :goto_1
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 108
    :cond_8
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 111
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rejected HostKey: invalid principal \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "\', allowed principals: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-direct {p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_9
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getCriticalOptions()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 117
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rejected HostKey: unrecognized critical options "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getCriticalOptions()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_a
    return-void

    .line 103
    :cond_b
    :goto_2
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "rejected HostKey: invalid principal \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, "\', allowed principals list is null or empty."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkSignature(Lcom/jcraft/jsch/OpenSshCertificate;Ljava/lang/String;Lcom/jcraft/jsch/Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 137
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/OpenSshCertificateHostKeyVerifier;->getSignatureWrapper(Lcom/jcraft/jsch/OpenSshCertificate;Ljava/lang/String;Lcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/SignatureWrapper;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificate;->getSignatureKey()[B

    move-result-object p2

    invoke-static {p2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->parsePublicKeyComponents([B)[[B

    move-result-object p2

    .line 138
    nop

    .line 142
    :try_start_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/SignatureWrapper;->init()V

    .line 143
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/SignatureWrapper;->setPubKey([[B)V

    .line 144
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificate;->getMessage()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/SignatureWrapper;->update([B)V

    .line 145
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificate;->getSignature()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/SignatureWrapper;->verify([B)Z

    move-result p0

    .line 146
    nop

    .line 150
    if-nez p0, :cond_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    new-instance p0, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 152
    const-string p1, "rejected HostKey: signature verification failed"

    .line 151
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 147
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "invalid signature key"

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static getSignatureWrapper(Lcom/jcraft/jsch/OpenSshCertificate;Ljava/lang/String;Lcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/SignatureWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/jcraft/jsch/OpenSshCertificate;->getSignature()[B

    move-result-object p0

    .line 175
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 176
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p0

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance p2, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rejected HostKey: signature verification failed, signature algorithm: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' - CA public Key algorithm: \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-direct {p2, p0}, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 185
    :cond_0
    invoke-virtual {p2, p0}, Lcom/jcraft/jsch/Session;->checkCASignatureAlgorithm(Ljava/lang/String;)V

    .line 187
    new-instance p1, Lcom/jcraft/jsch/SignatureWrapper;

    invoke-direct {p1, p0, p2}, Lcom/jcraft/jsch/SignatureWrapper;-><init>(Ljava/lang/String;Lcom/jcraft/jsch/Session;)V

    return-object p1
.end method
