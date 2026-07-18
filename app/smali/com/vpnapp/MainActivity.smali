.class public Lcom/vpnapp/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final MAX_RECONNECT:I = 0x5

.field private static final VPN_REQUEST:I = 0x3e9

.field private static final WG_FILE_REQUEST:I = 0x3ea


# instance fields
.field private btnAddSsh:Landroid/widget/TextView;

.field private btnAddWireGuard:Landroid/widget/TextView;

.field private pendingWgConf:Ljava/lang/String;

.field private btnConnect:Landroid/widget/Button;

.field private btnGlow:Landroid/view/View;

.field private cbKillSwitch:Landroid/widget/CheckBox;

.field private durationRunnable:Ljava/lang/Runnable;

.field private errorCard:Landroid/view/View;

.field private etSearch:Landroid/widget/EditText;

.field private filteredServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vpnapp/ServerTester$TestedServer;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private killSwitchCard:Landroid/view/View;

.field private lastRx:J

.field private lastTime:J

.field private lastTx:J

.field private progressBar:Landroid/widget/ProgressBar;

.field private reconnectAttempts:I

.field private rxBase:J

.field private selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

.field private spinnerCountry:Landroid/widget/Spinner;

.field private spinnerProtocol:Landroid/widget/Spinner;

.field private statsCard:Landroid/view/View;

.field private statsRunnable:Ljava/lang/Runnable;

.field private store:Lcom/vpnapp/ServerStore;

.field private final subStatusReceiver:Landroid/content/BroadcastReceiver;

.field private testedServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vpnapp/ServerTester$TestedServer;",
            ">;"
        }
    .end annotation
.end field

.field private tvDown:Landroid/widget/TextView;

.field private tvDuration:Landroid/widget/TextView;

.field private tvError:Landroid/widget/TextView;

.field private tvHandshake:Landroid/widget/TextView;

.field private tvPing:Landroid/widget/TextView;

.field private tvProgress:Landroid/widget/TextView;

.field private tvProtocol:Landroid/widget/TextView;

.field private tvPublicIp:Landroid/widget/TextView;

.field private tvRx:Landroid/widget/TextView;

.field private tvServer:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private tvSubStatus:Landroid/widget/TextView;

.field private tvTx:Landroid/widget/TextView;

.field private tvUp:Landroid/widget/TextView;

.field private tvWgVersion:Landroid/widget/TextView;

.field private txBase:J

.field private final vpnReceiver:Landroid/content/BroadcastReceiver;

.field private wgConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vpnapp/WireGuardScraper$WgServerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->wgConfigs:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vpnapp/MainActivity;->rxBase:J

    iput-wide v0, p0, Lcom/vpnapp/MainActivity;->txBase:J

    .line 60
    new-instance v0, Lcom/vpnapp/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/vpnapp/MainActivity$1;-><init>(Lcom/vpnapp/MainActivity;)V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->vpnReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lcom/vpnapp/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/vpnapp/MainActivity$2;-><init>(Lcom/vpnapp/MainActivity;)V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->subStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/vpnapp/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1, p2}, Lcom/vpnapp/MainActivity;->handleStateChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$10(Lcom/vpnapp/MainActivity;)J
    .locals 2

    .line 691
    iget-wide v0, p0, Lcom/vpnapp/MainActivity;->lastRx:J

    return-wide v0
.end method

