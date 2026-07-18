.class final synthetic Lcom/vpnapp/-$$Lambda$TunProxy$cDMMh9YPDmt8n1QCk_ghBTx7qD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/TunProxy;

.field private final synthetic f$1:Lcom/vpnapp/TcpSession;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/TunProxy;Lcom/vpnapp/TcpSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$TunProxy$cDMMh9YPDmt8n1QCk_ghBTx7qD0;->f$0:Lcom/vpnapp/TunProxy;

    iput-object p2, p0, Lcom/vpnapp/-$$Lambda$TunProxy$cDMMh9YPDmt8n1QCk_ghBTx7qD0;->f$1:Lcom/vpnapp/TcpSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$TunProxy$cDMMh9YPDmt8n1QCk_ghBTx7qD0;->f$0:Lcom/vpnapp/TunProxy;

    iget-object v1, p0, Lcom/vpnapp/-$$Lambda$TunProxy$cDMMh9YPDmt8n1QCk_ghBTx7qD0;->f$1:Lcom/vpnapp/TcpSession;

    invoke-static {v0, v1}, Lcom/vpnapp/TunProxy;->lambda$0(Lcom/vpnapp/TunProxy;Lcom/vpnapp/TcpSession;)V

    return-void
.end method
