.class Lcom/jcraft/jsch/KeyPairEd448;
.super Lcom/jcraft/jsch/KeyPairEdDSA;
.source "KeyPairEd448.java"


# static fields
.field private static keySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0x39

    sput v0, Lcom/jcraft/jsch/KeyPairEd448;->keySize:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/KeyPairEdDSA;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 41
    return-void
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch$InstanceLogger;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 65
    const-string v0, "invalid key format"

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    .line 67
    const/4 v0, 0x1

    aget-object v0, p1, v0

    .line 68
    const/4 v1, 0x2

    aget-object v1, p1, v1

    sget v2, Lcom/jcraft/jsch/KeyPairEd448;->keySize:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 69
    new-instance v2, Lcom/jcraft/jsch/KeyPairEd448;

    invoke-direct {v2, p0, v0, v1}, Lcom/jcraft/jsch/KeyPairEd448;-><init>(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)V

    .line 70
    const/4 p0, 0x3

    aget-object p0, p1, p0

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/jcraft/jsch/KeyPairEd448;->publicKeyComment:Ljava/lang/String;

    .line 71
    const/4 p0, 0x0

    iput p0, v2, Lcom/jcraft/jsch/KeyPairEd448;->vendor:I

    .line 72
    return-object v2
.end method


# virtual methods
.method getJceName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "Ed448"

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 50
    sget v0, Lcom/jcraft/jsch/KeyPairEd448;->keySize:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .line 45
    const/4 v0, 0x6

    return v0
.end method

.method getSshName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "ssh-ed448"

    return-object v0
.end method
