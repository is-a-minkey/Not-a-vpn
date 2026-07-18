.class public Lcom/jcraft/jsch/jbcrypt/JBCrypt;
.super Ljava/lang/Object;
.source "JBCrypt.java"

# interfaces
.implements Lcom/jcraft/jsch/KDF;


# instance fields
.field private bcrypt:Lcom/jcraft/jsch/jbcrypt/BCrypt;

.field private iteration:I

.field private salt:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey([BI)[B
    .locals 3

    .line 47
    new-array p2, p2, [B

    .line 48
    iget-object v0, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->bcrypt:Lcom/jcraft/jsch/jbcrypt/BCrypt;

    iget-object v1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->salt:[B

    iget v2, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->iteration:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/jcraft/jsch/jbcrypt/BCrypt;->pbkdf([B[BI[B)V

    .line 49
    return-object p2
.end method

.method public initWithOpenSSHv1KDFOptions([B)V
    .locals 1

    .line 39
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 40
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->salt:[B

    .line 41
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->iteration:I

    .line 42
    new-instance p1, Lcom/jcraft/jsch/jbcrypt/BCrypt;

    invoke-direct {p1}, Lcom/jcraft/jsch/jbcrypt/BCrypt;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/jbcrypt/JBCrypt;->bcrypt:Lcom/jcraft/jsch/jbcrypt/BCrypt;

    .line 43
    return-void
.end method
