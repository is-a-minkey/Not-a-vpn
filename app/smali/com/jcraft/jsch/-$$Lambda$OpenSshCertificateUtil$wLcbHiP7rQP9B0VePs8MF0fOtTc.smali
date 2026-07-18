.class final synthetic Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wLcbHiP7rQP9B0VePs8MF0fOtTc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wLcbHiP7rQP9B0VePs8MF0fOtTc;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wLcbHiP7rQP9B0VePs8MF0fOtTc;->f$1:[B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wLcbHiP7rQP9B0VePs8MF0fOtTc;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$wLcbHiP7rQP9B0VePs8MF0fOtTc;->f$1:[B

    check-cast p1, Lcom/jcraft/jsch/HostKey;

    invoke-static {v0, v1, p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->lambda$2(Ljava/lang/String;[BLcom/jcraft/jsch/HostKey;)Z

    move-result p1

    return p1
.end method
