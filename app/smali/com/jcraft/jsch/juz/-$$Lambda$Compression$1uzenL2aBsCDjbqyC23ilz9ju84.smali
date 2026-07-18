.class final synthetic Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1uzenL2aBsCDjbqyC23ilz9ju84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/util/zip/DataFormatException;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/DataFormatException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1uzenL2aBsCDjbqyC23ilz9ju84;->f$0:Ljava/util/zip/DataFormatException;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/juz/-$$Lambda$Compression$1uzenL2aBsCDjbqyC23ilz9ju84;->f$0:Ljava/util/zip/DataFormatException;

    invoke-static {v0}, Lcom/jcraft/jsch/juz/Compression;->lambda$1(Ljava/util/zip/DataFormatException;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
