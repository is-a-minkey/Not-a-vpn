.class public Lcom/vpnapp/SshTunnelManager$Link;
.super Ljava/lang/Object;
.source "SshTunnelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/SshTunnelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Link"
.end annotation


# instance fields
.field public final channel:Lcom/jcraft/jsch/Channel;

.field public final in:Ljava/io/InputStream;

.field public final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/vpnapp/SshTunnelManager$Link;->channel:Lcom/jcraft/jsch/Channel;

    .line 116
    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vpnapp/SshTunnelManager$Link;->in:Ljava/io/InputStream;

    .line 117
    invoke-virtual {p1}, Lcom/jcraft/jsch/Channel;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/vpnapp/SshTunnelManager$Link;->out:Ljava/io/OutputStream;

    .line 118
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/vpnapp/SshTunnelManager$Link;->channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    .line 122
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method
