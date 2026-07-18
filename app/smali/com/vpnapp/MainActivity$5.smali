.class Lcom/vpnapp/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/vpnapp/WireGuardUpdater$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpnapp/MainActivity;->checkWireGuardUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpnapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/vpnapp/MainActivity;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$0(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$6(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$1(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$6(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$2(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$6(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WireGuard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$6(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xcb2c67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WireGuard updated to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$7(Lcom/vpnapp/MainActivity;)Lcom/vpnapp/ServerStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vpnapp/ServerStore;->saveWgCacheVersion(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method static synthetic lambda$3(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$6(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WireGuard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (up to date)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object p1, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    const-string v0, "Already up to date"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 447
    return-void
.end method

.method static synthetic lambda$4(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$6(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Update check failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 453
    return-void
.end method


# virtual methods
.method public onAlreadyUpToDate(Ljava/lang/String;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$5$uUx4Llcrb1hEdLes92Gi2MRvlZY;

    invoke-direct {v1, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$5$uUx4Llcrb1hEdLes92Gi2MRvlZY;-><init>(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$5$31E3Eb9BQqBxFbWi6A1CVgrx4No;

    invoke-direct {v1, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$5$31E3Eb9BQqBxFbWi6A1CVgrx4No;-><init>(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    return-void
.end method

.method public onStatus(Ljava/lang/String;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$5$bxP0qFflfQX0FnvQBtCIpoEyYio;

    invoke-direct {v1, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$5$bxP0qFflfQX0FnvQBtCIpoEyYio;-><init>(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-void
.end method

.method public onUpdateAvailable(Ljava/lang/String;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$5$r_pU9GtH9tk43xiwHRhuF4x5tRE;

    invoke-direct {v1, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$5$r_pU9GtH9tk43xiwHRhuF4x5tRE;-><init>(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method public onUpdateInstalled(Ljava/lang/String;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/vpnapp/MainActivity$5;->this$0:Lcom/vpnapp/MainActivity;

    invoke-static {v0}, Lcom/vpnapp/MainActivity;->access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$5$X9PbbAGb51aMivROKa78VoARstI;

    invoke-direct {v1, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$5$X9PbbAGb51aMivROKa78VoARstI;-><init>(Lcom/vpnapp/MainActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method
