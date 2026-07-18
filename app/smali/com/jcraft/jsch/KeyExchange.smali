.class public abstract Lcom/jcraft/jsch/KeyExchange;
.super Ljava/lang/Object;
.source "KeyExchange.java"


# static fields
.field static final PROPOSAL_COMP_ALGS_CTOS:I = 0x6

.field static final PROPOSAL_COMP_ALGS_STOC:I = 0x7

.field static final PROPOSAL_ENC_ALGS_CTOS:I = 0x2

.field static final PROPOSAL_ENC_ALGS_STOC:I = 0x3

.field static final PROPOSAL_KEX_ALGS:I = 0x0

.field static final PROPOSAL_LANG_CTOS:I = 0x8

.field static final PROPOSAL_LANG_STOC:I = 0x9

.field static final PROPOSAL_MAC_ALGS_CTOS:I = 0x4

.field static final PROPOSAL_MAC_ALGS_STOC:I = 0x5

.field static final PROPOSAL_MAX:I = 0xa

.field static final PROPOSAL_NAMES:[Ljava/lang/String;

.field static final PROPOSAL_SERVER_HOST_KEY_ALGS:I = 0x1

.field public static final STATE_END:I

.field static enc_c2s:Ljava/lang/String;

.field static enc_s2c:Ljava/lang/String;

.field static kex:Ljava/lang/String;

.field static lang_c2s:Ljava/lang/String;

.field static lang_s2c:Ljava/lang/String;

.field static mac_c2s:Ljava/lang/String;

.field static mac_s2c:Ljava/lang/String;

.field static server_host_key:Ljava/lang/String;


# instance fields
.field protected final DSS:I

.field protected final ECDSA:I

.field protected final EDDSA:I

.field protected H:[B

.field protected K:[B

.field protected K_S:[B

.field protected final RSA:I

.field protected hostKeyCertificate:Lcom/jcraft/jsch/OpenSshCertificate;

.field private key_alg_name:Ljava/lang/String;

.field protected session:Lcom/jcraft/jsch/Session;

.field protected sha:Lcom/jcraft/jsch/HASH;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    const-string v0, "KEX algorithms"

    const-string v1, "host key algorithms"

    const-string v2, "ciphers c2s"

    const-string v3, "ciphers s2c"

    const-string v4, "MACs c2s"

    .line 46
    const-string v5, "MACs s2c"

    const-string v6, "compression c2s"

    const-string v7, "compression s2c"

    const-string v8, "languages c2s"

    const-string v9, "languages s2c"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->PROPOSAL_NAMES:[Ljava/lang/String;

    .line 52
    const-string v0, "diffie-hellman-group1-sha1"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->kex:Ljava/lang/String;

    .line 53
    const-string v0, "ssh-rsa,ssh-dss"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->server_host_key:Ljava/lang/String;

    .line 54
    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->enc_c2s:Ljava/lang/String;

    .line 55
    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->enc_s2c:Ljava/lang/String;

    .line 56
    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->mac_c2s:Ljava/lang/String;

    .line 58
    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->mac_s2c:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->lang_c2s:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->lang_s2c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    .line 67
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    .line 68
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    .line 69
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    .line 70
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    .line 71
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->hostKeyCertificate:Lcom/jcraft/jsch/OpenSshCertificate;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/KeyExchange;->RSA:I

    .line 90
    const/4 v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/KeyExchange;->DSS:I

    .line 91
    const/4 v1, 0x2

    iput v1, p0, Lcom/jcraft/jsch/KeyExchange;->ECDSA:I

    .line 92
    const/4 v1, 0x3

    iput v1, p0, Lcom/jcraft/jsch/KeyExchange;->EDDSA:I

    .line 93
    iput v0, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->key_alg_name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method protected static guess(Lcom/jcraft/jsch/Session;[B[B)[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    .line 112
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 113
    const/16 p1, 0x11

    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    .line 114
    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3, p2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 115
    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    .line 117
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v4, 0x1

    invoke-interface {p2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    .line 118
    move p2, v5

    :goto_0
    if-lt p2, v0, :cond_1

    .line 122
    move p2, v5

    :goto_1
    if-lt p2, v0, :cond_0

    .line 126
    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    .line 127
    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    goto :goto_2

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "client proposal: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/jcraft/jsch/KeyExchange;->PROPOSAL_NAMES:[Ljava/lang/String;

    aget-object v8, v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-interface {v6, v4, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 122
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "server proposal: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/jcraft/jsch/KeyExchange;->PROPOSAL_NAMES:[Ljava/lang/String;

    aget-object v8, v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-interface {v6, v4, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 118
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 130
    :cond_2
    :goto_2
    move p1, v5

    :goto_3
    if-lt p1, v0, :cond_8

    .line 166
    nop

    .line 167
    nop

    .line 170
    const/4 p1, 0x3

    :try_start_0
    aget-object p2, v1, p1

    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 169
    nop

    .line 171
    new-array v0, v5, [Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/Cipher;

    .line 172
    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result p2

    .line 173
    const/4 v0, 0x0

    const/4 v2, 0x5

    if-eqz p2, :cond_3

    .line 174
    aput-object v0, v1, v2

    .line 178
    :cond_3
    const/4 v3, 0x2

    aget-object v6, v1, v3

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 177
    nop

    .line 179
    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/Cipher;

    .line 180
    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v6

    .line 181
    const/4 v7, 0x4

    if-eqz v6, :cond_4

    .line 182
    aput-object v0, v1, v7

    .line 184
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "kex: algorithm: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "kex: host key algorithm: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v1, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-interface {v0, v4, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "kex: server->client cipher: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, v1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MAC: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    if-eqz p2, :cond_5

    const-string p1, "<implicit>"

    goto :goto_4

    :cond_5
    aget-object p1, v1, v2

    :goto_4
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " compression: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/4 p1, 0x7

    aget-object p1, v1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-interface {v0, v4, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p0

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "kex: client->server cipher: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, v1, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " MAC: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    if-eqz v6, :cond_6

    const-string p2, "<implicit>"

    goto :goto_5

    :cond_6
    aget-object p2, v1, v7

    :goto_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " compression: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/4 p2, 0x6

    aget-object p2, v1, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-interface {p0, v4, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 202
    :cond_7
    return-object v1

    :catch_0
    move-exception p0

    .line 185
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 131
    :cond_8
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p2

    .line 132
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    .line 133
    nop

    .line 134
    nop

    .line 136
    move v8, v5

    move v7, v8

    .line 136
    :goto_6
    array-length v9, v6

    if-lt v8, v9, :cond_9

    goto :goto_c

    .line 137
    :cond_9
    :goto_7
    array-length v9, v6

    const/16 v10, 0x2c

    if-ge v8, v9, :cond_b

    aget-byte v9, v6, v8

    if-ne v9, v10, :cond_a

    goto :goto_8

    .line 138
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 139
    :cond_b
    :goto_8
    if-ne v7, v8, :cond_c

    .line 140
    new-instance p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_c
    sub-int v9, v8, v7

    invoke-static {v6, v7, v9}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v7

    .line 142
    nop

    .line 143
    nop

    .line 144
    move v9, v5

    move v11, v9

    .line 144
    :goto_9
    array-length v12, p2

    if-lt v9, v12, :cond_d

    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    move v7, v8

    goto :goto_6

    .line 145
    :cond_d
    :goto_a
    array-length v12, p2

    if-ge v9, v12, :cond_f

    aget-byte v12, p2, v9

    if-ne v12, v10, :cond_e

    goto :goto_b

    .line 146
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 147
    :cond_f
    :goto_b
    if-ne v11, v9, :cond_10

    .line 148
    new-instance p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_10
    sub-int v12, v9, v11

    invoke-static {p2, v11, v12}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 150
    aput-object v7, v1, p1

    .line 151
    nop

    .line 159
    :goto_c
    if-nez v8, :cond_11

    .line 160
    const-string p2, ""

    aput-object p2, v1, p1

    .line 161
    goto :goto_d

    :cond_11
    aget-object v7, v1, p1

    if-nez v7, :cond_12

    .line 162
    new-instance p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_12
    :goto_d
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    .line 153
    :cond_13
    add-int/lit8 v11, v9, 0x1

    .line 154
    move v9, v11

    goto :goto_9
.end method


# virtual methods
.method clearK()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    .line 226
    return-void
.end method

.method doInit(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    .line 82
    invoke-virtual/range {p0 .. p5}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    .line 83
    return-void
.end method

.method protected encodeAsMPInt([B)[B
    .locals 1

    .line 598
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyExchange;->encodeAsMPInt([BZ)[B

    move-result-object p1

    return-object p1
.end method

.method protected encodeAsMPInt([BZ)[B
    .locals 7

    .line 602
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    ushr-int/lit8 v1, v1, 0x7

    .line 603
    array-length v2, p1

    add-int/2addr v2, v1

    .line 604
    const/4 v3, 0x4

    add-int v4, v2, v3

    new-array v4, v4, [B

    .line 606
    const/4 v5, 0x1

    xor-int v6, v1, v5

    new-array v6, v6, [B

    .line 607
    ushr-int/lit8 v6, v2, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 608
    ushr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 609
    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v4, v6

    .line 610
    int-to-byte v5, v2

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    .line 611
    add-int/2addr v3, v1

    sub-int v1, v2, v1

    invoke-static {p1, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    if-eqz p2, :cond_0

    .line 613
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 615
    :cond_0
    return-object v4
.end method

.method protected encodeAsString([B)[B
    .locals 1

    .line 619
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/KeyExchange;->encodeAsString([BZ)[B

    move-result-object p1

    return-object p1
.end method

.method protected encodeAsString([BZ)[B
    .locals 6

    .line 623
    array-length v0, p1

    .line 624
    const/4 v1, 0x4

    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 625
    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 626
    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    .line 627
    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    .line 628
    int-to-byte v3, v0

    const/4 v5, 0x3

    aput-byte v3, v2, v5

    .line 629
    invoke-static {p1, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    if-eqz p2, :cond_0

    .line 631
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 633
    :cond_0
    return-object v2
.end method

.method protected encodeInt(I)[B
    .locals 3

    .line 589
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 590
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 591
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 592
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 593
    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 594
    return-object v0
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 7

    .line 206
    nop

    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    const-string v3, "FingerprintHash"

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/jcraft/jsch/HASH;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 210
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HASH;

    .line 211
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getFingerPrint: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyExchange;->getHostKey()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/jcraft/jsch/Util;->getFingerPrint(Lcom/jcraft/jsch/HASH;[BZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getH()[B
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    return-object v0
.end method

.method getHash()Lcom/jcraft/jsch/HASH;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    return-object v0
.end method

.method getHostKey()[B
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    return-object v0
.end method

.method getHostKeyCertificate()Lcom/jcraft/jsch/OpenSshCertificate;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->hostKeyCertificate:Lcom/jcraft/jsch/OpenSshCertificate;

    return-object v0
.end method

.method getK()[B
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    return-object v0
.end method

.method public getKeyAlgorithName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->key_alg_name:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 2

    .line 97
    iget v0, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    const-string v0, "DSA"

    return-object v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    if-nez v0, :cond_1

    .line 100
    const-string v0, "RSA"

    return-object v0

    .line 101
    :cond_1
    iget v0, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 102
    const-string v0, "EDDSA"

    return-object v0

    .line 103
    :cond_2
    const-string v0, "ECDSA"

    return-object v0
.end method

.method public abstract getState()I
.end method

.method public abstract init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract next(Lcom/jcraft/jsch/Buffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected normalize([B)[B
    .locals 10

    .line 256
    array-length v0, p1

    .line 257
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 258
    return-object p1

    .line 262
    :cond_0
    nop

    .line 263
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 264
    move v3, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    const/16 v6, 0x8

    if-lt v3, v6, :cond_3

    .line 269
    xor-int v2, v4, v5

    .line 272
    nop

    .line 273
    move v6, v5

    move v3, v2

    move v2, v1

    :goto_1
    if-lt v6, v0, :cond_1

    .line 288
    sub-int/2addr v0, v2

    .line 290
    new-array v3, v0, [B

    .line 291
    new-array v4, v2, [B

    .line 292
    invoke-static {p1, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 295
    move-object p1, v3

    return-object p1

    .line 274
    :cond_1
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0x80

    .line 275
    const/4 v7, 0x7

    ushr-int/2addr v4, v7

    .line 276
    xor-int/2addr v4, v5

    .line 277
    and-int/2addr v3, v4

    .line 278
    add-int v8, v2, v3

    .line 279
    aget-byte v2, p1, v6

    and-int/lit8 v9, v2, 0x7f

    .line 280
    move v2, v1

    :goto_2
    if-lt v2, v7, :cond_2

    .line 273
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_1

    .line 281
    :cond_2
    ushr-int v4, v9, v2

    .line 282
    and-int/2addr v4, v5

    .line 283
    xor-int/2addr v4, v5

    .line 284
    and-int/2addr v3, v4

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 265
    :cond_3
    ushr-int v6, v2, v3

    .line 266
    and-int/2addr v5, v6

    .line 267
    or-int/2addr v4, v5

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected verify(Ljava/lang/String;[BI[B)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    nop

    .line 382
    nop

    .line 384
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->isCertificateKeyType(Ljava/lang/String;)Z

    move-result v0

    const v1, 0xff00

    const/high16 v2, 0xff0000

    const/high16 v3, -0x1000000

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 385
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    iget-object p1, p1, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    iget-object p1, p1, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {p1, p2}, Lcom/jcraft/jsch/OpenSshCertificateParser;->parse(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/OpenSshCertificate;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->isHostCertificate()Z

    move-result p2

    if-nez p2, :cond_0

    .line 391
    new-instance p2, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Rejected certificate \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string p1, "\': user certificate presented for host authentication. "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Host: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    iget-object p1, p1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getCertificatePublicKey()[B

    move-result-object p2

    .line 395
    if-nez p2, :cond_1

    .line 396
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    .line 397
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid certificate \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': missing public key"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 401
    :cond_1
    nop

    .line 402
    nop

    .line 403
    const/4 p3, 0x1

    aget-byte v0, p2, v4

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v3

    const/4 v5, 0x2

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    and-int/2addr p3, v2

    or-int/2addr p3, v0

    .line 404
    const/4 v0, 0x3

    aget-byte v5, p2, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v1

    .line 403
    or-int/2addr p3, v5

    .line 404
    const/4 v5, 0x4

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 403
    or-int/2addr p3, v0

    .line 405
    invoke-static {p2, v5, p3}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v0

    .line 406
    add-int/2addr p3, v5

    .line 408
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->hostKeyCertificate:Lcom/jcraft/jsch/OpenSshCertificate;

    move-object p1, v0

    .line 411
    :cond_2
    const-string v0, "ssh-rsa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 416
    iput v4, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    .line 417
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->key_alg_name:Ljava/lang/String;

    .line 419
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x18

    and-int/2addr p3, v3

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x10

    and-int/2addr p1, v2

    or-int/2addr p1, p3

    .line 420
    add-int/lit8 p3, v0, 0x1

    aget-byte v0, p2, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    .line 419
    or-int/2addr p1, v0

    .line 420
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    .line 419
    or-int/2addr p1, p3

    .line 421
    new-array p3, p1, [B

    .line 422
    invoke-static {p2, v0, p3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    add-int/2addr p1, v0

    .line 424
    nop

    .line 425
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p1, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    .line 426
    add-int/lit8 v0, v3, 0x1

    aget-byte v2, p2, v3

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    .line 425
    or-int/2addr p1, v1

    .line 426
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 425
    or-int/2addr p1, v0

    .line 427
    new-array v0, p1, [B

    .line 428
    invoke-static {p2, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    nop

    .line 430
    nop

    .line 432
    nop

    .line 433
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1, p4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 434
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    .line 437
    :try_start_0
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/jcraft/jsch/SignatureRSA;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 436
    nop

    .line 438
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/SignatureRSA;

    .line 439
    invoke-interface {p2}, Lcom/jcraft/jsch/SignatureRSA;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 443
    invoke-interface {p2, p3, v0}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V

    .line 444
    iget-object p3, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    invoke-interface {p2, p3}, Lcom/jcraft/jsch/SignatureRSA;->update([B)V

    .line 445
    invoke-interface {p2, p4}, Lcom/jcraft/jsch/SignatureRSA;->verify([B)Z

    move-result v4

    .line 447
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-interface {p2, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 448
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ssh_rsa_verify: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signature "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v5, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 450
    return v4

    :catch_0
    move-exception p1

    .line 441
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    const-string v0, "ssh-dss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    nop

    .line 457
    iput v5, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    .line 458
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->key_alg_name:Ljava/lang/String;

    .line 460
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x18

    and-int/2addr p3, v3

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x10

    and-int/2addr p1, v2

    or-int/2addr p1, p3

    .line 461
    add-int/lit8 p3, v0, 0x1

    aget-byte v0, p2, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    .line 460
    or-int/2addr p1, v0

    .line 461
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    .line 460
    or-int/2addr p1, p3

    .line 462
    new-array p3, p1, [B

    .line 463
    invoke-static {p2, v0, p3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    add-int/2addr p1, v0

    .line 465
    nop

    .line 466
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p1, v3

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, p2, v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    .line 467
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v1

    .line 466
    or-int/2addr p1, v6

    .line 467
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 466
    or-int/2addr p1, v0

    .line 468
    new-array v0, p1, [B

    .line 469
    invoke-static {p2, v6, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    add-int/2addr p1, v6

    .line 471
    nop

    .line 472
    add-int/lit8 v6, p1, 0x1

    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p1, v3

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v2

    or-int/2addr p1, v6

    .line 473
    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p2, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v1

    .line 472
    or-int/2addr p1, v7

    .line 473
    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    .line 472
    or-int/2addr p1, v6

    .line 474
    new-array v6, p1, [B

    .line 475
    invoke-static {p2, v7, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    add-int/2addr p1, v7

    .line 477
    nop

    .line 478
    add-int/lit8 v7, p1, 0x1

    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p1, v3

    add-int/lit8 v3, v7, 0x1

    aget-byte v7, p2, v7

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v2, v7

    or-int/2addr p1, v2

    .line 479
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v1, v3

    .line 478
    or-int/2addr p1, v1

    .line 479
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    .line 478
    or-int/2addr p1, v2

    .line 480
    new-array v2, p1, [B

    .line 481
    invoke-static {p2, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    nop

    .line 483
    nop

    .line 485
    nop

    .line 488
    :try_start_1
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    const-string p2, "signature.dss"

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/jcraft/jsch/SignatureDSA;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 487
    nop

    .line 489
    new-array p2, v4, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/SignatureDSA;

    .line 490
    invoke-interface {p1}, Lcom/jcraft/jsch/SignatureDSA;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    nop

    .line 494
    invoke-interface {p1, v2, p3, v0, v6}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V

    .line 495
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/SignatureDSA;->update([B)V

    .line 496
    invoke-interface {p1, p4}, Lcom/jcraft/jsch/SignatureDSA;->verify([B)Z

    move-result v4

    .line 498
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 499
    iget-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ssh_dss_verify: signature "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 501
    return v4

    :catch_1
    move-exception p1

    .line 492
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    const-string v0, "ecdsa-sha2-nistp256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ecdsa-sha2-nistp384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 502
    const-string v0, "ecdsa-sha2-nistp521"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v0, "ssh-ed25519"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x3

    if-nez v0, :cond_7

    const-string v0, "ssh-ed448"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 580
    :cond_6
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-interface {p2, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 581
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "unknown alg: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v6, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 551
    :cond_7
    :goto_0
    iput v6, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    .line 552
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->key_alg_name:Ljava/lang/String;

    .line 554
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x18

    and-int/2addr p3, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    or-int/2addr p3, v0

    .line 555
    add-int/lit8 v0, v3, 0x1

    aget-byte v2, p2, v3

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    .line 554
    or-int/2addr p3, v1

    .line 555
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 554
    or-int/2addr p3, v0

    .line 556
    new-array v0, p3, [B

    .line 557
    invoke-static {p2, v1, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    nop

    .line 560
    nop

    .line 563
    :try_start_2
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lcom/jcraft/jsch/SignatureEdDSA;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 562
    nop

    .line 564
    new-array p3, v4, [Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 565
    invoke-interface {p2}, Lcom/jcraft/jsch/SignatureEdDSA;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 566
    nop

    .line 570
    invoke-interface {p2, v0}, Lcom/jcraft/jsch/SignatureEdDSA;->setPubKey([B)V

    .line 572
    iget-object p3, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    invoke-interface {p2, p3}, Lcom/jcraft/jsch/SignatureEdDSA;->update([B)V

    .line 574
    invoke-interface {p2, p4}, Lcom/jcraft/jsch/SignatureEdDSA;->verify([B)Z

    move-result v4

    .line 576
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-interface {p2, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 577
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ssh_eddsa_verify: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signature "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v5, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 579
    return v4

    :catch_2
    move-exception p1

    .line 567
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 508
    :cond_8
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/jcraft/jsch/KeyExchange;->type:I

    .line 509
    iput-object p1, p0, Lcom/jcraft/jsch/KeyExchange;->key_alg_name:Ljava/lang/String;

    .line 511
    add-int/lit8 v6, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x18

    and-int/2addr p3, v3

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v2

    or-int/2addr p3, v6

    .line 512
    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p2, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v1

    .line 511
    or-int/2addr p3, v7

    .line 512
    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    .line 511
    or-int/2addr p3, v6

    .line 513
    new-array v6, p3, [B

    .line 514
    invoke-static {p2, v7, v6, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    add-int/2addr p3, v7

    .line 516
    add-int/lit8 v6, p3, 0x1

    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x18

    and-int/2addr p3, v3

    add-int/lit8 v3, v6, 0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v2, v6

    or-int/2addr p3, v2

    .line 517
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v1, v3

    .line 516
    or-int/2addr p3, v1

    .line 517
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    .line 516
    or-int/2addr p3, v2

    .line 518
    add-int/lit8 v1, v1, 0x1

    .line 519
    sub-int/2addr p3, v5

    div-int/2addr p3, v0

    new-array v0, p3, [B

    .line 520
    array-length v2, v0

    invoke-static {p2, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    add-int/2addr v1, p3

    .line 522
    nop

    .line 523
    new-array p3, p3, [B

    .line 524
    array-length v2, p3

    invoke-static {p2, v1, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    nop

    .line 526
    nop

    .line 528
    nop

    .line 531
    :try_start_3
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/jcraft/jsch/SignatureECDSA;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 530
    nop

    .line 532
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/SignatureECDSA;

    .line 533
    invoke-interface {p2}, Lcom/jcraft/jsch/SignatureECDSA;->init()V

    .line 534
    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 538
    invoke-interface {p2, v0, p3}, Lcom/jcraft/jsch/SignatureECDSA;->setPubKey([B[B)V

    .line 540
    iget-object p3, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    invoke-interface {p2, p3}, Lcom/jcraft/jsch/SignatureECDSA;->update([B)V

    .line 542
    invoke-interface {p2, p4}, Lcom/jcraft/jsch/SignatureECDSA;->verify([B)Z

    move-result v4

    .line 544
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-interface {p2, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 545
    iget-object p2, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {p2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ssh_ecdsa_verify: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signature "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v5, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 547
    nop

    .line 585
    :cond_9
    return v4

    :catch_3
    move-exception p1

    .line 535
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
