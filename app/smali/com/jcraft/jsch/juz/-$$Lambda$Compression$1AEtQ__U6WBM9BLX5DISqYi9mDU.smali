.class final synthetic Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1AEtQ__U6WBM9BLX5DISqYi9mDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/jcraft/jsch/juz/Compression;


# direct methods
.method public synthetic constructor <init>(Lcom/jcraft/jsch/juz/Compression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1AEtQ__U6WBM9BLX5DISqYi9mDU;->f$0:Lcom/jcraft/jsch/juz/Compression;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1AEtQ__U6WBM9BLX5DISqYi9mDU;->f$0:Lcom/jcraft/jsch/juz/Compression;

    invoke-static {v0}, Lcom/jcraft/jsch/juz/Compression;->lambda$0(Lcom/jcraft/jsch/juz/Compression;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
