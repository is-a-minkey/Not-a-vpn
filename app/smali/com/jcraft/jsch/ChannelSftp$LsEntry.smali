.class public Lcom/jcraft/jsch/ChannelSftp$LsEntry;
.super Ljava/lang/Object;
.source "ChannelSftp.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private attrs:Lcom/jcraft/jsch/SftpATTRS;

.field private filename:Ljava/lang/String;

.field private longname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 0

    .line 3067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3068
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->setFilename(Ljava/lang/String;)V

    .line 3069
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->setLongname(Ljava/lang/String;)V

    .line 3070
    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->setAttrs(Lcom/jcraft/jsch/SftpATTRS;)V

    .line 3071
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I
    .locals 1

    .line 3104
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->filename:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->compareTo(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result p1

    return p1
.end method

.method public getAttrs()Lcom/jcraft/jsch/SftpATTRS;
    .locals 1

    .line 3090
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->attrs:Lcom/jcraft/jsch/SftpATTRS;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 3074
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLongname()Ljava/lang/String;
    .locals 1

    .line 3082
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->longname:Ljava/lang/String;

    return-object v0
.end method

.method setAttrs(Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 0

    .line 3094
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->attrs:Lcom/jcraft/jsch/SftpATTRS;

    .line 3095
    return-void
.end method

.method setFilename(Ljava/lang/String;)V
    .locals 0

    .line 3078
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->filename:Ljava/lang/String;

    .line 3079
    return-void
.end method

.method setLongname(Ljava/lang/String;)V
    .locals 0

    .line 3086
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->longname:Ljava/lang/String;

    .line 3087
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3099
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->longname:Ljava/lang/String;

    return-object v0
.end method
