.class public Lcom/vpnapp/ServerTester$TestedServer;
.super Ljava/lang/Object;
.source "ServerTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/ServerTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestedServer"
.end annotation


# instance fields
.field public final latencyMs:J

.field public final reachable:Z

.field public final server:Lcom/vpnapp/VpnServer;


# direct methods
.method public constructor <init>(Lcom/vpnapp/VpnServer;JZ)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iput-wide p2, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    iput-boolean p4, p0, Lcom/vpnapp/ServerTester$TestedServer;->reachable:Z

    .line 84
    return-void
.end method


# virtual methods
.method public latencyLabel()Ljava/lang/String;
    .locals 4

    .line 87
    iget-wide v0, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "manual"

    return-object v0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/vpnapp/ServerTester$TestedServer;->reachable:Z

    if-nez v0, :cond_1

    const-string v0, "offline"

    return-object v0

    .line 89
    :cond_1
    iget-wide v0, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    const-wide/16 v2, 0x50

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ms \u25cf"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_2
    iget-wide v0, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ms \u25d1"

    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ms \u25cb"

    goto :goto_0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v1, v1, Lcom/vpnapp/VpnServer;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v1, v1, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vpnapp/ServerTester$TestedServer;->latencyLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
