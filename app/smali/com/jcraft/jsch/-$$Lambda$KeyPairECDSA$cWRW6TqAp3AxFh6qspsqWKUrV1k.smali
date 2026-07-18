.class final synthetic Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;

    invoke-direct {v0}, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$cWRW6TqAp3AxFh6qspsqWKUrV1k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/jcraft/jsch/KeyPairECDSA;->lambda$1(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
