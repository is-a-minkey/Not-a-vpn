.class Lcom/jcraft/jsch/AgentIdentity;
.super Ljava/lang/Object;
.source "AgentIdentity.java"

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field private agent:Lcom/jcraft/jsch/AgentProxy;

.field private algname:Ljava/lang/String;

.field private blob:[B

.field private comment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/AgentProxy;[BLjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jcraft/jsch/AgentIdentity;->agent:Lcom/jcraft/jsch/AgentProxy;

    .line 38
    iput-object p2, p0, Lcom/jcraft/jsch/AgentIdentity;->blob:[B

    .line 39
    iput-object p3, p0, Lcom/jcraft/jsch/AgentIdentity;->comment:Ljava/lang/String;

    .line 40
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/AgentIdentity;->algname:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 79
    return-void
.end method

.method public getAlgName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->algname:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->blob:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->agent:Lcom/jcraft/jsch/AgentProxy;

    iget-object v1, p0, Lcom/jcraft/jsch/AgentIdentity;->blob:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/jcraft/jsch/AgentProxy;->sign([B[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getSignature([BLjava/lang/String;)[B
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/jcraft/jsch/AgentIdentity;->agent:Lcom/jcraft/jsch/AgentProxy;

    iget-object v1, p0, Lcom/jcraft/jsch/AgentIdentity;->blob:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/jcraft/jsch/AgentProxy;->sign([B[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public isEncrypted()Z
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public setPassphrase([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 45
    const/4 p1, 0x1

    return p1
.end method
