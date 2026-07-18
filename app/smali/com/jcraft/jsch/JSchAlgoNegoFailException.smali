.class public Lcom/jcraft/jsch/JSchAlgoNegoFailException;
.super Lcom/jcraft/jsch/JSchException;
.source "JSchAlgoNegoFailException.java"


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final jschProposal:Ljava/lang/String;

.field private final serverProposal:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-static {p1, p2, p3}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->failString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->algorithmNameFromIndex(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->algorithmName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->jschProposal:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->serverProposal:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private static algorithmNameFromIndex(I)Ljava/lang/String;
    .locals 0

    .line 46
    packed-switch p0, :pswitch_data_0

    .line 68
    const-string p0, ""

    return-object p0

    .line 66
    :pswitch_0
    const-string p0, "lang.s2c"

    return-object p0

    .line 64
    :pswitch_1
    const-string p0, "lang.c2s"

    return-object p0

    .line 62
    :pswitch_2
    const-string p0, "compression.s2c"

    return-object p0

    .line 60
    :pswitch_3
    const-string p0, "compression.c2s"

    return-object p0

    .line 58
    :pswitch_4
    const-string p0, "mac.s2c"

    return-object p0

    .line 56
    :pswitch_5
    const-string p0, "mac.c2s"

    return-object p0

    .line 54
    :pswitch_6
    const-string p0, "cipher.s2c"

    return-object p0

    .line 52
    :pswitch_7
    const-string p0, "cipher.c2s"

    return-object p0

    .line 50
    :pswitch_8
    const-string p0, "server_host_key"

    return-object p0

    .line 48
    :pswitch_9
    const-string p0, "kex"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static failString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 40
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 41
    const-string v1, "Algorithm negotiation fail: algorithmName=\"%s\" jschProposal=\"%s\" serverProposal=\"%s\""

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->algorithmNameFromIndex(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    .line 40
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getJSchProposal()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->jschProposal:Ljava/lang/String;

    return-object v0
.end method

.method public getServerProposal()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jcraft/jsch/JSchAlgoNegoFailException;->serverProposal:Ljava/lang/String;

    return-object v0
.end method
