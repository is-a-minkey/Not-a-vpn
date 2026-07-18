.class Lcom/jcraft/jsch/JSchAuthCancelException;
.super Lcom/jcraft/jsch/JSchException;
.source "JSchAuthCancelException.java"


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field method:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jcraft/jsch/JSchException;-><init>()V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->method:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->method:Ljava/lang/String;

    return-object v0
.end method
