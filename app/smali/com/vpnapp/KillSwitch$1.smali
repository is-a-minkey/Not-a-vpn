.class Lcom/vpnapp/KillSwitch$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "KillSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpnapp/KillSwitch;->arm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpnapp/KillSwitch;


# direct methods
.method constructor <init>(Lcom/vpnapp/KillSwitch;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/vpnapp/KillSwitch$1;->this$0:Lcom/vpnapp/KillSwitch;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/vpnapp/KillSwitch$1;->this$0:Lcom/vpnapp/KillSwitch;

    invoke-static {v0}, Lcom/vpnapp/KillSwitch;->access$0(Lcom/vpnapp/KillSwitch;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v0

    .line 31
    :cond_0
    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/vpnapp/KillSwitch$1;->this$0:Lcom/vpnapp/KillSwitch;

    invoke-static {p1}, Lcom/vpnapp/KillSwitch;->access$1(Lcom/vpnapp/KillSwitch;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/vpnapp/KillSwitch$1;->this$0:Lcom/vpnapp/KillSwitch;

    invoke-static {p1}, Lcom/vpnapp/KillSwitch;->access$0(Lcom/vpnapp/KillSwitch;)Landroid/net/ConnectivityManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    return-void

    .line 33
    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const-string v0, "KillSwitch"

    const-string v1, "bind failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_1
    return-void
.end method
