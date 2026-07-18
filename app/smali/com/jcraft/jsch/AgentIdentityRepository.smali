.class public Lcom/jcraft/jsch/AgentIdentityRepository;
.super Ljava/lang/Object;
.source "AgentIdentityRepository.java"

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# instance fields
.field private agent:Lcom/jcraft/jsch/AgentProxy;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/AgentConnector;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/jcraft/jsch/AgentProxy;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/AgentProxy;-><init>(Lcom/jcraft/jsch/AgentConnector;)V

    iput-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->agent:Lcom/jcraft/jsch/AgentProxy;

    .line 37
    return-void
.end method


# virtual methods
.method public add([B)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->agent:Lcom/jcraft/jsch/AgentProxy;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/AgentProxy;->addIdentity([B)Z

    move-result p1

    return p1
.end method

.method public getIdentities()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/Identity;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->agent:Lcom/jcraft/jsch/AgentProxy;

    invoke-virtual {v0}, Lcom/jcraft/jsch/AgentProxy;->getIdentities()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->agent:Lcom/jcraft/jsch/AgentProxy;

    invoke-virtual {v0}, Lcom/jcraft/jsch/AgentProxy;->getConnector()Lcom/jcraft/jsch/AgentConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/jcraft/jsch/AgentConnector;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->agent:Lcom/jcraft/jsch/AgentProxy;

    invoke-virtual {v0}, Lcom/jcraft/jsch/AgentProxy;->getConnector()Lcom/jcraft/jsch/AgentConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/jcraft/jsch/AgentConnector;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 67
    return v2

    .line 69
    :cond_0
    move v2, v1

    return v2
.end method

.method public remove([B)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->agent:Lcom/jcraft/jsch/AgentProxy;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/AgentProxy;->removeIdentity([B)Z

    move-result p1

    return p1
.end method

.method public removeAll()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentityRepository;->agent:Lcom/jcraft/jsch/AgentProxy;

    invoke-virtual {v0}, Lcom/jcraft/jsch/AgentProxy;->removeAllIdentities()V

    .line 57
    return-void
.end method
