.class final synthetic Lcom/vpnapp/-$$Lambda$WireGuardUpdater$Fi5BQXif3bpJAM-M-Gmr-YtIIWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/WireGuardUpdater;

.field private final synthetic f$1:Lcom/vpnapp/WireGuardUpdater$UpdateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/WireGuardUpdater;Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$WireGuardUpdater$Fi5BQXif3bpJAM-M-Gmr-YtIIWM;->f$0:Lcom/vpnapp/WireGuardUpdater;

    iput-object p2, p0, Lcom/vpnapp/-$$Lambda$WireGuardUpdater$Fi5BQXif3bpJAM-M-Gmr-YtIIWM;->f$1:Lcom/vpnapp/WireGuardUpdater$UpdateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$WireGuardUpdater$Fi5BQXif3bpJAM-M-Gmr-YtIIWM;->f$0:Lcom/vpnapp/WireGuardUpdater;

    iget-object v1, p0, Lcom/vpnapp/-$$Lambda$WireGuardUpdater$Fi5BQXif3bpJAM-M-Gmr-YtIIWM;->f$1:Lcom/vpnapp/WireGuardUpdater$UpdateCallback;

    invoke-static {v0, v1}, Lcom/vpnapp/WireGuardUpdater;->lambda$0(Lcom/vpnapp/WireGuardUpdater;Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)V

    return-void
.end method
