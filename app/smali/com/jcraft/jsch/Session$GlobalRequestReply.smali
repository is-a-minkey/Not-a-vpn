.class Lcom/jcraft/jsch/Session$GlobalRequestReply;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalRequestReply"
.end annotation


# instance fields
.field private port:I

.field private reply:I

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    .line 2736
    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    .line 2737
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    .line 2734
    return-void
.end method

.method synthetic constructor <init>(Lcom/jcraft/jsch/Session$GlobalRequestReply;)V
    .locals 0

    .line 2734
    invoke-direct {p0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>()V

    return-void
.end method


# virtual methods
.method getPort()I
    .locals 1

    .line 2757
    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    return v0
.end method

.method getReply()I
    .locals 1

    .line 2753
    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    return v0
.end method

.method getThread()Ljava/lang/Thread;
    .locals 1

    .line 2745
    iget-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method setPort(I)V
    .locals 0

    .line 2761
    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    .line 2762
    return-void
.end method

.method setReply(I)V
    .locals 0

    .line 2749
    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    .line 2750
    return-void
.end method

.method setThread(Ljava/lang/Thread;)V
    .locals 0

    .line 2740
    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    .line 2741
    const/4 p1, -0x1

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    .line 2742
    return-void
.end method
