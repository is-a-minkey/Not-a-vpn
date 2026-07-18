.class final synthetic Lcom/vpnapp/-$$Lambda$ServerTester$tWMVV3np2BI40wqgrepUR39G6QI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/VpnServer;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/VpnServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$ServerTester$tWMVV3np2BI40wqgrepUR39G6QI;->f$0:Lcom/vpnapp/VpnServer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$ServerTester$tWMVV3np2BI40wqgrepUR39G6QI;->f$0:Lcom/vpnapp/VpnServer;

    invoke-static {v0}, Lcom/vpnapp/ServerTester;->lambda$0(Lcom/vpnapp/VpnServer;)Lcom/vpnapp/ServerTester$TestedServer;

    move-result-object v0

    return-object v0
.end method
