.class final synthetic Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;

    invoke-direct {v0}, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$KeyPairECDSA$9fIc4trDBjF4Wd3tXZruYJXJMuE;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jcraft/jsch/KeyPairECDSA;->lambda$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
