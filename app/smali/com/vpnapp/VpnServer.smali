.class public Lcom/vpnapp/VpnServer;
.super Ljava/lang/Object;
.source "VpnServer.java"


# instance fields
.field public final country:Ljava/lang/String;

.field public final flag:Ljava/lang/String;

.field public final host:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final protocol:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 15
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/vpnapp/VpnServer;->flag:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/vpnapp/VpnServer;->username:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/vpnapp/VpnServer;->password:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    .line 26
    iput p7, p0, Lcom/vpnapp/VpnServer;->port:I

    .line 27
    return-void
.end method


# virtual methods
.method public effectivePort()I
    .locals 4

    .line 30
    iget v0, p0, Lcom/vpnapp/VpnServer;->port:I

    const/16 v1, 0x6bb

    const/16 v2, 0x16

    if-lez v0, :cond_0

    iget v1, p0, Lcom/vpnapp/VpnServer;->port:I

    return v1

    .line 31
    :cond_0
    const-string v0, "SSH"

    iget-object v3, p0, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    return v1

    .line 32
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/VpnServer;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "SSH"

    iget-object v2, p0, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "  [SSH:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vpnapp/VpnServer;->effectivePort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
