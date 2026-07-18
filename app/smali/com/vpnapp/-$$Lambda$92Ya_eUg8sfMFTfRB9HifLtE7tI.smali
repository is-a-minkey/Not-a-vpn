.class final synthetic Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/vpnapp/TunProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/vpnapp/TunProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;->f$0:Lcom/vpnapp/TunProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vpnapp/-$$Lambda$92Ya_eUg8sfMFTfRB9HifLtE7tI;->f$0:Lcom/vpnapp/TunProxy;

    invoke-virtual {v0}, Lcom/vpnapp/TunProxy;->run()V

    return-void
.end method
