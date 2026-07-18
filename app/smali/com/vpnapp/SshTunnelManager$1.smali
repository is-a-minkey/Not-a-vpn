.class Lcom/vpnapp/SshTunnelManager$1;
.super Ljava/lang/Object;
.source "SshTunnelManager.java"

# interfaces
.implements Lcom/jcraft/jsch/SocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpnapp/SshTunnelManager;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpnapp/SshTunnelManager;


# direct methods
.method constructor <init>(Lcom/vpnapp/SshTunnelManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/vpnapp/SshTunnelManager$1;->this$0:Lcom/vpnapp/SshTunnelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/vpnapp/SshTunnelManager$1;->this$0:Lcom/vpnapp/SshTunnelManager;

    invoke-static {v1}, Lcom/vpnapp/SshTunnelManager;->access$0(Lcom/vpnapp/SshTunnelManager;)Landroid/net/VpnService;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    .line 63
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x2710

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 64
    return-object v0
.end method

.method public getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method
