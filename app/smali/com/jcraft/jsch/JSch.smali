.class public Lcom/jcraft/jsch/JSch;
.super Ljava/lang/Object;
.source "JSch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/JSch$InstanceLogger;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_FILENAME_SUFFIX:Ljava/lang/String; = "-cert.pub"

.field static final DEVNULL:Lcom/jcraft/jsch/Logger;

.field public static final VERSION:Ljava/lang/String;

.field static config:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static logger:Lcom/jcraft/jsch/Logger;


# instance fields
.field private configRepository:Lcom/jcraft/jsch/ConfigRepository;

.field private defaultIdentityRepository:Lcom/jcraft/jsch/IdentityRepository;

.field private identityRepository:Lcom/jcraft/jsch/IdentityRepository;

.field final instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

.field private known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

.field private sessionPool:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    invoke-static {}, Lcom/jcraft/jsch/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/JSch;->VERSION:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    .line 48
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "kex"

    const-string v2, "jsch.kex"

    .line 49
    const-string v3, "mlkem768x25519-sha256,curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256"

    .line 48
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "server_host_key"

    const-string v2, "jsch.server_host_key"

    .line 51
    const-string v3, "ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256"

    .line 50
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ca_signature_algorithms"

    const-string v2, "jsch.ca_signature_algorithms"

    .line 55
    const-string v3, "ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256"

    .line 54
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "prefer_known_host_key_types"

    .line 57
    const-string v2, "jsch.prefer_known_host_key_types"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "enable_strict_kex"

    const-string v2, "jsch.enable_strict_kex"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "require_strict_kex"

    const-string v2, "jsch.require_strict_kex"

    const-string v3, "no"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "enable_server_sig_algs"

    .line 61
    const-string v2, "jsch.enable_server_sig_algs"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "enable_ext_info_in_auth"

    .line 63
    const-string v2, "jsch.enable_ext_info_in_auth"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "cipher.s2c"

    const-string v2, "jsch.cipher"

    .line 65
    const-string v3, "aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr"

    .line 64
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "cipher.c2s"

    const-string v2, "jsch.cipher"

    .line 67
    const-string v3, "aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr"

    .line 66
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mac.s2c"

    const-string v2, "jsch.mac"

    .line 69
    const-string v3, "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1"

    .line 68
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mac.c2s"

    const-string v2, "jsch.mac"

    .line 71
    const-string v3, "hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1"

    .line 70
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "compression.s2c"

    const-string v2, "jsch.compression"

    const-string v3, "none"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "compression.c2s"

    const-string v2, "jsch.compression"

    const-string v3, "none"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "lang.s2c"

    const-string v2, "jsch.lang"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "lang.c2s"

    const-string v2, "jsch.lang"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "dhgex_min"

    const-string v2, "jsch.dhgex_min"

    const-string v3, "2048"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "dhgex_max"

    const-string v2, "jsch.dhgex_max"

    const-string v3, "8192"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "dhgex_preferred"

    const-string v2, "jsch.dhgex_preferred"

    const-string v3, "3072"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "compression_level"

    const-string v2, "jsch.compression_level"

    const-string v3, "6"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha1"

    const-string v2, "com.jcraft.jsch.DHGEX1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group1-sha1"

    const-string v2, "com.jcraft.jsch.DHG1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group14-sha1"

    const-string v2, "com.jcraft.jsch.DHG14"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha256"

    const-string v2, "com.jcraft.jsch.DHGEX256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha224@ssh.com"

    const-string v2, "com.jcraft.jsch.DHGEX224"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha384@ssh.com"

    const-string v2, "com.jcraft.jsch.DHGEX384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha512@ssh.com"

    const-string v2, "com.jcraft.jsch.DHGEX512"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group14-sha256"

    const-string v2, "com.jcraft.jsch.DHG14256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group15-sha512"

    const-string v2, "com.jcraft.jsch.DHG15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group16-sha512"

    const-string v2, "com.jcraft.jsch.DHG16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group17-sha512"

    const-string v2, "com.jcraft.jsch.DHG17"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group18-sha512"

    const-string v2, "com.jcraft.jsch.DHG18"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group14-sha256@ssh.com"

    const-string v2, "com.jcraft.jsch.DHG14256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group14-sha224@ssh.com"

    const-string v2, "com.jcraft.jsch.DHG14224"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group15-sha256@ssh.com"

    const-string v2, "com.jcraft.jsch.DHG15256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group15-sha384@ssh.com"

    const-string v2, "com.jcraft.jsch.DHG15384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group16-sha512@ssh.com"

    const-string v2, "com.jcraft.jsch.DHG16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group16-sha384@ssh.com"

    const-string v2, "com.jcraft.jsch.DHG16384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group18-sha512@ssh.com"

    const-string v2, "com.jcraft.jsch.DHG18"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ecdsa-sha2-nistp256"

    const-string v2, "com.jcraft.jsch.jce.SignatureECDSA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ecdsa-sha2-nistp384"

    const-string v2, "com.jcraft.jsch.jce.SignatureECDSA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ecdsa-sha2-nistp521"

    const-string v2, "com.jcraft.jsch.jce.SignatureECDSA521"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp256"

    const-string v2, "com.jcraft.jsch.DHEC256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp384"

    const-string v2, "com.jcraft.jsch.DHEC384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp521"

    const-string v2, "com.jcraft.jsch.DHEC521"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp"

    const-string v2, "com.jcraft.jsch.jce.ECDHN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "curve25519-sha256"

    const-string v2, "com.jcraft.jsch.DH25519"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "curve25519-sha256@libssh.org"

    const-string v2, "com.jcraft.jsch.DH25519"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "curve448-sha512"

    const-string v2, "com.jcraft.jsch.DH448"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mlkem768x25519-sha256"

    const-string v2, "com.jcraft.jsch.DH25519MLKEM768"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mlkem768nistp256-sha256"

    const-string v2, "com.jcraft.jsch.DHEC256MLKEM768"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mlkem1024nistp384-sha384"

    const-string v2, "com.jcraft.jsch.DHEC384MLKEM1024"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sntrup761x25519-sha512"

    const-string v2, "com.jcraft.jsch.DH25519SNTRUP761"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sntrup761x25519-sha512@openssh.com"

    const-string v2, "com.jcraft.jsch.DH25519SNTRUP761"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/jcraft/jsch/JavaVersion;->getVersion()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 123
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mlkem768"

    const-string v2, "com.jcraft.jsch.jce.MLKEM768"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mlkem1024"

    const-string v2, "com.jcraft.jsch.jce.MLKEM1024"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mlkem768"

    const-string v2, "com.jcraft.jsch.bc.MLKEM768"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "mlkem1024"

    const-string v2, "com.jcraft.jsch.bc.MLKEM1024"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_0
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sntrup761"

    const-string v2, "com.jcraft.jsch.bc.SNTRUP761"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "dh"

    const-string v2, "com.jcraft.jsch.jce.DH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "3des-cbc"

    const-string v2, "com.jcraft.jsch.jce.TripleDESCBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "blowfish-cbc"

    const-string v2, "com.jcraft.jsch.jce.BlowfishCBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1-96"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA196"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha2-256"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha2-512"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-md5"

    const-string v2, "com.jcraft.jsch.jce.HMACMD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-md5-96"

    const-string v2, "com.jcraft.jsch.jce.HMACMD596"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1-etm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA1ETM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1-96-etm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA196ETM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha2-256-etm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA256ETM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha2-512-etm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA512ETM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-md5-etm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACMD5ETM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-md5-96-etm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACMD596ETM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha256-2@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA2562SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha224@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA224SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha256@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA256SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha384@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA384SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-sha512@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA512SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha-1"

    const-string v2, "com.jcraft.jsch.jce.SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha-224"

    const-string v2, "com.jcraft.jsch.jce.SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha-256"

    const-string v2, "com.jcraft.jsch.jce.SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha-384"

    const-string v2, "com.jcraft.jsch.jce.SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha-512"

    const-string v2, "com.jcraft.jsch.jce.SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "md5"

    const-string v2, "com.jcraft.jsch.jce.MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha1"

    const-string v2, "com.jcraft.jsch.jce.SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha224"

    const-string v2, "com.jcraft.jsch.jce.SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha256"

    const-string v2, "com.jcraft.jsch.jce.SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha384"

    const-string v2, "com.jcraft.jsch.jce.SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "sha512"

    const-string v2, "com.jcraft.jsch.jce.SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "signature.dss"

    const-string v2, "com.jcraft.jsch.jce.SignatureDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-rsa"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "rsa-sha2-256"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSASHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "rsa-sha2-512"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSASHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-rsa-sha224@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSASHA224SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-rsa-sha256@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSASHA256SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-rsa-sha384@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSASHA384SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-rsa-sha512@ssh.com"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSASHA512SSHCOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "keypairgen.dsa"

    const-string v2, "com.jcraft.jsch.jce.KeyPairGenDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "keypairgen.rsa"

    const-string v2, "com.jcraft.jsch.jce.KeyPairGenRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "keypairgen.ecdsa"

    const-string v2, "com.jcraft.jsch.jce.KeyPairGenECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "random"

    const-string v2, "com.jcraft.jsch.jce.Random"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-ripemd160"

    const-string v2, "com.jcraft.jsch.bc.HMACRIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-ripemd160@openssh.com"

    const-string v2, "com.jcraft.jsch.bc.HMACRIPEMD160OpenSSH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "hmac-ripemd160-etm@openssh.com"

    const-string v2, "com.jcraft.jsch.bc.HMACRIPEMD160ETM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "none"

    const-string v2, "com.jcraft.jsch.CipherNone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes128-gcm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.AES128GCM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes256-gcm@openssh.com"

    const-string v2, "com.jcraft.jsch.jce.AES256GCM"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes128-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES128CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes192-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES192CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes256-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES256CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "rijndael-cbc@lysator.liu.se"

    const-string v2, "com.jcraft.jsch.jce.AES256CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "chacha20-poly1305@openssh.com"

    const-string v2, "com.jcraft.jsch.bc.ChaCha20Poly1305"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "cast128-cbc"

    const-string v2, "com.jcraft.jsch.bc.CAST128CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "cast128-ctr"

    const-string v2, "com.jcraft.jsch.bc.CAST128CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "twofish128-cbc"

    const-string v2, "com.jcraft.jsch.bc.Twofish128CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "twofish192-cbc"

    const-string v2, "com.jcraft.jsch.bc.Twofish192CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "twofish256-cbc"

    const-string v2, "com.jcraft.jsch.bc.Twofish256CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "twofish-cbc"

    const-string v2, "com.jcraft.jsch.bc.Twofish256CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "twofish128-ctr"

    const-string v2, "com.jcraft.jsch.bc.Twofish128CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "twofish192-ctr"

    const-string v2, "com.jcraft.jsch.bc.Twofish192CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "twofish256-ctr"

    const-string v2, "com.jcraft.jsch.bc.Twofish256CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "seed-cbc@ssh.com"

    const-string v2, "com.jcraft.jsch.bc.SEEDCBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes128-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES128CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes192-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES192CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "aes256-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES256CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "3des-ctr"

    const-string v2, "com.jcraft.jsch.jce.TripleDESCTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "blowfish-ctr"

    const-string v2, "com.jcraft.jsch.jce.BlowfishCTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "arcfour"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "arcfour128"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR128"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "arcfour256"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "userauth.none"

    const-string v2, "com.jcraft.jsch.UserAuthNone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "userauth.password"

    const-string v2, "com.jcraft.jsch.UserAuthPassword"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "userauth.keyboard-interactive"

    const-string v2, "com.jcraft.jsch.UserAuthKeyboardInteractive"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "userauth.publickey"

    const-string v2, "com.jcraft.jsch.UserAuthPublicKey"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "userauth.gssapi-with-mic"

    const-string v2, "com.jcraft.jsch.UserAuthGSSAPIWithMIC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "gssapi-with-mic.krb5"

    const-string v2, "com.jcraft.jsch.jgss.GSSContextKrb5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "zlib"

    const-string v2, "com.jcraft.jsch.jzlib.Compression"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "zlib@openssh.com"

    const-string v2, "com.jcraft.jsch.jzlib.Compression"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "pbkdf2"

    const-string v2, "com.jcraft.jsch.jce.PBKDF2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "bcrypt"

    const-string v2, "com.jcraft.jsch.jbcrypt.JBCrypt"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "Argon2d"

    const-string v2, "com.jcraft.jsch.bc.Argon2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "Argon2i"

    const-string v2, "com.jcraft.jsch.bc.Argon2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "Argon2id"

    const-string v2, "com.jcraft.jsch.bc.Argon2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "scrypt"

    const-string v2, "com.jcraft.jsch.bc.SCrypt"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/jcraft/jsch/JavaVersion;->getVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 228
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "xdh"

    const-string v2, "com.jcraft.jsch.jce.XDH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    goto :goto_1

    .line 230
    :cond_1
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "xdh"

    const-string v2, "com.jcraft.jsch.bc.XDH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_1
    invoke-static {}, Lcom/jcraft/jsch/JavaVersion;->getVersion()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    .line 234
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "keypairgen.eddsa"

    const-string v2, "com.jcraft.jsch.jce.KeyPairGenEdDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-ed25519"

    const-string v2, "com.jcraft.jsch.jce.SignatureEd25519"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-ed448"

    const-string v2, "com.jcraft.jsch.jce.SignatureEd448"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    goto :goto_2

    .line 238
    :cond_2
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "keypairgen.eddsa"

    const-string v2, "com.jcraft.jsch.bc.KeyPairGenEdDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-ed25519"

    const-string v2, "com.jcraft.jsch.bc.SignatureEd25519"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ssh-ed448"

    const-string v2, "com.jcraft.jsch.bc.SignatureEd448"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_2
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "keypairgen_fromprivate.eddsa"

    const-string v2, "com.jcraft.jsch.bc.KeyPairGenEdDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "StrictHostKeyChecking"

    const-string v2, "ask"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "HashKnownHosts"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "PreferredAuthentications"

    const-string v2, "jsch.preferred_authentications"

    .line 248
    const-string v3, "gssapi-with-mic,publickey,keyboard-interactive,password"

    .line 247
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "PubkeyAcceptedAlgorithms"

    const-string v2, "jsch.client_pubkey"

    .line 250
    const-string v3, "ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-ed25519,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,rsa-sha2-512,rsa-sha2-256"

    .line 249
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "enable_pubkey_auth_query"

    .line 252
    const-string v2, "jsch.enable_pubkey_auth_query"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "try_additional_pubkey_algorithms"

    .line 254
    const-string v2, "jsch.try_additional_pubkey_algorithms"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "enable_auth_none"

    const-string v2, "jsch.enable_auth_none"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "use_sftp_write_flush_workaround"

    .line 257
    const-string v2, "jsch.use_sftp_write_flush_workaround"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "CheckCiphers"

    .line 260
    const-string v2, "jsch.check_ciphers"

    const-string v3, "chacha20-poly1305@openssh.com"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "CheckMacs"

    const-string v2, "jsch.check_macs"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "CheckKexes"

    const-string v2, "jsch.check_kexes"

    .line 263
    const-string v3, "mlkem768x25519-sha256,mlkem768nistp256-sha256,mlkem1024nistp384-sha384,sntrup761x25519-sha512,sntrup761x25519-sha512@openssh.com,curve25519-sha256,curve25519-sha256@libssh.org,curve448-sha512"

    .line 262
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "CheckSignatures"

    .line 265
    const-string v2, "jsch.check_signatures"

    const-string v3, "ssh-ed25519,ssh-ed448"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "FingerprintHash"

    const-string v2, "jsch.fingerprint_hash"

    const-string v3, "sha256"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "MaxAuthTries"

    const-string v2, "jsch.max_auth_tries"

    const-string v3, "6"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "ClearAllForwardings"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v1, "host_certificate_to_key_fallback"

    .line 278
    const-string v2, "jsch.host_certificate_to_key_fallback"

    const-string v3, "yes"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v0, Lcom/jcraft/jsch/JSch$1;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch$1;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/JSch;->DEVNULL:Lcom/jcraft/jsch/Logger;

    .line 330
    sget-object v0, Lcom/jcraft/jsch/JSch;->DEVNULL:Lcom/jcraft/jsch/Logger;

    sput-object v0, Lcom/jcraft/jsch/JSch;->logger:Lcom/jcraft/jsch/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Lcom/jcraft/jsch/JSch$InstanceLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSch$InstanceLogger;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 283
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->sessionPool:Ljava/util/Vector;

    .line 285
    new-instance v0, Lcom/jcraft/jsch/LocalIdentityRepository;

    iget-object v2, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/LocalIdentityRepository;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->defaultIdentityRepository:Lcom/jcraft/jsch/IdentityRepository;

    .line 287
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->defaultIdentityRepository:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    .line 289
    iput-object v1, p0, Lcom/jcraft/jsch/JSch;->configRepository:Lcom/jcraft/jsch/ConfigRepository;

    .line 319
    iput-object v1, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    .line 332
    return-void
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 665
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    monitor-enter v0

    .line 666
    :try_start_0
    const-string v1, "PubkeyAcceptedKeyTypes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    const-string p0, "PubkeyAcceptedAlgorithms"

    .line 669
    :cond_0
    sget-object v1, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 665
    :catchall_0
    move-exception p0

    .line 665
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getConfig()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 708
    sget-object v1, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    monitor-enter v1

    .line 709
    :try_start_0
    sget-object v2, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 709
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 708
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 710
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 711
    const-string v5, "PubkeyAcceptedKeyTypes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 712
    const-string v4, "PubkeyAcceptedAlgorithms"

    .line 714
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getLogger()Lcom/jcraft/jsch/Logger;
    .locals 1

    .line 759
    sget-object v0, Lcom/jcraft/jsch/JSch;->logger:Lcom/jcraft/jsch/Logger;

    return-object v0
