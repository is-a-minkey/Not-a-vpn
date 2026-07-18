.class final synthetic Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;

    invoke-direct {v0}, Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$3SpIy8g_nU047ON727h1yWGvkHI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/jcraft/jsch/HostKey;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isKnownHostCaPublicKeyEntry(Lcom/jcraft/jsch/HostKey;)Z

    move-result p1

    return p1
.end method
