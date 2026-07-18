.class final synthetic Lcom/vpnapp/-$$Lambda$IpChecker$dRpLa0bMrxMSCuUki9yDWgHOHZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/IpChecker$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/IpChecker$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$IpChecker$dRpLa0bMrxMSCuUki9yDWgHOHZ4;->f$0:Lcom/vpnapp/IpChecker$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$IpChecker$dRpLa0bMrxMSCuUki9yDWgHOHZ4;->f$0:Lcom/vpnapp/IpChecker$Callback;

    invoke-static {v0}, Lcom/vpnapp/IpChecker;->lambda$0(Lcom/vpnapp/IpChecker$Callback;)V

    return-void
.end method