.end method

.method public static setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 696
    const-string v0, "PubkeyAcceptedKeyTypes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    sget-object p0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    const-string v0, "PubkeyAcceptedAlgorithms"

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void

    .line 699
    :cond_0
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    return-void
.end method

.method public static setConfig(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 679
    sget-object v0, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    monitor-enter v0

    .line 680
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 680
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    monitor-exit v0

    .line 687
    return-void

    .line 681
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 683
    const-string v3, "PubkeyAcceptedKeyTypes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PubkeyAcceptedAlgorithms"

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 682
    :goto_1
    nop

    .line 684
    sget-object v4, Lcom/jcraft/jsch/JSch;->config:Ljava/util/Hashtable;

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLogger(Lcom/jcraft/jsch/Logger;)V
    .locals 0

    .line 727
    if-nez p0, :cond_0

    .line 728
    sget-object p0, Lcom/jcraft/jsch/JSch;->DEVNULL:Lcom/jcraft/jsch/Logger;

    .line 729
    :cond_0
    sput-object p0, Lcom/jcraft/jsch/JSch;->logger:Lcom/jcraft/jsch/Logger;

    .line 730
    return-void
.end method


# virtual methods
.method public addIdentity(Lcom/jcraft/jsch/Identity;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 579
    if-eqz p2, :cond_1

    .line 581
    :try_start_0
    array-length v0, p2

    new-array v0, v0, [B

    .line 582
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 583
    nop

    .line 584
    :try_start_1
    invoke-interface {p1, v0}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z

    move-result p2

    if-nez p2, :cond_0

    .line 585
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "Incorrect passphrase provided."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_0
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    goto :goto_1

    .line 587
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 587
    :catchall_1
    move-exception p1

    move-object v0, p2

    .line 587
    :goto_0
    nop

    .line 588
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 589
    throw p1

    .line 592
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    instance-of p2, p2, Lcom/jcraft/jsch/LocalIdentityRepository;

    if-eqz p2, :cond_2

    .line 593
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p2, Lcom/jcraft/jsch/LocalIdentityRepository;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/LocalIdentityRepository;->add(Lcom/jcraft/jsch/Identity;)V

    .line 594
    return-void

    :cond_2
    instance-of p2, p1, Lcom/jcraft/jsch/IdentityFile;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result p2

    if-nez p2, :cond_3

    .line 595
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->getKeyPair()Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair;->forSSHAgent()[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    .line 596
    return-void

    .line 597
    :cond_3
    monitor-enter p0

    .line 598
    :try_start_2
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    instance-of p2, p2, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    if-nez p2, :cond_4

    .line 599
    new-instance p2, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    invoke-direct {p2, v0}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;)V

    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/JSch;->setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V

    .line 597
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 602
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p2, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->add(Lcom/jcraft/jsch/Identity;)V

    .line 604
    return-void

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public addIdentity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B)V

    .line 467
    return-void
.end method

.method public addIdentity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    nop

    .line 482
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 483
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 485
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B)V

    .line 486
    if-eqz v0, :cond_1

    .line 487
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 488
    :cond_1
    return-void
.end method

.method public addIdentity(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 514
    nop

    .line 515
    nop

    .line 520
    if-nez p2, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-cert.pub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 527
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 529
    :try_start_0
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->fromFile(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 533
    if-eqz p2, :cond_1

    .line 534
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 540
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 541
    invoke-static {v1}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->isOpenSshCertificateFile([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    iget-object p2, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p1, v0, p2}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;

    move-result-object p1

    .line 543
    goto :goto_2

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p1, p2, v0}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 547
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/jcraft/jsch/JSch;->addIdentity(Lcom/jcraft/jsch/Identity;[B)V

    .line 548
    return-void
.end method

.method public addIdentity(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 501
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/JSch;->addIdentity(Lcom/jcraft/jsch/Identity;[B)V

    .line 502
    return-void
.end method

.method public addIdentity(Ljava/lang/String;[B[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 562
    invoke-static {p3}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->isOpenSshCertificateFile([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p1, p2, p3, v0}, Lcom/jcraft/jsch/OpenSshCertificateAwareIdentityFile;->newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/Identity;

    move-result-object p1

    .line 564
    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p1, p2, p3, v0}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 567
    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/jcraft/jsch/JSch;->addIdentity(Lcom/jcraft/jsch/Identity;[B)V

    .line 568
    return-void
.end method

.method protected addSession(Lcom/jcraft/jsch/Session;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sessionPool:Ljava/util/Vector;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->sessionPool:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 388
    monitor-exit v0

    .line 391
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->configRepository:Lcom/jcraft/jsch/ConfigRepository;

    return-object v0
.end method

.method public getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    return-object v0
.end method

.method public getIdentityNames()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 641
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v1}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v1

    .line 642
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 646
    return-object v0

    .line 643
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Identity;

    .line 644
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;
    .locals 1

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstanceLogger()Lcom/jcraft/jsch/Logger;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch$InstanceLogger;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p1

    return-object p1
.end method

.method public getSession(Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 363
    const/16 v0, 0x16

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p1

    return-object p1
.end method

.method public getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 380
    if-nez p2, :cond_0

    .line 381
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "host must not be null."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Session;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jcraft/jsch/Session;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    return-object v0
.end method

.method public removeAllIdentity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    .line 656
    return-void
.end method

.method public removeIdentity(Lcom/jcraft/jsch/Identity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    .line 631
    return-void
.end method

.method public removeIdentity(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v0

    .line 612
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 621
    return-void

    .line 613
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 614
    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 615
    goto :goto_1

    .line 616
    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    instance-of v3, v3, Lcom/jcraft/jsch/LocalIdentityRepository;

    if-eqz v3, :cond_2

    .line 617
    iget-object v3, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    check-cast v3, Lcom/jcraft/jsch/LocalIdentityRepository;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/LocalIdentityRepository;->remove(Lcom/jcraft/jsch/Identity;)V

    .line 618
    goto :goto_1

    .line 619
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    .line 612
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected removeSession(Lcom/jcraft/jsch/Session;)Z
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sessionPool:Ljava/util/Vector;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->sessionPool:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 394
    :catchall_0
    move-exception p1

    .line 394
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConfigRepository(Lcom/jcraft/jsch/ConfigRepository;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->configRepository:Lcom/jcraft/jsch/ConfigRepository;

    .line 317
    return-void
.end method

.method public setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    .line 408
    return-void
.end method

.method public declared-synchronized setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 0

    monitor-enter p0

    .line 300
    if-nez p1, :cond_0

    .line 301
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/JSch;->defaultIdentityRepository:Lcom/jcraft/jsch/IdentityRepository;

    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    .line 302
    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setInstanceLogger(Lcom/jcraft/jsch/Logger;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/JSch$InstanceLogger;->setLogger(Lcom/jcraft/jsch/Logger;)V

    .line 750
    return-void
.end method

.method public setKnownHosts(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    instance-of v0, v0, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    check-cast v1, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/io/InputStream;)V

    .line 438
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 442
    :cond_1
    return-void
.end method

.method public setKnownHosts(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    instance-of v0, v0, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->known_hosts:Lcom/jcraft/jsch/HostKeyRepository;

    check-cast v1, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/lang/String;)V

    .line 421
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 425
    :cond_1
    return-void
.end method
