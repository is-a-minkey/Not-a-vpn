.class final synthetic Lcom/jcraft/jsch/-$$Lambda$KuZotKWK_y9Cs4jeX66YCW9tyjk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/jcraft/jsch/Channel;


# direct methods
.method public synthetic constructor <init>(Lcom/jcraft/jsch/Channel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/-$$Lambda$KuZotKWK_y9Cs4jeX66YCW9tyjk;->f$0:Lcom/jcraft/jsch/Channel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/-$$Lambda$KuZotKWK_y9Cs4jeX66YCW9tyjk;->f$0:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->run()V

    return-void
.end method
