.class Lcom/jcraft/jsch/JSch$InstanceLogger;
.super Ljava/lang/Object;
.source "JSch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/JSch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceLogger"
.end annotation


# instance fields
.field private logger:Lcom/jcraft/jsch/Logger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jcraft/jsch/JSch$InstanceLogger;)V
    .locals 0

    .line 765
    invoke-direct {p0}, Lcom/jcraft/jsch/JSch$InstanceLogger;-><init>()V

    return-void
.end method


# virtual methods
.method getLogger()Lcom/jcraft/jsch/Logger;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/jcraft/jsch/JSch$InstanceLogger;->logger:Lcom/jcraft/jsch/Logger;

    if-nez v0, :cond_0

    .line 769
    sget-object v0, Lcom/jcraft/jsch/JSch;->logger:Lcom/jcraft/jsch/Logger;

    return-object v0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch$InstanceLogger;->logger:Lcom/jcraft/jsch/Logger;

    return-object v0
.end method

.method setLogger(Lcom/jcraft/jsch/Logger;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/jcraft/jsch/JSch$InstanceLogger;->logger:Lcom/jcraft/jsch/Logger;

    .line 776
    return-void
.end method
