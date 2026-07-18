.class final synthetic Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$MdlFDvC8wGoUP8bUQbpoiIBwZ8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$MdlFDvC8wGoUP8bUQbpoiIBwZ8I;->f$0:[B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$MdlFDvC8wGoUP8bUQbpoiIBwZ8I;->f$0:[B

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->lambda$11([B[B)Z

    move-result p1

    return p1
.end method
