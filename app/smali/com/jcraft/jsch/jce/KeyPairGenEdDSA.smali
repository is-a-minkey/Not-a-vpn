.class public Lcom/jcraft/jsch/jce/KeyPairGenEdDSA;
.super Ljava/lang/Object;
.source "KeyPairGenEdDSA.java"

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenEdDSA;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KeyPairGenEdDSA requires Java15+."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPrv()[B
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KeyPairGenEdDSA requires Java15+."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPub()[B
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KeyPairGenEdDSA requires Java15+."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "KeyPairGenEdDSA requires Java15+."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