.method static synthetic access$11(J)Ljava/lang/String;
    .locals 0

    .line 776
    invoke-static {p0, p1}, Lcom/vpnapp/MainActivity;->fmtSpeed(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvUp:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$13(Lcom/vpnapp/MainActivity;)J
    .locals 2

    .line 691
    iget-wide v0, p0, Lcom/vpnapp/MainActivity;->lastTx:J

    return-wide v0
.end method

.method static synthetic access$14(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvRx:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$15(Lcom/vpnapp/MainActivity;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/vpnapp/MainActivity;->rxBase:J

    return-wide v0
.end method

.method static synthetic access$16(J)Ljava/lang/String;
    .locals 0

    .line 783
    invoke-static {p0, p1}, Lcom/vpnapp/MainActivity;->fmtBytes(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$17(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvTx:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$18(Lcom/vpnapp/MainActivity;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/vpnapp/MainActivity;->txBase:J

    return-wide v0
.end method

.method static synthetic access$19(Lcom/vpnapp/MainActivity;J)V
    .locals 0

    .line 691
    iput-wide p1, p0, Lcom/vpnapp/MainActivity;->lastRx:J

    return-void
.end method

.method static synthetic access$2(Lcom/vpnapp/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->filterServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vpnapp/MainActivity;J)V
    .locals 0

    .line 691
    iput-wide p1, p0, Lcom/vpnapp/MainActivity;->lastTx:J

    return-void
.end method

.method static synthetic access$21(Lcom/vpnapp/MainActivity;J)V
    .locals 0

    .line 691
    iput-wide p1, p0, Lcom/vpnapp/MainActivity;->lastTime:J

    return-void
.end method

.method static synthetic access$22(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvHandshake:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$23(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3(Lcom/vpnapp/MainActivity;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4(Lcom/vpnapp/MainActivity;Lcom/vpnapp/ServerTester$TestedServer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    return-void
.end method

.method static synthetic access$5(Lcom/vpnapp/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvWgVersion:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$7(Lcom/vpnapp/MainActivity;)Lcom/vpnapp/ServerStore;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    return-object p0
.end method

.method static synthetic access$8(Lcom/vpnapp/MainActivity;)J
    .locals 2

    .line 691
    iget-wide v0, p0, Lcom/vpnapp/MainActivity;->lastTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/vpnapp/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/vpnapp/MainActivity;->tvDown:Landroid/widget/TextView;

    return-object p0
.end method

.method private addManualServer(Lcom/vpnapp/VpnServer;)V
    .locals 4

    .line 360
    new-instance v0, Lcom/vpnapp/ServerTester$TestedServer;

    const-wide/16 v1, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/vpnapp/ServerTester$TestedServer;-><init>(Lcom/vpnapp/VpnServer;JZ)V

    .line 361
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 362
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 363
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->filterServers(Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 365
    iput-object v0, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    .line 366
    const-string p1, "SSH server added"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 367
    return-void
.end method

.method private bindViews()V
    .locals 4

    .line 113
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvProtocol:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvDuration:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvServer:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvPing:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvDown:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvUp:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvRx:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvTx:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvHandshake:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvWgVersion:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    .line 127
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->btnGlow:Landroid/view/View;

    .line 128
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    .line 129
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->etSearch:Landroid/widget/EditText;

    .line 130
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 131
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvProgress:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->statsCard:Landroid/view/View;

    .line 133
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->errorCard:Landroid/view/View;

    .line 134
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->tvError:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->killSwitchCard:Landroid/view/View;

    .line 136
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->cbKillSwitch:Landroid/widget/CheckBox;

    .line 137
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->btnAddSsh:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->btnAddWireGuard:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerProtocol:Landroid/widget/Spinner;

    .line 140
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->statsCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->errorCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->killSwitchCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    const-string v0, "Auto (best)"

    const-string v1, "WireGuard"

    const-string v2, "PPTP"

    const-string v3, "SSH"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 147
    nop

    .line 146
    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 148
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 149
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerProtocol:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 152
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvWgVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WireGuard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->wgVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvWgVersion:Landroid/widget/TextView;

    const-string v1, "WireGuard not loaded"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvWgVersion:Landroid/widget/TextView;

    const v1, -0x78e8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    return-void
.end method

.method private buildTestedList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vpnapp/ServerTester$TestedServer;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->etSearch:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vpnapp/MainActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->filterServers(Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vpnapp/ServerTester$TestedServer;

    iput-object p1, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    return-void
.end method

.method private checkWireGuardUpdate()V
    .locals 2

    .line 423
    const-string v0, "CONNECTED"

    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "Disconnect first before updating WireGuard"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 425
    return-void

    .line 427
    :cond_0
    const-string v0, "Checking for WireGuard update\u2026"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    new-instance v0, Lcom/vpnapp/WireGuardUpdater;

    invoke-direct {v0, p0}, Lcom/vpnapp/WireGuardUpdater;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/vpnapp/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/vpnapp/MainActivity$5;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/vpnapp/WireGuardUpdater;->checkAndUpdate(Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)V

    .line 456
    return-void
.end method

.method private copyPublicIp()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IP: "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    const-string v1, "Public IP"

    invoke-direct {p0, v1, v0}, Lcom/vpnapp/MainActivity;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Copied: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 462
    :cond_1
    :goto_0
    const-string v0, "Fetching IP\u2026"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    new-instance v0, Lcom/vpnapp/-$$Lambda$MainActivity$UIkYYCWoTok1CXfAEBdVqwbHOaI;

    invoke-direct {v0, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$UIkYYCWoTok1CXfAEBdVqwbHOaI;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-static {v0}, Lcom/vpnapp/IpChecker;->check(Lcom/vpnapp/IpChecker$Callback;)V

    .line 468
    nop

    .line 472
    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 761
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 762
    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 763
    :cond_0
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 773
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/vpnapp/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private static fallbackServers()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vpnapp/VpnServer;",
            ">;"
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    new-instance v8, Lcom/vpnapp/VpnServer;

    const-string v2, "United States"

    const-string v3, "\ud83c\uddfa\ud83c\uddf8"

    const-string v4, "us1.vpnbook.com"

    const-string v5, "vpnbook"

    const-string v6, ""

    const-string v7, "PPTP"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v1, Lcom/vpnapp/VpnServer;

    const-string v10, "United Kingdom"

    const-string v11, "\ud83c\uddec\ud83c\udde7"

    const-string v12, "uk.vpnbook.com"

    const-string v13, "vpnbook"

    const-string v14, ""

    const-string v15, "PPTP"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance v1, Lcom/vpnapp/VpnServer;

    const-string v3, "Canada"

    const-string v4, "\ud83c\udde8\ud83c\udde6"

    const-string v5, "ca198.vpnbook.com"

    const-string v6, "vpnbook"

    const-string v7, ""

    const-string v8, "PPTP"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v1, Lcom/vpnapp/VpnServer;

    const-string v10, "Germany"

    const-string v11, "\ud83c\udde9\ud83c\uddea"

    const-string v12, "de233.vpnbook.com"

    const-string v13, "vpnbook"

    const-string v14, ""

    const-string v15, "PPTP"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    return-object v0
.end method

.method private filterServers(Ljava/lang/String;)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 279
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 287
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [Ljava/lang/String;

    .line 288
    const/4 v2, 0x0

    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 290
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 291
    nop

    .line 290
    const v0, 0x1090008

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 292
    const v0, 0x1090009

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 293
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 294
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 295
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vpnapp/ServerTester$TestedServer;

    iput-object p1, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    .line 296
    :cond_1
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vpnapp/ServerTester$TestedServer;

    invoke-virtual {v0}, Lcom/vpnapp/ServerTester$TestedServer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    .line 288
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vpnapp/ServerTester$TestedServer;

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 281
    iget-object v2, v1, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v2, v2, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 282
    iget-object v2, v1, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v2, v2, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 283
    iget-object v2, v1, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v2, v2, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    :cond_4
    iget-object v2, p0, Lcom/vpnapp/MainActivity;->filteredServers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static fmtBytes(J)Ljava/lang/String;
    .locals 5

    .line 784
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    .line 785
    :cond_0
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    const-string v0, "%.2f GB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    :goto_0
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 786
    :cond_1
    const-wide/32 v3, 0x100000

    cmp-long v0, p0, v3

    if-ltz v0, :cond_2

    const-string v0, "%.1f MB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_0

    .line 787
    :cond_2
    const-wide/16 v3, 0x400

    cmp-long v0, p0, v3

    if-ltz v0, :cond_3

    const-string v0, "%.0f KB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_0

    .line 788
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static fmtSpeed(J)Ljava/lang/String;
    .locals 5

    .line 777
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string p0, "\u2014"

    return-object p0

    .line 778
    :cond_0
    const-wide/32 v0, 0xf4240

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    const-string v0, "%.1f MB/s"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    :goto_0
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 779
    :cond_1
    const-wide/16 v3, 0x3e8

    cmp-long v0, p0, v3

    if-ltz v0, :cond_2

    const-string v0, "%.0f KB/s"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_0

    .line 780
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " B/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 590
    if-nez p1, :cond_0

    const-string p1, "DISCONNECTED"

    .line 591
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    const-string p2, "DISCONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->setDisconnectedUI()V

    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->stopStats()V

    return-void

    :sswitch_1
    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 599
    :cond_2
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->stopStats()V

    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->setDisconnectedUI()V

    .line 600
    if-eqz p2, :cond_3

    move-object p1, p2

    goto :goto_0

    :cond_3
    const-string p1, "Connection error"

    :goto_0
    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->showError(Ljava/lang/String;)V

    .line 602
    if-eqz p2, :cond_5

    const-string p1, "password"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "auth"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 603
    const-string p1, "credential"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "denied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 604
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Auth failed \u2014 check credentials: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->showError(Ljava/lang/String;)V

    .line 605
    return-void

    .line 606
    :cond_5
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->maybeAutoReconnect()V

    return-void

    :sswitch_2
    const-string p2, "CONNECTING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 593
    :cond_6
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->setConnectingUI()V

    return-void

    :sswitch_3
    const-string p2, "CONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 595
    :cond_7
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->setConnectedUI()V

    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->startStats()V

    .line 610
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c6dfd17 -> :sswitch_3
        -0x11519548 -> :sswitch_2
        0x3f2d9e8 -> :sswitch_1
        0x37c8963b -> :sswitch_0
    .end sparse-switch
.end method

.method private haptic(J)V
    .locals 2

    .line 767
    :try_start_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 768
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 769
    return-void

    :catch_0
    move-exception p1

    .line 770
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private inp(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 1

    .line 348
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 350
    const p1, -0xe0a07

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 351
    const p1, -0xa49988

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 352
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 353
    if-eqz p2, :cond_0

    .line 354
    const/16 p1, 0x81

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 356
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$0(Lcom/vpnapp/MainActivity;Landroid/view/View;)V
    .locals 2

    .line 162
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/vpnapp/MainActivity;->haptic(J)V

    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->onConnectClicked()V

    return-void
.end method

.method static synthetic lambda$1(Lcom/vpnapp/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->showAddSshDialog()V

    return-void
.end method

.method static synthetic lambda$10(Lcom/vpnapp/VpnServer;)Lcom/vpnapp/ServerTester$TestedServer;
    .locals 4

    .line 217
    new-instance v0, Lcom/vpnapp/ServerTester$TestedServer;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vpnapp/ServerTester$TestedServer;-><init>(Lcom/vpnapp/VpnServer;JZ)V

    return-object v0
.end method

.method static synthetic lambda$11(Lcom/vpnapp/MainActivity;)V
    .locals 5

    .line 224
    :try_start_0
    invoke-static {}, Lcom/vpnapp/WireGuardScraper;->scrape()Ljava/util/List;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->wgConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/vpnapp/MainActivity;->wgConfigs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/vpnapp/-$$Lambda$MainActivity$gBLlKo_gr4jNBJMhrZLKgrL_ELY;

    invoke-direct {v2, p0, v0}, Lcom/vpnapp/-$$Lambda$MainActivity$gBLlKo_gr4jNBJMhrZLKgrL_ELY;-><init>(Lcom/vpnapp/MainActivity;Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .line 232
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/vpnapp/VpnBookScraper;->scrape()Ljava/util/List;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vpnapp/VpnServer;

    iget-object v2, v2, Lcom/vpnapp/VpnServer;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/vpnapp/-$$Lambda$MainActivity$MwffmweugAcx22XXPBkptG9jbR0;

    invoke-direct {v3, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$MwffmweugAcx22XXPBkptG9jbR0;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vpnapp/VpnServer;

    iget-object v3, v3, Lcom/vpnapp/VpnServer;->username:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vpnapp/VpnServer;

    iget-object v4, v4, Lcom/vpnapp/VpnServer;->password:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vpnapp/ServerStore;->savePptpCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {v2, v1}, Lcom/vpnapp/ServerStore;->cacheServerList(Ljava/util/List;)V

    .line 240
    goto :goto_4

    :catch_1
    move-exception v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {v1}, Lcom/vpnapp/ServerStore;->hasCachedServers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {v1}, Lcom/vpnapp/ServerStore;->loadCachedServers()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 243
    :cond_2
    invoke-static {}, Lcom/vpnapp/MainActivity;->fallbackServers()Ljava/util/List;

    move-result-object v1

    .line 241
    :goto_3
    nop

    .line 244
    iget-object v2, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/vpnapp/-$$Lambda$MainActivity$CpxIZDTyik8qLGlLcN_ASOH_vMk;

    invoke-direct {v3, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$CpxIZDTyik8qLGlLcN_ASOH_vMk;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {v1}, Lcom/vpnapp/ServerStore;->loadSshServers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 251
    nop

    .line 252
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$0zwucqmGxVKAbw7E8x4sRA65IJw;

    invoke-direct {v1, p0, v2}, Lcom/vpnapp/-$$Lambda$MainActivity$0zwucqmGxVKAbw7E8x4sRA65IJw;-><init>(Lcom/vpnapp/MainActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    nop

    .line 255
    new-instance v0, Lcom/vpnapp/-$$Lambda$MainActivity$AtsCrjBmngUmXiY_XYvUTV0JwjA;

    invoke-direct {v0, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$AtsCrjBmngUmXiY_XYvUTV0JwjA;-><init>(Lcom/vpnapp/MainActivity;)V

    .line 254
    invoke-static {v2, v0}, Lcom/vpnapp/ServerTester;->rankServers(Ljava/util/List;Lcom/vpnapp/ServerTester$ProgressCallback;)Ljava/util/List;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/vpnapp/-$$Lambda$MainActivity$wnKD4vD6B0H5IZw1wtXBl7KKRPc;

    invoke-direct {v2, p0, v0}, Lcom/vpnapp/-$$Lambda$MainActivity$wnKD4vD6B0H5IZw1wtXBl7KKRPc;-><init>(Lcom/vpnapp/MainActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method static synthetic lambda$12(Lcom/vpnapp/MainActivity;Ljava/util/List;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WG: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configs"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$14(Lcom/vpnapp/MainActivity;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvProgress:Landroid/widget/TextView;

    const-string v1, "Offline \u2014 using cache"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$15(Lcom/vpnapp/MainActivity;Ljava/util/List;)V
    .locals 2

    .line 252
    const-string v0, "Testing latency\u2026"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/vpnapp/MainActivity;->setProgressUI(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic lambda$16(Lcom/vpnapp/MainActivity;II)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$cjTCWm8GBDLYLx8mk1cEjT0ttJ4;

    invoke-direct {v1, p0, p1, p2}, Lcom/vpnapp/-$$Lambda$MainActivity$cjTCWm8GBDLYLx8mk1cEjT0ttJ4;-><init>(Lcom/vpnapp/MainActivity;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method static synthetic lambda$17(Lcom/vpnapp/MainActivity;II)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Testing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/vpnapp/MainActivity;->setProgressUI(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic lambda$18(Lcom/vpnapp/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->onTestingComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$19(Lcom/vpnapp/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 8

    .line 323
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 327
    nop

    .line 328
    const/16 p2, 0x16

    :try_start_0
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    move v7, p3

    goto :goto_0

    .line 329
    :catch_0
    move-exception p3

    .line 329
    move v7, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_3

    .line 334
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, p1

    .line 335
    :goto_1
    new-instance p1, Lcom/vpnapp/VpnServer;

    const-string v2, "\ud83d\udd11"

    const-string v6, "SSH"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->addManualServer(Lcom/vpnapp/VpnServer;)V

    .line 338
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    iget-object p3, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 339
    :cond_2
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_3

    .line 341
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {p1, p2}, Lcom/vpnapp/ServerStore;->saveSshServers(Ljava/util/List;)V

    .line 343
    return-void

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/vpnapp/ServerTester$TestedServer;

    .line 340
    const-string p5, "SSH"

    iget-object p6, p4, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object p6, p6, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p4, p4, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 331
    :cond_4
    :goto_3
    const-string p1, "Host and username required"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 332
    return-void
.end method

.method static synthetic lambda$2(Lcom/vpnapp/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->loadAndTestServers()V

    return-void
.end method

.method static synthetic lambda$20(Lcom/vpnapp/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 376
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 377
    const-string p2, "Current VPNBook password"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 378
    const/16 p2, 0x81

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 380
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    const-string v0, "Enter password"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 382
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 383
    const-string v0, "Save"

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$uYVJMPlztruNAbr3uZxin_4IN2I;

    invoke-direct {v1, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$uYVJMPlztruNAbr3uZxin_4IN2I;-><init>(Lcom/vpnapp/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 400
    const-string p2, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 401
    return-void
.end method

.method static synthetic lambda$21(Lcom/vpnapp/MainActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 11

    .line 384
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 386
    iget-object p2, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    const-string p3, "vpnbook"

    invoke-virtual {p2, p3, p1}, Lcom/vpnapp/ServerStore;->savePptpCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object p2, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 388
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_1

    .line 396
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->filterServers(Ljava/lang/String;)V

    .line 397
    const-string p1, "Password saved"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vpnapp/ServerTester$TestedServer;

    .line 389
    const-string v0, "PPTP"

    iget-object v1, p3, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v1, v1, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v7, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 392
    new-instance v9, Lcom/vpnapp/ServerTester$TestedServer;

    .line 393
    new-instance v10, Lcom/vpnapp/VpnServer;

    iget-object v0, p3, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v1, v0, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    iget-object v0, p3, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v2, v0, Lcom/vpnapp/VpnServer;->flag:Ljava/lang/String;

    .line 394
    iget-object v0, p3, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v3, v0, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    const-string v4, "vpnbook"

    const-string v6, "PPTP"

    .line 393
    move-object v0, v10

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-wide v0, p3, Lcom/vpnapp/ServerTester$TestedServer;->latencyMs:J

    iget-boolean p3, p3, Lcom/vpnapp/ServerTester$TestedServer;->reachable:Z

    .line 392
    invoke-direct {v9, v10, v0, v1, p3}, Lcom/vpnapp/ServerTester$TestedServer;-><init>(Lcom/vpnapp/VpnServer;JZ)V

    .line 391
    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 399
    :cond_2
    return-void
.end method

.method static synthetic lambda$22(Lcom/vpnapp/MainActivity;Ljava/lang/String;Z)V
    .locals 1

    .line 463
    iget-object p2, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/vpnapp/-$$Lambda$MainActivity$N5H_ZhDTa5UJgf_z7r7HbsQoD5Q;

    invoke-direct {v0, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$N5H_ZhDTa5UJgf_z7r7HbsQoD5Q;-><init>(Lcom/vpnapp/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method

.method static synthetic lambda$23(Lcom/vpnapp/MainActivity;Ljava/lang/String;)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const-string v0, "Public IP"

    invoke-direct {p0, v0, p1}, Lcom/vpnapp/MainActivity;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Copied: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 467
    return-void
.end method

.method static synthetic lambda$24(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 556
    iget-object p2, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object p2, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const-string p3, "Waiting for root grant..."

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/vpnapp/-$$Lambda$MainActivity$TkDJ-AgMvGmkkd8vndGOCM1y3ks;

    invoke-direct {p3, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$TkDJ-AgMvGmkkd8vndGOCM1y3ks;-><init>(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;)V

    .line 572
    const-string p1, "root-request"

    .line 558
    invoke-direct {p2, p3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 573
    return-void
.end method

.method static synthetic lambda$25(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;)V
    .locals 4

    .line 559
    invoke-static {}, Lcom/vpnapp/RootManager;->requestRoot()Lcom/vpnapp/RootManager$State;

    move-result-object v0

    .line 560
    nop

    .line 561
    sget-object v1, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 560
    :goto_0
    invoke-static {p0, v3}, Lcom/vpnapp/RootManager;->saveGrantState(Landroid/content/Context;Z)V

    .line 562
    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;

    invoke-direct {v1, p0, v0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$uZbHTJuMWdiPUG_VV9BSuiBLpLo;-><init>(Lcom/vpnapp/MainActivity;Lcom/vpnapp/RootManager$State;Lcom/vpnapp/VpnServer;)V

    invoke-virtual {p0, v1}, Lcom/vpnapp/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 572
    return-void
.end method

.method static synthetic lambda$26(Lcom/vpnapp/MainActivity;Lcom/vpnapp/RootManager$State;Lcom/vpnapp/VpnServer;)V
    .locals 1

    .line 563
    sget-object v0, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    if-ne p1, v0, :cond_0

    .line 564
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const-string v0, "Root granted - using real GRE tunnel"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    const-string p1, "Root granted"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 566
    goto :goto_0

    .line 567
    :cond_0
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const-string v0, "Root denied - using proxy mode"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const-string p1, "Root denied - proxy mode"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 570
    :goto_0
    invoke-direct {p0, p2}, Lcom/vpnapp/MainActivity;->launchPptp(Lcom/vpnapp/VpnServer;)V

    .line 571
    return-void
.end method

.method static synthetic lambda$27(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 575
    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/vpnapp/RootManager;->saveGrantState(Landroid/content/Context;Z)V

    .line 576
    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->launchPptp(Lcom/vpnapp/VpnServer;)V

    .line 577
    return-void
.end method

.method static synthetic lambda$28(Lcom/vpnapp/MainActivity;)V
    .locals 2

    .line 623
    const-string v0, "CONNECTED"

    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->startVpnWithSelected()V

    .line 625
    :cond_0
    return-void
.end method

.method static synthetic lambda$29(Lcom/vpnapp/MainActivity;)V
    .locals 1

    .line 663
    new-instance v0, Lcom/vpnapp/-$$Lambda$MainActivity$PT2S_hwtycFKsI2ujPe3ueNxtA4;

    invoke-direct {v0, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$PT2S_hwtycFKsI2ujPe3ueNxtA4;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-static {v0}, Lcom/vpnapp/IpChecker;->check(Lcom/vpnapp/IpChecker$Callback;)V

    .line 667
    return-void
.end method

.method static synthetic lambda$3(Lcom/vpnapp/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->copyPublicIp()V

    return-void
.end method

.method static synthetic lambda$30(Lcom/vpnapp/MainActivity;Ljava/lang/String;Z)V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$H7Qn5uxfRoZ0OgknlWHKPbQYvCc;

    invoke-direct {v1, p0, p1, p2}, Lcom/vpnapp/-$$Lambda$MainActivity$H7Qn5uxfRoZ0OgknlWHKPbQYvCc;-><init>(Lcom/vpnapp/MainActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    return-void
.end method

.method static synthetic lambda$31(Lcom/vpnapp/MainActivity;Ljava/lang/String;Z)V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    const v0, -0x6b5c48

    const v1, -0xcb2c67

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    return-void
.end method

.method static synthetic lambda$32(Lcom/vpnapp/MainActivity;)V
    .locals 5

    .line 736
    nop

    .line 736
    :goto_0
    const-string v0, "CONNECTED"

    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 739
    const-string v2, "1.1.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v2

    .line 740
    const-wide/16 v3, -0x1

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    move-wide v3, v0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$ngDkufoFmfG8Tjh6f7VipXnC69M;

    invoke-direct {v1, p0, v3, v4}, Lcom/vpnapp/-$$Lambda$MainActivity$ngDkufoFmfG8Tjh6f7VipXnC69M;-><init>(Lcom/vpnapp/MainActivity;J)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    nop

    .line 743
    :goto_2
    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 745
    return-void
.end method

.method static synthetic lambda$33(Lcom/vpnapp/MainActivity;J)V
    .locals 3

    .line 741
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvPing:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "\u2014"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$4(Lcom/vpnapp/MainActivity;Landroid/view/View;)V
    .locals 1

    .line 168
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/vpnapp/SplitTunnelActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/vpnapp/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$5(Lcom/vpnapp/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->checkWireGuardUpdate()V

    return-void
.end method

.method static synthetic lambda$6(Lcom/vpnapp/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->showInfoDialog()V

    return-void
.end method

.method static synthetic lambda$7(Lcom/vpnapp/MainActivity;Landroid/view/View;)Z
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    if-eqz p1, :cond_0

    .line 182
    const-string p1, "Server hostname"

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    iget-object v0, v0, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v0, v0, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/vpnapp/MainActivity;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Copied: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    iget-object v0, v0, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v0, v0, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 185
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$8(Lcom/vpnapp/MainActivity;Landroid/view/View;)Z
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IP: "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u2014"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "Public IP"

    invoke-direct {p0, v0, p1}, Lcom/vpnapp/MainActivity;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Copied: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 202
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$9(Lcom/vpnapp/MainActivity;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvProgress:Landroid/widget/TextView;

    const-string v1, "Using cached servers \u2014 refreshing\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$MwffmweugAcx22XXPBkptG9jbR0(Lcom/vpnapp/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->showPasswordMissingDialog()V

    return-void
.end method

.method private launchPptp(Lcom/vpnapp/VpnServer;)V
    .locals 9

    .line 583
    nop

    .line 584
    new-instance v8, Lcom/vpnapp/VpnServer;

    iget-object v1, p1, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    iget-object v2, p1, Lcom/vpnapp/VpnServer;->flag:Ljava/lang/String;

    iget-object v3, p1, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    .line 585
    iget-object v4, p1, Lcom/vpnapp/VpnServer;->username:Ljava/lang/String;

    iget-object v5, p1, Lcom/vpnapp/VpnServer;->password:Ljava/lang/String;

    const-string v6, "PPTP"

    iget v7, p1, Lcom/vpnapp/VpnServer;->port:I

    .line 584
    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 583
    invoke-static {p0, v8}, Lcom/vpnapp/VpnTunnelService;->connect(Landroid/content/Context;Lcom/vpnapp/VpnServer;)V

    .line 586
    return-void
.end method

.method private loadAndTestServers()V
    .locals 3

    .line 208
    const-string v0, "Loading servers\u2026"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vpnapp/MainActivity;->setProgressUI(Ljava/lang/String;II)V

    .line 209
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {v0}, Lcom/vpnapp/ServerStore;->hasCachedServers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {v0}, Lcom/vpnapp/ServerStore;->loadCachedServers()Ljava/util/List;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/vpnapp/-$$Lambda$MainActivity$yHc_8590UUJ1piLAPVhd24JaF6Q;

    invoke-direct {v2, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$yHc_8590UUJ1piLAPVhd24JaF6Q;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;->INSTANCE:Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 218
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    invoke-direct {p0, v0}, Lcom/vpnapp/MainActivity;->buildTestedList(Ljava/util/List;)V

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$d6h6HKG2ijOF1OrY5oPPCrXRSs4;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$d6h6HKG2ijOF1OrY5oPPCrXRSs4;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    return-void
.end method

.method private maybeAutoReconnect()V
    .locals 7

    .line 613
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    iget v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    .line 619
    iget v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 620
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retry "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    const v1, -0x440dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$35bNAqU_95caJIB8o1uzp4BXfVw;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$35bNAqU_95caJIB8o1uzp4BXfVw;-><init>(Lcom/vpnapp/MainActivity;)V

    .line 625
    nop

    .line 622
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    return-void

    .line 614
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    if-lt v0, v1, :cond_2

    .line 615
    const-string v0, "Failed after 5 attempts. Check your connection."

    invoke-direct {p0, v0}, Lcom/vpnapp/MainActivity;->showError(Ljava/lang/String;)V

    .line 616
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    return-void
.end method

.method private onConnectClicked()V
    .locals 3

    .line 476
    sget-object v0, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    .line 477
    const-string v1, "CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 478
    const-string v1, "CONNECTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    if-nez v0, :cond_1

    .line 484
    const-string v0, "Select a server first"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 485
    return-void

    .line 487
    :cond_1
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_2

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/vpnapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->startVpnWithSelected()V

    return-void

    .line 479
    :cond_3
    :goto_0
    invoke-static {}, Lcom/vpnapp/IpChecker;->reset()V

    .line 480
    invoke-static {p0}, Lcom/vpnapp/VpnTunnelService;->disconnect(Landroid/content/Context;)V

    .line 481
    iput v2, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    .line 482
    nop

    .line 491
    return-void
.end method

.method private onTestingComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vpnapp/ServerTester$TestedServer;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1}, Lcom/vpnapp/MainActivity;->buildTestedList(Ljava/util/List;)V

    .line 264
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/vpnapp/MainActivity;->tvProgress:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vpnapp/MainActivity;->testedServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " servers  \u2022  fastest first"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method private setConnectedUI()V
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "CONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    const v1, -0xcb2c67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const-string v1, "Tunnel active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const-string v2, "Disconnect"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const v2, 0x7f020001

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 647
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnGlow:Landroid/view/View;

    const v2, 0x7f020004

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 648
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const v2, -0xf7f2e6

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 649
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 650
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->statsCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->errorCard:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->cbKillSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->killSwitchCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :cond_0
    iput v1, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    .line 655
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvProtocol:Landroid/widget/TextView;

    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentProtocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    const-string v1, "\u2014"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vpnapp/VpnTunnelService;->currentProtocol:Ljava/lang/String;

    .line 656
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvServer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    iget-object v2, v2, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    iget-object v2, v2, Lcom/vpnapp/VpnServer;->host:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    invoke-virtual {v2}, Lcom/vpnapp/ServerTester$TestedServer;->latencyLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$CkXBysSVYYZngdXpr2c7SAF5Rqs;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$CkXBysSVYYZngdXpr2c7SAF5Rqs;-><init>(Lcom/vpnapp/MainActivity;)V

    .line 667
    nop

    .line 663
    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 668
    return-void
.end method

.method private setConnectingUI()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "CONNECTING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    const v1, -0x440dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const-string v2, "Cancel"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 634
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnGlow:Landroid/view/View;

    const v2, 0x7f020003

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 635
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const v2, -0xf7f2e6

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 636
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->statsCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->errorCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    return-void
.end method

.method private setDisconnectedUI()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "OFFLINE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvStatus:Landroid/widget/TextView;

    const v1, -0x6b5c48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvSubStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const-string v2, "Connect"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const v2, 0x7f020005

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 675
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnGlow:Landroid/view/View;

    const v2, 0x7f020003

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 676
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 677
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 678
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->statsCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->killSwitchCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvDuration:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvPing:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvDown:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvUp:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvHandshake:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    const-string v1, "\u2014"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    return-void
.end method

.method private setProgressUI(Ljava/lang/String;II)V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/vpnapp/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/vpnapp/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 758
    :cond_0
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnConnect:Landroid/widget/Button;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$rXYcAKsQkInP3PVRK9XuoQaCP_o;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$rXYcAKsQkInP3PVRK9XuoQaCP_o;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnAddSsh:Landroid/widget/TextView;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$dcBlJw1g5WjN1v4CUc65o2-PRfE;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$dcBlJw1g5WjN1v4CUc65o2-PRfE;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->btnAddWireGuard:Landroid/widget/TextView;

    new-instance v1, Lcom/vpnapp/MainActivity$WgPickerClickListener;

    invoke-direct {v1, p0}, Lcom/vpnapp/MainActivity$WgPickerClickListener;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$9s6gPhs-sJI4ZTLqA_Ct0SUCmF0;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$9s6gPhs-sJI4ZTLqA_Ct0SUCmF0;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$JqNbmwQWeRWztEG1AGwJ8JhQkLY;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$JqNbmwQWeRWztEG1AGwJ8JhQkLY;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$1hILV3maN8dMT7jUCL5MNwf16X8;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$1hILV3maN8dMT7jUCL5MNwf16X8;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$xv_oRmWpZ80p7PQ09rLW-u5i7FM;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$xv_oRmWpZ80p7PQ09rLW-u5i7FM;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$5VQf-ZkW1SI__zVrA5i1I7w2ivQ;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$5VQf-ZkW1SI__zVrA5i1I7w2ivQ;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/vpnapp/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/vpnapp/MainActivity$3;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$YdllVH564o4fyrRUtVYjkhVy8LQ;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$YdllVH564o4fyrRUtVYjkhVy8LQ;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->spinnerCountry:Landroid/widget/Spinner;

    new-instance v1, Lcom/vpnapp/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/vpnapp/MainActivity$4;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 196
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvPublicIp:Landroid/widget/TextView;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$8ZoQDDVo4Pb-YdZhGqVP7elPesw;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$8ZoQDDVo4Pb-YdZhGqVP7elPesw;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    return-void
.end method

.method private showAddSshDialog()V
    .locals 13

    .line 300
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 301
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/vpnapp/MainActivity;->dp(I)I

    move-result v2

    .line 303
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 305
    const-string v2, "Host (e.g. ssh.example.com)"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/vpnapp/MainActivity;->inp(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v6

    .line 306
    const-string v2, "Port (default 22)"

    invoke-direct {p0, v2, v3}, Lcom/vpnapp/MainActivity;->inp(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v10

    .line 307
    const-string v2, "Username"

    invoke-direct {p0, v2, v3}, Lcom/vpnapp/MainActivity;->inp(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v7

    .line 308
    const-string v2, "Password"

    invoke-direct {p0, v2, v1}, Lcom/vpnapp/MainActivity;->inp(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v8

    .line 309
    const-string v2, "Label (optional)"

    invoke-direct {p0, v2, v3}, Lcom/vpnapp/MainActivity;->inp(Ljava/lang/String;Z)Landroid/widget/EditText;

    move-result-object v9

    .line 311
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/widget/EditText;

    aput-object v6, v4, v3

    aput-object v10, v4, v1

    aput-object v7, v4, v2

    const/4 v1, 0x3

    aput-object v8, v4, v1

    const/4 v1, 0x4

    aput-object v9, v4, v1

    array-length v1, v4

    :goto_0
    if-lt v3, v1, :cond_0

    .line 319
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    const-string v2, "Add SSH Server"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 321
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 322
    const-string v1, "Add"

    new-instance v2, Lcom/vpnapp/-$$Lambda$MainActivity$Kdaal4TuN7_Xjbv1fiXekUVwbvg;

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/vpnapp/-$$Lambda$MainActivity$Kdaal4TuN7_Xjbv1fiXekUVwbvg;-><init>(Lcom/vpnapp/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 344
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 345
    return-void

    :cond_0
    aget-object v2, v4, v3

    .line 313
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 314
    nop

    .line 313
    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v5, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/vpnapp/MainActivity;->dp(I)I

    move-result v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 316
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->errorCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->tvError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    return-void
.end method

.method private showInfoDialog()V
    .locals 3

    .line 407
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    const-string v1, "not a vpn"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 410
    const-string v1, "This app creates an encrypted tunnel for your internet traffic.\n\nProtocols:\n\u2022 WireGuard \u2014 fastest, modern, open-source\n\u2022 PPTP \u2014 widest server availability\n\u2022 SSH \u2014 works on restrictive networks\n\nNo traffic logs are kept by this app.\nServers are provided free by VPNBook.\n\nWireGuard is a registered trademark of Jason A. Donenfeld."

    .line 409
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 418
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 419
    return-void
.end method

.method private showPasswordMissingDialog()V
    .locals 3

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    const-string v1, "VPNBook password needed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 373
    const-string v1, "The current VPNBook password couldn\'t be scraped automatically.\n\nVisit vpnbook.com to get the current password, then paste it below."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 375
    const-string v1, "Paste & Save"

    new-instance v2, Lcom/vpnapp/-$$Lambda$MainActivity$vWAoGKsJiwmITXGN218bMNJ5tYQ;

    invoke-direct {v2, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$vWAoGKsJiwmITXGN218bMNJ5tYQ;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 402
    const-string v1, "Dismiss"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 403
    return-void
.end method

.method private showRootRequestDialog(Lcom/vpnapp/VpnServer;)V
    .locals 3

    .line 534
    invoke-static {}, Lcom/vpnapp/PptpMtpdManager;->isMtpdAvailable()Z

    move-result v0

    .line 536
    if-eqz v0, :cond_0

    .line 537
    const-string v0, "PPTP works in two modes:\n\n[Root mode - recommended]\nUses Android built-in mtpd for a real GRE tunnel. Your IP changes and ALL traffic routes through the VPN, same as the original Android PPTP client. Requires granting root access.\n\n[Proxy mode - no root]\nTCP traffic is proxied through the app. Works on any device but some protocols may leak.\n\nGrant root access for the full GRE tunnel?"

    .line 546
    goto :goto_0

    .line 547
    :cond_0
    const-string v0, "Root access enables the full PPTP GRE tunnel via mtpd, but mtpd is not present on this device. Proxy mode will be used regardless.\n\nGrant root anyway?"

    .line 552
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 553
    const-string v2, "PPTP - Root Access"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 554
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 555
    const-string v1, "Grant Root"

    new-instance v2, Lcom/vpnapp/-$$Lambda$MainActivity$PzpiAmo1m1-xKQoyVtJ0veB8yhM;

    invoke-direct {v2, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$PzpiAmo1m1-xKQoyVtJ0veB8yhM;-><init>(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 574
    const-string v1, "Use Proxy Mode"

    new-instance v2, Lcom/vpnapp/-$$Lambda$MainActivity$cc9oM2fAakrgnvfuMB4xcEH5bek;

    invoke-direct {v2, p0, p1}, Lcom/vpnapp/-$$Lambda$MainActivity$cc9oM2fAakrgnvfuMB4xcEH5bek;-><init>(Lcom/vpnapp/MainActivity;Lcom/vpnapp/VpnServer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 578
    const-string v0, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 580
    return-void
.end method

.method private startStats()V
    .locals 2

    .line 694
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vpnapp/MainActivity;->lastRx:J

    .line 695
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vpnapp/MainActivity;->lastTx:J

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vpnapp/MainActivity;->lastTime:J

    .line 698
    new-instance v0, Lcom/vpnapp/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/vpnapp/MainActivity$6;-><init>(Lcom/vpnapp/MainActivity;)V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->statsRunnable:Ljava/lang/Runnable;

    .line 722
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpnapp/MainActivity;->statsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 724
    new-instance v0, Lcom/vpnapp/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/vpnapp/MainActivity$7;-><init>(Lcom/vpnapp/MainActivity;)V

    iput-object v0, p0, Lcom/vpnapp/MainActivity;->durationRunnable:Ljava/lang/Runnable;

    .line 732
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpnapp/MainActivity;->durationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$MainActivity$_XyS02U0o9g2X6hjAq9DZN8k77Q;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$MainActivity$_XyS02U0o9g2X6hjAq9DZN8k77Q;-><init>(Lcom/vpnapp/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 745
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 746
    return-void
.end method

.method pickWireGuardConfig()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/vpnapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleWgFileResult(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No file selected."

    invoke-direct {p0, v0}, Lcom/vpnapp/MainActivity;->showError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/vpnapp/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vpnapp/MainActivity;->readUriText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not read WireGuard config file."

    invoke-direct {p0, v0}, Lcom/vpnapp/MainActivity;->showError(Ljava/lang/String;)V

    return-void

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "WireGuard config file was empty."

    invoke-direct {p0, v0}, Lcom/vpnapp/MainActivity;->showError(Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object v1, p0, Lcom/vpnapp/MainActivity;->pendingWgConf:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->connectWithPendingWgConf()V

    return-void

    :cond_3
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/vpnapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private connectWithPendingWgConf()V
    .locals 8

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->pendingWgConf:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vpnapp/MainActivity;->pendingWgConf:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/vpnapp/MainActivity;->extractEndpointHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/vpnapp/VpnServer;

    const-string v3, "Custom"

    const-string v4, "\ud83d\udd12"

    const-string v5, ""

    const-string v6, ""

    const-string v7, "wireguard"

    invoke-direct/range {v1 .. v7}, Lcom/vpnapp/VpnServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/vpnapp/VpnTunnelService;->connectWireGuard(Landroid/content/Context;Lcom/vpnapp/VpnServer;Ljava/lang/String;)V

    return-void
.end method

.method private readUriText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractEndpointHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "Custom"

    return-object v0

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-lt v3, v5, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Endpoint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string v0, "Custom"

    return-object v0
.end method

.method private startVpnWithSelected()V
    .locals 7

    .line 494
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/vpnapp/MainActivity;->reconnectAttempts:I

    .line 496
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vpnapp/MainActivity;->rxBase:J

    .line 497
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vpnapp/MainActivity;->txBase:J

    .line 499
    iget-object v1, p0, Lcom/vpnapp/MainActivity;->selectedServer:Lcom/vpnapp/ServerTester$TestedServer;

    iget-object v1, v1, Lcom/vpnapp/ServerTester$TestedServer;->server:Lcom/vpnapp/VpnServer;

    .line 500
    iget-object v2, p0, Lcom/vpnapp/MainActivity;->spinnerProtocol:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 502
    const-string v3, "SSH"

    iget-object v4, v1, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ssh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 507
    :cond_1
    const-string v3, "pptp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "PPTP"

    iget-object v4, v1, Lcom/vpnapp/VpnServer;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v3, v0

    .line 509
    :cond_2
    if-eqz v3, :cond_4

    .line 511
    invoke-static {}, Lcom/vpnapp/RootManager;->getCachedState()Lcom/vpnapp/RootManager$State;

    move-result-object v0

    sget-object v2, Lcom/vpnapp/RootManager$State;->UNKNOWN:Lcom/vpnapp/RootManager$State;

    if-ne v0, v2, :cond_3

    .line 512
    invoke-static {}, Lcom/vpnapp/RootManager;->isSuAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    invoke-direct {p0, v1}, Lcom/vpnapp/MainActivity;->showRootRequestDialog(Lcom/vpnapp/VpnServer;)V

    .line 514
    return-void

    .line 516
    :cond_3
    invoke-direct {p0, v1}, Lcom/vpnapp/MainActivity;->launchPptp(Lcom/vpnapp/VpnServer;)V

    .line 517
    return-void

    .line 521
    :cond_4
    nop

    .line 522
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->isAvailable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/vpnapp/MainActivity;->wgConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 523
    iget-object v2, p0, Lcom/vpnapp/MainActivity;->wgConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 523
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vpnapp/WireGuardScraper$WgServerConfig;

    .line 524
    iget-object v5, v4, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->country:Ljava/lang/String;

    iget-object v6, v1, Lcom/vpnapp/VpnServer;->country:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, v4, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->rawConf:Ljava/lang/String;

    move-object v3, v2

    .line 525
    :goto_0
    if-nez v3, :cond_7

    iget-object v2, p0, Lcom/vpnapp/MainActivity;->wgConfigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;

    iget-object v3, v0, Lcom/vpnapp/WireGuardScraper$WgServerConfig;->rawConf:Ljava/lang/String;

    .line 528
    :cond_7
    if-eqz v3, :cond_8

    invoke-static {p0, v1, v3}, Lcom/vpnapp/VpnTunnelService;->connectWireGuard(Landroid/content/Context;Lcom/vpnapp/VpnServer;Ljava/lang/String;)V

    goto :goto_1

    .line 529
    :cond_8
    invoke-static {p0, v1}, Lcom/vpnapp/VpnTunnelService;->connect(Landroid/content/Context;Lcom/vpnapp/VpnServer;)V

    .line 530
    :goto_1
    return-void

    .line 503
    :cond_9
    :goto_2
    invoke-static {p0, v1}, Lcom/vpnapp/VpnTunnelService;->connect(Landroid/content/Context;Lcom/vpnapp/VpnServer;)V

    .line 504
    return-void
.end method

.method private stopStats()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->statsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpnapp/MainActivity;->statsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->durationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vpnapp/MainActivity;->durationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 751
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 107
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/vpnapp/MainActivity;->pendingWgConf:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->connectWithPendingWgConf()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->startVpnWithSelected()V

    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vpnapp/MainActivity;->pendingWgConf:Ljava/lang/String;

    const-string v1, "VPN permission denied."

    invoke-direct {p0, v1}, Lcom/vpnapp/MainActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_2
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0, p3}, Lcom/vpnapp/MainActivity;->handleWgFileResult(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance p1, Lcom/vpnapp/ServerStore;

    invoke-direct {p1, p0}, Lcom/vpnapp/ServerStore;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vpnapp/MainActivity;->store:Lcom/vpnapp/ServerStore;

    .line 80
    invoke-static {p0}, Lcom/wireguard/android/backend/GoBackend;->init(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/vpnapp/RootManager;->restoreState(Landroid/content/Context;)V

    .line 82
    const/high16 p1, 0x7f030000

    invoke-virtual {p0, p1}, Lcom/vpnapp/MainActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->bindViews()V

    .line 84
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->setupListeners()V

    .line 85
    invoke-direct {p0}, Lcom/vpnapp/MainActivity;->loadAndTestServers()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->vpnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->subStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vpnapp/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catch_1
    move-exception v0

    .line 99
    return-void
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
.end method

.method protected onResume()V
    .locals 3

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->vpnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vpnapp.STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vpnapp/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/vpnapp/MainActivity;->subStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.vpnapp.SUBSTATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/vpnapp/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    sget-object v0, Lcom/vpnapp/VpnTunnelService;->currentState:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vpnapp/MainActivity;->handleStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
