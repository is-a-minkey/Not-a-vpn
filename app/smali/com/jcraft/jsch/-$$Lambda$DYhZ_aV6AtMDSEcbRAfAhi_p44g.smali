.class final synthetic Lcom/jcraft/jsch/-$$Lambda$DYhZ_aV6AtMDSEcbRAfAhi_p44g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/jcraft/jsch/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/jcraft/jsch/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/-$$Lambda$DYhZ_aV6AtMDSEcbRAfAhi_p44g;->f$0:Lcom/jcraft/jsch/Session;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/-$$Lambda$DYhZ_aV6AtMDSEcbRAfAhi_p44g;->f$0:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->run()V

    return-void
.end method
