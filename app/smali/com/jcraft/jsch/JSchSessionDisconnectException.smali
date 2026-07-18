.class public Lcom/jcraft/jsch/JSchSessionDisconnectException;
.super Lcom/jcraft/jsch/JSchException;
.source "JSchSessionDisconnectException.java"


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private final description:Ljava/lang/String;

.field private final languageTag:Ljava/lang/String;

.field private final reasonCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 39
    iput p2, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->reasonCode:I

    .line 40
    iput-object p3, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->description:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->languageTag:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/jcraft/jsch/JSchSessionDisconnectException;->reasonCode:I

    return v0
.end method
