.class Lcom/jcraft/jsch/DHG15384;
.super Lcom/jcraft/jsch/DHG15N;
.source "DHG15384.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jcraft/jsch/DHG15N;-><init>()V

    return-void
.end method


# virtual methods
.method sha_name()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "sha-384"

    return-object v0
.end method
