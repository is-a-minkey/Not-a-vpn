.class Lcom/jcraft/jsch/LocalIdentityRepository;
.super Ljava/lang/Object;
.source "LocalIdentityRepository.java"

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# static fields
.field private static final name:Ljava/lang/String; = "Local Identity Repository"


# instance fields
.field private identities:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    .line 38
    iput-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 39
    return-void
.end method

.method private removeDupulicates()V
    .locals 9

    .line 128
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    return-void

    .line 132
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    .line 148
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    .line 151
    return-void

    .line 149
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/LocalIdentityRepository;->remove([B)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/Identity;

    .line 134
    invoke-interface {v4}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v5

    .line 135
    if-nez v5, :cond_3

    .line 136
    goto :goto_3

    .line 137
    :cond_3
    add-int/lit8 v6, v3, 0x1

    :goto_2
    if-lt v6, v1, :cond_4

    goto :goto_3

    .line 138
    :cond_4
    iget-object v7, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jcraft/jsch/Identity;

    .line 139
    invoke-interface {v7}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v8

    .line 140
    if-nez v8, :cond_5

    .line 141
    goto :goto_4

    .line 142
    :cond_5
    invoke-static {v5, v8}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v8

    invoke-interface {v7}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v7

    if-ne v8, v7, :cond_6

    .line 143
    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 144
    nop

    .line 132
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized add(Lcom/jcraft/jsch/Identity;)V
    .locals 4

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    goto :goto_2

    .line 68
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Identity;

    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v2

    .line 70
    if-eqz v2, :cond_3

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Identity;

    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/LocalIdentityRepository;->remove([B)Z

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add([B)Z
    .locals 5

    monitor-enter p0

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "from remote:"

    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    const/4 v4, 0x0

    invoke-static {v2, p1, v4, v3}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/LocalIdentityRepository;->add(Lcom/jcraft/jsch/Identity;)V

    .line 87
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    throw p1

    .line 88
    :catch_0
    move-exception p1

    .line 88
    nop

    .line 89
    :goto_0
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized getIdentities()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/LocalIdentityRepository;->removeDupulicates()V

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 55
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 58
    monitor-exit p0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/Identity;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "Local Identity Repository"

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 48
    const/4 v0, 0x2

    return v0
.end method

.method declared-synchronized remove(Lcom/jcraft/jsch/Identity;)V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->clear()V

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/LocalIdentityRepository;->remove([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove([B)Z
    .locals 5

    monitor-enter p0

    .line 104
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 115
    goto :goto_1

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Identity;

    .line 108
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v4

    .line 109
    if-eqz v4, :cond_3

    invoke-static {p1, v4}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {p1, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v3}, Lcom/jcraft/jsch/Identity;->clear()V

    .line 113
    move v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v1

    .line 106
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll()V
    .locals 2

    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/Identity;

    .line 122
    invoke-interface {v1}, Lcom/jcraft/jsch/Identity;->clear()V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    throw v0
.end method
