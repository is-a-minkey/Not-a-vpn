.class final synthetic Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/MainActivity;

.field private final synthetic f$1:Lcom/vpnapp/RootManager$State;

.field private final synthetic f$2:Lcom/vpnapp/VpnServer;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/MainActivity;Lcom/vpnapp/RootManager$State;Lcom/vpnapp/VpnServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;->f$0:Lcom/vpnapp/MainActivity;

    iput-object p2, p0, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;->f$1:Lcom/vpnapp/RootManager$State;

    iput-object p3, p0, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;->f$2:Lcom/vpnapp/VpnServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;->f$0:Lcom/vpnapp/MainActivity;

    iget-object v1, p0, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;->f$1:Lcom/vpnapp/RootManager$State;

    iget-object v2, p0, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;->f$2:Lcom/vpnapp/VpnServer;

    invoke-static {v0, v1, v2}, Lcom/vpnapp/MainActivity;->lambda$26(Lcom/vpnapp/MainActivity;Lcom/vpnapp/RootManager$State;Lcom/vpnapp/VpnServer;)V

    return-void
.end method
