.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;
.source "IdentityFile.java"

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field private identity:Ljava/lang/String;

.field private kpair:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/jcraft/jsch/IdentityFile;->identity:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    .line 49
    return-void
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 35
    invoke-static {p2, p0, p1}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch$InstanceLogger;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {p2, p0, p1}, Lcom/jcraft/jsch/IdentityFile;-><init>(Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object p2
.end method

.method static newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 42
    invoke-static {p3, p1, p2}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch$InstanceLogger;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/jcraft/jsch/IdentityFile;

    invoke-direct {p2, p0, p1}, Lcom/jcraft/jsch/IdentityFile;-><init>(Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object p2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    .line 131
    return-void
.end method

.method public getAlgName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPair()Lcom/jcraft/jsch/KeyPair;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/KeyPair;->getSignature([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public isEncrypted()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public setPassphrase([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->decrypt([B)Z

    move-result p1

    return p1
.end method
