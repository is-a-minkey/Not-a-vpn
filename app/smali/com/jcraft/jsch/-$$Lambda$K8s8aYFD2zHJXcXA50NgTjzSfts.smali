.class final synthetic Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;

    invoke-direct {v0}, Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
