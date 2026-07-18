.class final Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;
.super Ljava/lang/Object;
.source "OpenSshCertificateKeyTypes.java"


# static fields
.field static final CERT_SUFFIX:Ljava/lang/String; = "-cert-v01@openssh.com"

.field static final ECDSA_SHA2_NISTP256_CERT_V01:Ljava/lang/String; = "ecdsa-sha2-nistp256-cert-v01@openssh.com"

.field static final ECDSA_SHA2_NISTP384_CERT_V01:Ljava/lang/String; = "ecdsa-sha2-nistp384-cert-v01@openssh.com"

.field static final ECDSA_SHA2_NISTP521_CERT_V01:Ljava/lang/String; = "ecdsa-sha2-nistp521-cert-v01@openssh.com"

.field static final RSA_SHA2_256_CERT_V01:Ljava/lang/String; = "rsa-sha2-256-cert-v01@openssh.com"

.field static final RSA_SHA2_512_CERT_V01:Ljava/lang/String; = "rsa-sha2-512-cert-v01@openssh.com"

.field static final SSH_DSS_CERT_V01:Ljava/lang/String; = "ssh-dss-cert-v01@openssh.com"

.field static final SSH_ED25519_CERT_V01:Ljava/lang/String; = "ssh-ed25519-cert-v01@openssh.com"

.field static final SSH_ED448_CERT_V01:Ljava/lang/String; = "ssh-ed448-cert-v01@openssh.com"

.field static final SSH_RSA_CERT_V01:Ljava/lang/String; = "ssh-rsa-cert-v01@openssh.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static getBaseKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 115
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "-cert-v01@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "-cert-v01@openssh.com"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_1
    return-object p0

    .line 116
    :cond_2
    :goto_0
    move-object p0, v0

    return-object p0
.end method

.method static getCertificateKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 135
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 136
    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    return-object v0

    :sswitch_0
    const-string v1, "ecdsa-sha2-nistp521"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    .line 152
    :cond_1
    const-string v0, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    return-object v0

    :sswitch_1
    const-string v1, "ecdsa-sha2-nistp384"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 150
    :cond_2
    const-string v0, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    return-object v0

    :sswitch_2
    const-string v1, "ecdsa-sha2-nistp256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 148
    :cond_3
    const-string v0, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    return-object v0

    :sswitch_3
    const-string v1, "ssh-ed448"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    .line 156
    :cond_4
    const-string v0, "ssh-ed448-cert-v01@openssh.com"

    return-object v0

    :sswitch_4
    const-string v1, "rsa-sha2-512"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    .line 144
    :cond_5
    const-string v0, "rsa-sha2-512-cert-v01@openssh.com"

    return-object v0

    :sswitch_5
    const-string v1, "rsa-sha2-256"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return-object v0

    .line 142
    :cond_6
    const-string v0, "rsa-sha2-256-cert-v01@openssh.com"

    return-object v0

    :sswitch_6
    const-string v1, "ssh-ed25519"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return-object v0

    .line 154
    :cond_7
    const-string v0, "ssh-ed25519-cert-v01@openssh.com"

    return-object v0

    :sswitch_7
    const-string v1, "ssh-rsa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return-object v0

    .line 140
    :cond_8
    const-string v0, "ssh-rsa-cert-v01@openssh.com"

    return-object v0

    :sswitch_8
    const-string v1, "ssh-dss"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return-object v0

    .line 146
    :cond_9
    const-string v0, "ssh-dss-cert-v01@openssh.com"

    return-object v0

    .line 158
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72868b81 -> :sswitch_8
        -0x72865705 -> :sswitch_7
        -0x55906c0a -> :sswitch_6
        -0x40419207 -> :sswitch_5
        -0x40418744 -> :sswitch_4
        0x14f4b0b4 -> :sswitch_3
        0x55b5c26d -> :sswitch_2
        0x55b5c689 -> :sswitch_1
        0x55b5cd4e -> :sswitch_0
    .end sparse-switch
.end method

.method static isCertificateKeyType(Ljava/lang/String;)Z
    .locals 3

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 86
    return v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    return v1

    :sswitch_0
    const-string v2, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_1
    const-string v2, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_2
    const-string v2, "ssh-dss-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_3
    const-string v2, "rsa-sha2-256-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_4
    const-string v2, "ssh-ed448-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_5
    const-string v2, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_6
    const-string v2, "rsa-sha2-512-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_7
    const-string v2, "ssh-ed25519-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :sswitch_8
    const-string v2, "ssh-rsa-cert-v01@openssh.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 98
    :cond_1
    move v1, v0

    return v1

    .line 100
    return v1

    nop

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
