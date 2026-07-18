.class final synthetic Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;

    invoke-direct {v0}, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$OpenSshCertificateUtil$OiVPg57JlHHLC6XtknHjTig3_rc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/jcraft/jsch/HostKey;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->lambda$9(Lcom/jcraft/jsch/HostKey;)[B

    move-result-object p1

    return-object p1
.end method
