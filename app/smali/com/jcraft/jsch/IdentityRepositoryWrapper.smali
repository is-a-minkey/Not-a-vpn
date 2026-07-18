.class Lcom/jcraft/jsch/IdentityRepositoryWrapper;
.super Ljava/lang/Object;
.source "IdentityRepositoryWrapper.java"

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field private cache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private ir:Lcom/jcraft/jsch/IdentityRepository;

.field private keep_in_cache:Z


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/IdentityRepository;Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->keep_in_cache:Z

    .line 46
    iput-object p1, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    .line 47
    iput-boolean p2, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->keep_in_cache:Z

    .line 48
    return-void
.end method


# virtual methods
.method add(Lcom/jcraft/jsch/Identity;)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->keep_in_cache:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/jcraft/jsch/IdentityFile;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->getKeyPair()Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair;->forSSHAgent()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    .line 94
    return-void

    :catch_0
    move-exception p1

    .line 97
    return-void
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public add([B)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    move-result p1

    return p1
.end method

.method check()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-void

    .line 105
    :cond_0
    aget-object v2, v0, v1

    check-cast v2, Lcom/jcraft/jsch/Identity;

    .line 106
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->add(Lcom/jcraft/jsch/Identity;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method public getIdentities()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 79
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 83
    iget-object v2, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v2}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v3

    .line 84
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 87
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Identity;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Identity;

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->getStatus()I

    move-result v0

    return v0
.end method

.method public remove([B)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    move-result p1

    return p1
.end method

.method public removeAll()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 73
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->ir:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    .line 74
    return-void
.end method
