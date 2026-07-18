.class final synthetic Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;

    invoke-direct {v0}, Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$cN7waVapmzcJRtdAlEFJ4_UaDuw;

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

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->isMarkedRevoked(Lcom/jcraft/jsch/HostKey;)Z

    move-result p1

    return p1
.end method
