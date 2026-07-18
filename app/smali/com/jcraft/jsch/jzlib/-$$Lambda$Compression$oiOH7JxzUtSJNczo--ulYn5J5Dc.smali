.class final synthetic Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$oiOH7JxzUtSJNczo--ulYn5J5Dc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$oiOH7JxzUtSJNczo--ulYn5J5Dc;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/jzlib/-$$Lambda$Compression$oiOH7JxzUtSJNczo--ulYn5J5Dc;->f$0:I

    invoke-static {v0}, Lcom/jcraft/jsch/jzlib/Compression;->lambda$2(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
