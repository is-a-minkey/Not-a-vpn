.class public Lcom/vpnapp/SplitTunnelActivity;
.super Landroid/app/Activity;
.source "SplitTunnelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/SplitTunnelActivity$AppInfo;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vpnapp/SplitTunnelActivity$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private etSearch:Landroid/widget/EditText;

.field private excluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private store:Lcom/vpnapp/ServerStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->apps:Ljava/util/List;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/vpnapp/SplitTunnelActivity;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/vpnapp/SplitTunnelActivity;->filterApps(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vpnapp/SplitTunnelActivity;)Ljava/util/Set;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vpnapp/SplitTunnelActivity;->excluded:Ljava/util/Set;

    return-object p0
.end method

.method private filterApps(Ljava/lang/String;)V
    .locals 7

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    new-instance p1, Lcom/vpnapp/SplitTunnelActivity$2;

    .line 109
    nop

    .line 108
    const v3, 0x1090010

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/vpnapp/SplitTunnelActivity$2;-><init>(Lcom/vpnapp/SplitTunnelActivity;Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    .line 122
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object p1, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 124
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 128
    iget-object p1, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$MZgo633zP2sXnQa8FsMntUtS_ew;

    invoke-direct {v0, p0, v6}, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$MZgo633zP2sXnQa8FsMntUtS_ew;-><init>(Lcom/vpnapp/SplitTunnelActivity;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->excluded:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;

    iget-object v1, v1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->pkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 124
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic lambda$0(Lcom/vpnapp/SplitTunnelActivity;Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/vpnapp/SplitTunnelActivity;->store:Lcom/vpnapp/ServerStore;

    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->excluded:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/vpnapp/ServerStore;->saveSplitPackages(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/vpnapp/SplitTunnelActivity;->finish()V

    return-void
.end method

.method static synthetic lambda$1(Lcom/vpnapp/SplitTunnelActivity;)V
    .locals 6

    .line 87
    invoke-virtual {p0}, Lcom/vpnapp/SplitTunnelActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/vpnapp/SplitTunnelActivity;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->apps:Ljava/util/List;

    sget-object v1, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;->INSTANCE:Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    new-instance v0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$e-t9wOKdAEy0pk8tjLNNbjTCB5o;

    invoke-direct {v0, p0}, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$e-t9wOKdAEy0pk8tjLNNbjTCB5o;-><init>(Lcom/vpnapp/SplitTunnelActivity;)V

    invoke-virtual {p0, v0}, Lcom/vpnapp/SplitTunnelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 91
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vpnapp/SplitTunnelActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/vpnapp/SplitTunnelActivity;->apps:Ljava/util/List;

    new-instance v4, Lcom/vpnapp/SplitTunnelActivity$AppInfo;

    .line 93
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/vpnapp/SplitTunnelActivity$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic lambda$2(Lcom/vpnapp/SplitTunnelActivity$AppInfo;Lcom/vpnapp/SplitTunnelActivity$AppInfo;)I
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$3(Lcom/vpnapp/SplitTunnelActivity;)V
    .locals 1

    .line 97
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/vpnapp/SplitTunnelActivity;->filterApps(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$4(Lcom/vpnapp/SplitTunnelActivity;Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 129
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;

    iget-object p1, p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;->pkg:Ljava/lang/String;

    .line 130
    iget-object p2, p0, Lcom/vpnapp/SplitTunnelActivity;->excluded:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/vpnapp/SplitTunnelActivity;->excluded:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 131
    :cond_0
    iget-object p2, p0, Lcom/vpnapp/SplitTunnelActivity;->excluded:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method private loadApps()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$BepMhRzezmM5SCWwZ3vgNd16ucM;

    invoke-direct {v1, p0}, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$BepMhRzezmM5SCWwZ3vgNd16ucM;-><init>(Lcom/vpnapp/SplitTunnelActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance p1, Lcom/vpnapp/ServerStore;

    invoke-direct {p1, p0}, Lcom/vpnapp/ServerStore;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vpnapp/SplitTunnelActivity;->store:Lcom/vpnapp/ServerStore;

    .line 32
    iget-object p1, p0, Lcom/vpnapp/SplitTunnelActivity;->store:Lcom/vpnapp/ServerStore;

    invoke-virtual {p1}, Lcom/vpnapp/ServerStore;->loadSplitPackages()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/vpnapp/SplitTunnelActivity;->excluded:Ljava/util/Set;

    .line 34
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    const v1, -0xf5f1e6

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 38
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v3, "Split Tunnel \u2014 bypass VPN"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v3, -0xe0a07

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 43
    const/16 v0, 0x24

    const/16 v4, 0x28

    const/16 v5, 0x8

    invoke-virtual {v2, v0, v4, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v4, "Ticked apps send traffic outside the tunnel"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v4, -0xa49988

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v2, v0, v5, v0, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    const-string v2, "Search apps\u2026"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 56
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 57
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    const v2, -0xebe4d2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 58
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    const/16 v4, 0x1c

    const/16 v6, 0x12

    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 59
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 64
    iget-object v0, p0, Lcom/vpnapp/SplitTunnelActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    const/4 v4, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v1, "Save & Close"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 71
    const/16 v1, 0x18

    invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/vpnapp/SplitTunnelActivity;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/vpnapp/SplitTunnelActivity;->loadApps()V

    .line 77
    new-instance p1, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$BujMCp9YdX0zI-01qWmCRjQbcQ4;

    invoke-direct {p1, p0}, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$BujMCp9YdX0zI-01qWmCRjQbcQ4;-><init>(Lcom/vpnapp/SplitTunnelActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/vpnapp/SplitTunnelActivity;->etSearch:Landroid/widget/EditText;

    new-instance v0, Lcom/vpnapp/SplitTunnelActivity$1;

    invoke-direct {v0, p0}, Lcom/vpnapp/SplitTunnelActivity$1;-><init>(Lcom/vpnapp/SplitTunnelActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    return-void
.end method
