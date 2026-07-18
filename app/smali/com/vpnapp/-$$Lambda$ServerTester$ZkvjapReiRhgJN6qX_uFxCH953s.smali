.class final synthetic Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;

    invoke-direct {v0}, Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;-><init>()V

    sput-object v0, Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;->INSTANCE:Lcom/vpnapp/-$$Lambda$ServerTester$ZkvjapReiRhgJN6qX_uFxCH953s;

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

    check-cast p1, Lcom/vpnapp/ServerTester$TestedServer;

    check-cast p2, Lcom/vpnapp/ServerTester$TestedServer;

    invoke-static {p1, p2}, Lcom/vpnapp/ServerTester;->lambda$1(Lcom/vpnapp/ServerTester$TestedServer;Lcom/vpnapp/ServerTester$TestedServer;)I

    move-result p1

    return p1
.end method
