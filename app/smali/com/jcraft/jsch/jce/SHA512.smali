.class public Lcom/jcraft/jsch/jce/SHA512;
.super Ljava/lang/Object;
.source "SHA512.java"

# interfaces
.implements Lcom/jcraft/jsch/HASH;


# instance fields
.field md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public digest()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/jcraft/jsch/jce/SHA512;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 37
    const/16 v0, 0x40

    return v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SHA512;->md:Ljava/security/MessageDigest;

    .line 43
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "SHA512"

    return-object v0
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/jcraft/jsch/jce/SHA512;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 48
    return-void
.end method
