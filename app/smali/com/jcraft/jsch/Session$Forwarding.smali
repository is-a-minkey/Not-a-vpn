.class Lcom/jcraft/jsch/Session$Forwarding;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Forwarding"
.end annotation


# instance fields
.field bind_address:Ljava/lang/String;

.field host:Ljava/lang/String;

.field hostport:I

.field port:I

.field socketPath:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    .line 2613
    const/4 v1, -0x1

    iput v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    .line 2614
    iput-object v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    .line 2615
    iput v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    .line 2616
    iput-object v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->socketPath:Ljava/lang/String;

    .line 2611
    return-void
.end method
