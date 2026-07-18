.class final synthetic Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$KLg37Z8ybilmZccr8Ja3WTdtteg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/jcraft/jsch/HostKeyRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$KLg37Z8ybilmZccr8Ja3WTdtteg;->f$0:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$KLg37Z8ybilmZccr8Ja3WTdtteg;->f$0:Lcom/jcraft/jsch/HostKeyRepository;

    check-cast p1, Lcom/jcraft/jsch/HostKey;

    invoke-static {v0, p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->lambda$1(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z

    move-result p1

    return p1
.end method
