.class final synthetic Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;

    invoke-direct {v0}, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;-><init>()V

    sput-object v0, Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;->INSTANCE:Lcom/vpnapp/-$$Lambda$SplitTunnelActivity$oKAgrxF2h8e8tvXLqTe3him8V54;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/vpnapp/SplitTunnelActivity$AppInfo;

    check-cast p2, Lcom/vpnapp/SplitTunnelActivity$AppInfo;

    invoke-static {p1, p2}, Lcom/vpnapp/SplitTunnelActivity;->lambda$2(Lcom/vpnapp/SplitTunnelActivity$AppInfo;Lcom/vpnapp/SplitTunnelActivity$AppInfo;)I

    move-result p1

    return p1
.end method
