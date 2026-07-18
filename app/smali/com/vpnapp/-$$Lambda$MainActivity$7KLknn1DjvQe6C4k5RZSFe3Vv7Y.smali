.class final synthetic Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;

    invoke-direct {v0}, Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;-><init>()V

    sput-object v0, Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;->INSTANCE:Lcom/vpnapp/-$$Lambda$MainActivity$7KLknn1DjvQe6C4k5RZSFe3Vv7Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vpnapp/VpnServer;

    invoke-static {p1}, Lcom/vpnapp/MainActivity;->lambda$10(Lcom/vpnapp/VpnServer;)Lcom/vpnapp/ServerTester$TestedServer;

    move-result-object p1

    return-object p1
.end method
