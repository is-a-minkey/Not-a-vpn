.class Lcom/jcraft/jsch/OpenSshCertificate$Builder;
.super Ljava/lang/Object;
.source "OpenSshCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/OpenSshCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private certificatePublicKey:[B

.field private criticalOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private keyType:Ljava/lang/String;

.field private message:[B

.field private nonce:[B

.field private principals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reserved:Ljava/lang/String;

.field private serial:J

.field private signature:[B

.field private signatureKey:[B

.field private type:I

.field private validAfter:J

.field private validBefore:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validAfter:J

    .line 227
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validBefore:J

    .line 235
    return-void
.end method

.method static synthetic access$0(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/lang/String;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->keyType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->nonce:[B

    return-object p0
.end method

.method static synthetic access$10(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/util/Map;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->extensions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$11(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->reserved:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signatureKey:[B

    return-object p0
.end method

.method static synthetic access$13(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signature:[B

    return-object p0
.end method

.method static synthetic access$14(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->message:[B

    return-object p0
.end method

.method static synthetic access$2(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)[B
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->certificatePublicKey:[B

    return-object p0
.end method

.method static synthetic access$3(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->serial:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)I
    .locals 0

    .line 223
    iget p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->type:I

    return p0
.end method

.method static synthetic access$5(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/util/Collection;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->principals:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$7(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validAfter:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)J
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validBefore:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/jcraft/jsch/OpenSshCertificate$Builder;)Ljava/util/Map;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->criticalOptions:Ljava/util/Map;

    return-object p0
.end method

.method private validate()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->keyType:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->keyType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->nonce:[B

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->nonce:[B

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_4

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->certificatePublicKey:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->certificatePublicKey:[B

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 339
    :cond_2
    iget v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type must be SSH2_CERT_TYPE_USER (1) or SSH2_CERT_TYPE_HOST (2), got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signatureKey:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signatureKey:[B

    array-length v0, v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signature:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signature:[B

    array-length v0, v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->message:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->message:[B

    array-length v0, v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 352
    :cond_6
    return-void

    .line 350
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message is required and cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_8
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signature is required and cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signatureKey is required and cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_a
    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 337
    const-string v1, "certificatePublicKey is required and cannot be null or empty"

    .line 336
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_b
    :goto_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nonce is required and cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyType is required and cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method build()Lcom/jcraft/jsch/OpenSshCertificate;
    .locals 2

    .line 319
    invoke-direct {p0}, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validate()V

    .line 320
    new-instance v0, Lcom/jcraft/jsch/OpenSshCertificate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/OpenSshCertificate;-><init>(Lcom/jcraft/jsch/OpenSshCertificate$Builder;Lcom/jcraft/jsch/OpenSshCertificate;)V

    return-object v0
.end method

.method certificatePublicKey([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->certificatePublicKey:[B

    .line 249
    return-object p0
.end method

.method criticalOptions(Ljava/util/Map;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jcraft/jsch/OpenSshCertificate$Builder;"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->criticalOptions:Ljava/util/Map;

    .line 284
    return-object p0
.end method

.method extensions(Ljava/util/Map;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jcraft/jsch/OpenSshCertificate$Builder;"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->extensions:Ljava/util/Map;

    .line 289
    return-object p0
.end method

.method id(Ljava/lang/String;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->id:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method keyType(Ljava/lang/String;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->keyType:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method message([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->message:[B

    .line 309
    return-object p0
.end method

.method nonce([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->nonce:[B

    .line 244
    return-object p0
.end method

.method principals(Ljava/util/Collection;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jcraft/jsch/OpenSshCertificate$Builder;"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->principals:Ljava/util/Collection;

    .line 269
    return-object p0
.end method

.method reserved(Ljava/lang/String;)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->reserved:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method serial(J)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 253
    iput-wide p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->serial:J

    .line 254
    return-object p0
.end method

.method signature([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signature:[B

    .line 304
    return-object p0
.end method

.method signatureKey([B)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->signatureKey:[B

    .line 299
    return-object p0
.end method

.method type(I)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 258
    iput p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->type:I

    .line 259
    return-object p0
.end method

.method validAfter(J)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 273
    iput-wide p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validAfter:J

    .line 274
    return-object p0
.end method

.method validBefore(J)Lcom/jcraft/jsch/OpenSshCertificate$Builder;
    .locals 0

    .line 278
    iput-wide p1, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->validBefore:J

    .line 279
    return-object p0
.end method
