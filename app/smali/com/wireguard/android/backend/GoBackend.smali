.class public Lcom/wireguard/android/backend/GoBackend;
.super Ljava/lang/Object;
.source "GoBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wireguard/android/backend/GoBackend$WgConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "notavpn/GoBackend"

.field private static loaded:Z

.field private static loadedVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wireguard/android/backend/GoBackend;->loaded:Z

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/wireguard/android/backend/GoBackend;->loadedVersion:Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/wireguard/android/backend/GoBackend;->loaded:Z

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    const-string v0, "wg-go"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wireguard/android/backend/GoBackend;->loaded:Z

    .line 50
    return-void

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const-string v1, "notavpn/GoBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Static load failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConfig(Lcom/wireguard/android/backend/GoBackend$WgConfig;)Ljava/lang/String;
    .locals 6

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v1, "private_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->privateKeyHex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "public_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->peerPublicKeyHex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->presharedKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->presharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const-string v2, "preshared_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->presharedKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    const-string v2, "endpoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    iget-object p0, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->allowedIps:[Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 87
    const-string p0, "persistent_keepalive_interval=25\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object v4, p0, v3

    const-string v5, "allowed_ip="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 7

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static derivePublicKey([B)[B
    .locals 10

    .line 102
    const/16 v0, 0x20

    :try_start_0
    const-string v1, "X25519"

    .line 103
    new-instance v2, Ljava/security/spec/NamedParameterSpec;

    invoke-direct {v2, v1}, Ljava/security/spec/NamedParameterSpec;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v1, "XDH"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 105
    new-instance v4, Ljava/security/spec/XECPrivateKeySpec;

    invoke-direct {v4, v2, p0}, Ljava/security/spec/XECPrivateKeySpec;-><init>(Ljava/security/spec/AlgorithmParameterSpec;[B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 106
    const-wide/16 v5, 0x9

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 107
    new-instance v6, Ljava/security/spec/XECPublicKeySpec;

    invoke-direct {v6, v2, v5}, Ljava/security/spec/XECPublicKeySpec;-><init>(Ljava/security/spec/AlgorithmParameterSpec;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    .line 108
    const-string v1, "XDH"

    invoke-static {v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 109
    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 110
    invoke-virtual {v8}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object v2

    .line 109
    :catch_0
    move-exception v1

    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "X25519 public key derivation failed: no working keypair could be produced (device JCA provider lacks XDH support)"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static findNewestCachedSo(Landroid/content/Context;)Ljava/io/File;
    .locals 8

    .line 57
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    .line 59
    sget-object v1, Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;->INSTANCE:Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 61
    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_1

    return-object v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 63
    array-length v2, p0

    :goto_0
    if-lt v0, v2, :cond_2

    .line 64
    move-object v0, v1

    return-object v0

    :cond_2
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    move-object v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static generateKeyPair()[Ljava/lang/String;
    .locals 4

    .line 93
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 94
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 95
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v2, 0x1f

    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    aget-byte v3, v0, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 96
    invoke-static {v0}, Lcom/wireguard/android/backend/GoBackend;->derivePublicKey([B)[B

    move-result-object v2

    .line 97
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0}, Lcom/wireguard/android/backend/GoBackend;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2}, Lcom/wireguard/android/backend/GoBackend;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    return-object v3
.end method

.method public static getLoadedVersion()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/wireguard/android/backend/GoBackend;->loadedVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 19
    sget-boolean v0, Lcom/wireguard/android/backend/GoBackend;->loaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/wireguard/android/backend/GoBackend;->findNewestCachedSo(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 22
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 24
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 25
    sput-boolean v0, Lcom/wireguard/android/backend/GoBackend;->loaded:Z

    .line 26
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->wgVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wireguard/android/backend/GoBackend;->loadedVersion:Ljava/lang/String;

    .line 27
    const-string v1, "notavpn/GoBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loaded cached .so: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  ver="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/wireguard/android/backend/GoBackend;->loadedVersion:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 29
    nop

    .line 30
    const-string v1, "notavpn/GoBackend"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cached .so failed, falling back to embedded: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    :try_start_1
    const-string p0, "wg-go"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    sput-boolean v0, Lcom/wireguard/android/backend/GoBackend;->loaded:Z

    .line 37
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->wgVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/wireguard/android/backend/GoBackend;->loadedVersion:Ljava/lang/String;

    .line 38
    const-string p0, "notavpn/GoBackend"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded embedded libwg-go.so  ver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/wireguard/android/backend/GoBackend;->loadedVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    :catch_1
    move-exception p0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    const-string v0, "notavpn/GoBackend"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load libwg-go.so: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/wireguard/android/backend/GoBackend;->loaded:Z

    return v0
.end method

.method static synthetic lambda$0(Ljava/io/File;)Z
    .locals 7

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libwg-go-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".so"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x186a0

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static native wgGetConfig(I)Ljava/lang/String;
.end method

.method public static native wgGetSocketV4(I)I
.end method

.method public static native wgGetSocketV6(I)I
.end method

.method public static native wgTurnOff(I)V
.end method

.method public static native wgTurnOn(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native wgVersion()Ljava/lang/String;
.end method
