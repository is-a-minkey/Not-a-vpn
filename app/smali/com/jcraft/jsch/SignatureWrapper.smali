.class Lcom/jcraft/jsch/SignatureWrapper;
.super Ljava/lang/Object;
.source "SignatureWrapper.java"

# interfaces
.implements Lcom/jcraft/jsch/Signature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;,
        Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;
    }
.end annotation


# instance fields
.field private final pubKeyParameterValidator:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

.field private final publicKeySetter:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

.field private final signature:Lcom/jcraft/jsch/Signature;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jcraft/jsch/Session;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lcom/jcraft/jsch/Signature;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/Signature;

    .line 35
    iput-object p2, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    .line 37
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget-object p2, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    instance-of p2, p2, Lcom/jcraft/jsch/SignatureRSA;

    if-eqz p2, :cond_0

    .line 43
    sget-object p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$Nd2L2y5DN6IJh3NgRs7TARaEQ2g;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$Nd2L2y5DN6IJh3NgRs7TARaEQ2g;

    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->pubKeyParameterValidator:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 44
    nop

    .line 45
    new-instance p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$kq9oB5dnzwA76sgM22dZyWJP7g0;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$kq9oB5dnzwA76sgM22dZyWJP7g0;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    .line 44
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->publicKeySetter:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 46
    return-void

    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    instance-of p2, p2, Lcom/jcraft/jsch/SignatureDSA;

    if-eqz p2, :cond_1

    .line 47
    sget-object p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$cW6xc0VBvHLD8Q3wm_31pbyN6VM;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$cW6xc0VBvHLD8Q3wm_31pbyN6VM;

    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->pubKeyParameterValidator:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 48
    new-instance p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$rN5CPoOB9op-GpVakNt9pW86wA4;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$rN5CPoOB9op-GpVakNt9pW86wA4;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->publicKeySetter:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 50
    return-void

    :cond_1
    iget-object p2, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    instance-of p2, p2, Lcom/jcraft/jsch/SignatureECDSA;

    if-eqz p2, :cond_2

    .line 51
    sget-object p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$Wlqi2X6LvamVQCo_UOWW6FIbFfk;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$Wlqi2X6LvamVQCo_UOWW6FIbFfk;

    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->pubKeyParameterValidator:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 52
    nop

    .line 53
    new-instance p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$YzqZOxypENkiWq7cPZU1d6hku1E;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$YzqZOxypENkiWq7cPZU1d6hku1E;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    .line 52
    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->publicKeySetter:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 54
    return-void

    :cond_2
    iget-object p2, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    instance-of p2, p2, Lcom/jcraft/jsch/SignatureEdDSA;

    if-eqz p2, :cond_3

    .line 55
    sget-object p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$8YvusYRWTXHE5vZ8QKMXtGP3JCQ;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$8YvusYRWTXHE5vZ8QKMXtGP3JCQ;

    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->pubKeyParameterValidator:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    .line 56
    new-instance p1, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$rxcjnPrKlb03w34Cx-0jlzzuuto;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$rxcjnPrKlb03w34Cx-0jlzzuuto;-><init>(Lcom/jcraft/jsch/SignatureWrapper;)V

    iput-object p1, p0, Lcom/jcraft/jsch/SignatureWrapper;->publicKeySetter:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    .line 57
    nop

    .line 60
    return-void

    .line 58
    :cond_3
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized signature algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    .line 38
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to instantiate signature for algorithm \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    nop

    .line 38
    invoke-direct {v0, p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static generateValidator(Ljava/lang/String;I)Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$N3tHvURbtaZHsuaPi8AL-pg68og;

    invoke-direct {v0, p1, p0}, Lcom/jcraft/jsch/-$$Lambda$SignatureWrapper$N3tHvURbtaZHsuaPi8AL-pg68og;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$0([[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    const-string p0, "RSA"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/jcraft/jsch/SignatureWrapper;->generateValidator(Ljava/lang/String;I)Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    return-void
.end method

.method static synthetic lambda$1(Lcom/jcraft/jsch/SignatureWrapper;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V

    return-void
.end method

.method static synthetic lambda$2([[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const-string p0, "DSA"

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/jcraft/jsch/SignatureWrapper;->generateValidator(Ljava/lang/String;I)Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    return-void
.end method

.method static synthetic lambda$3(Lcom/jcraft/jsch/SignatureWrapper;[[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 49
    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object p1, p1, v4

    .line 48
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V

    .line 49
    return-void
.end method

.method static synthetic lambda$4([[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    const-string p0, "ECDSA"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/jcraft/jsch/SignatureWrapper;->generateValidator(Ljava/lang/String;I)Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    return-void
.end method

.method static synthetic lambda$5(Lcom/jcraft/jsch/SignatureWrapper;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    check-cast v0, Lcom/jcraft/jsch/SignatureECDSA;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Lcom/jcraft/jsch/SignatureECDSA;->setPubKey([B[B)V

    return-void
.end method

.method static synthetic lambda$6([[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    const-string p0, "EdDSA"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/jcraft/jsch/SignatureWrapper;->generateValidator(Ljava/lang/String;I)Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    return-void
.end method

.method static synthetic lambda$7(Lcom/jcraft/jsch/SignatureWrapper;[[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    check-cast v0, Lcom/jcraft/jsch/SignatureEdDSA;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureEdDSA;->setPubKey([B)V

    return-void
.end method

.method static synthetic lambda$8(ILjava/lang/String;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    array-length v0, p2

    if-eq v0, p0, :cond_0

    .line 74
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong number of arguments:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signatures expects "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " parameters, found "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->init()V

    .line 89
    return-void
.end method

.method varargs setPubKey([[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->pubKeyParameterValidator:Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureWrapper$PubKeyParameterValidator;->validatePublicKeyParameter([[B)V

    .line 141
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->publicKeySetter:Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureWrapper$PubKeySetter;->setPubKey([[B)V

    .line 142
    return-void
.end method

.method public sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 101
    return-void
.end method

.method public verify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/jcraft/jsch/SignatureWrapper;->signature:Lcom/jcraft/jsch/Signature;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->verify([B)Z

    move-result p1

    return p1
.end method
