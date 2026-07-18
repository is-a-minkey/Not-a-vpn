.class Lcom/jcraft/jsch/OpenSshCertificate;
.super Ljava/lang/Object;
.source "OpenSshCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    }
.end annotation


# static fields
.field static final MAX_VALIDITY:J = -0x1L

.field static final MIN_VALIDITY:J = 0x0L

.field static final SSH2_CERT_TYPE_HOST:I = 0x2

.field static final SSH2_CERT_TYPE_USER:I = 0x1


# instance fields
.field private final certificatePublicKey:[B

.field private final criticalOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final keyType:Ljava/lang/String;

.field private final message:[B

.field private final nonce:[B

.field private final principals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reserved:Ljava/lang/String;

.field private final serial:J

.field private final signature:[B

.field private final signatureKey:[B

.field private final type:I

.field private final validAfter:J

.field private final validBefore:J


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$0(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->keyType:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$1(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->nonce:[B

    .line 128
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$2(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->certificatePublicKey:[B

    .line 129
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$3(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->serial:J

    .line 130
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$4(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->type:I

    .line 131
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$5(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->id:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$6(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->principals:Ljava/util/Collection;

    .line 133
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$7(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->validAfter:J

    .line 134
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$8(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->validBefore:J

    .line 135
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$9(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->criticalOptions:Ljava/util/Map;

    .line 136
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$10(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->extensions:Ljava/util/Map;

    .line 137
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$11(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->reserved:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$12(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->signatureKey:[B

    .line 139
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$13(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->signature:[B

    .line 140
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->access$14(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate;->message:[B

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/jcraft/jsch/OpenSshCertificate$Builder;Lcom/jcraft/jsch/OpenSshCertificate;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSshCertificate;-><init>(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)V

    return-void
.end method


# virtual methods
.method getCertificatePublicKey()[B
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->certificatePublicKey:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->certificatePublicKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method getCriticalOptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->criticalOptions:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->criticalOptions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method getExtensions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->extensions:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->extensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->id:Ljava/lang/String;

    return-object v0
.end method

.method getKeyType()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method getMessage()[B
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->message:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->message:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method getNonce()[B
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->nonce:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->nonce:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method getPrincipals()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->principals:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->principals:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method getReserved()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method getSerial()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->serial:J

    return-wide v0
.end method

.method getSignature()[B
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->signature:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->signature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method getSignatureKey()[B
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->signatureKey:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->signatureKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    return-object v1
.end method

.method getType()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->type:I

    return v0
.end method

.method getValidAfter()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->validAfter:J

    return-wide v0
.end method

.method getValidBefore()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->validBefore:J

    return-wide v0
.end method

.method isHostCertificate()Z
    .locals 4

    .line 204
    iget v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method isUserCertificate()Z
    .locals 3

    .line 200
    iget v0, p0, Lcom/jcraft/jsch/OpenSshCertificate;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    return v2

    :cond_0
    move v2, v1

    return v2
.end method

.method isValidNow()Z
    .locals 1

    .line 208
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isValidNow(Lcom/jcraft/jsch/OpenSshCertificate;)Z

    move-result v0

    return v0
.end method
