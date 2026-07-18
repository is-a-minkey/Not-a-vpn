.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Session$Forwarding;,
        Lcom/jcraft/jsch/Session$GlobalRequestReply;
    }
.end annotation


# static fields
.field private static final PACKET_MAX_SIZE:I = 0x40000

.field static final SSH_MSG_CHANNEL_CLOSE:I = 0x61

.field static final SSH_MSG_CHANNEL_DATA:I = 0x5e

.field static final SSH_MSG_CHANNEL_EOF:I = 0x60

.field static final SSH_MSG_CHANNEL_EXTENDED_DATA:I = 0x5f

.field static final SSH_MSG_CHANNEL_FAILURE:I = 0x64

.field static final SSH_MSG_CHANNEL_OPEN:I = 0x5a

.field static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field static final SSH_MSG_CHANNEL_REQUEST:I = 0x62

.field static final SSH_MSG_CHANNEL_SUCCESS:I = 0x63

.field static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field static final SSH_MSG_DEBUG:I = 0x4

.field static final SSH_MSG_DISCONNECT:I = 0x1

.field static final SSH_MSG_EXT_INFO:I = 0x7

.field static final SSH_MSG_GLOBAL_REQUEST:I = 0x50

.field static final SSH_MSG_IGNORE:I = 0x2

.field static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field static final SSH_MSG_KEXINIT:I = 0x14

.field static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field static final SSH_MSG_NEWKEYS:I = 0x15

.field static final SSH_MSG_REQUEST_FAILURE:I = 0x52

.field static final SSH_MSG_REQUEST_SUCCESS:I = 0x51

.field static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field static final SSH_MSG_SERVICE_REQUEST:I = 0x5

.field static final SSH_MSG_UNIMPLEMENTED:I = 0x3

.field private static final keepalivemsg:[B

.field private static final nomoresessions:[B

.field static random:Lcom/jcraft/jsch/Random;


# instance fields
.field private Ec2s:[B

.field private Es2c:[B

.field private IVc2s:[B

.field private IVs2c:[B

.field private I_C:[B

.field I_S:[B

.field private K_S:[B

.field private MACc2s:[B

.field private MACs2c:[B

.field private V_C:[B

.field private V_S:[B

.field agent_forwarding:Z

.field auth_failures:I

.field buf:Lcom/jcraft/jsch/Buffer;

.field private c2scipher:Lcom/jcraft/jsch/Cipher;

.field private c2scipher_size:I

.field private c2smac:Lcom/jcraft/jsch/MAC;

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jcraft/jsch/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final channelsLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field compress_len:[I

.field private config:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectThread:Ljava/lang/Thread;

.field protected daemon_thread:Z

.field private deflater:Lcom/jcraft/jsch/Compression;

.field private disconnectingChannels:Z

.field private volatile doExtInfo:Z

.field private volatile doStrictKex:Z

.field private enable_ext_info_in_auth:Z

.field private enable_server_sig_algs:Z

.field private enable_strict_kex:Z

.field private grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field guess:[Ljava/lang/String;

.field host:Ljava/lang/String;

.field private hostKeyAlias:Ljava/lang/String;

.field private hostkey:Lcom/jcraft/jsch/HostKey;

.field private hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

.field private identityRepository:Lcom/jcraft/jsch/IdentityRepository;

.field in:Ljava/io/InputStream;

.field private volatile in_kex:Z

.field private volatile in_prompt:Z

.field private inflater:Lcom/jcraft/jsch/Compression;

.field private volatile initialKex:Z

.field private io:Lcom/jcraft/jsch/IO;

.field private volatile isAuthed:Z

.field private volatile isConnected:Z

.field jsch:Lcom/jcraft/jsch/JSch;

.field private volatile kex_start_time:J

.field private lock:Ljava/lang/Object;

.field logger:Lcom/jcraft/jsch/Logger;

.field max_auth_tries:I

.field private volatile not_available_shks:[Ljava/lang/String;

.field org_host:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field packet:Lcom/jcraft/jsch/Packet;

.field password:[B

.field port:I

.field private proxy:Lcom/jcraft/jsch/Proxy;

.field private require_strict_kex:Z

.field private s2ccipher:Lcom/jcraft/jsch/Cipher;

.field private s2ccipher_size:I

.field private s2cmac:Lcom/jcraft/jsch/MAC;

.field private s2cmac_result1:[B

.field private s2cmac_result2:[B

.field private seqi:I

.field private seqo:I

.field private serverAliveCountMax:I

.field private serverAliveInterval:I

.field private volatile serverSigAlgs:[Ljava/lang/String;

.field private session_id:[B

.field private socket:Ljava/net/Socket;

.field socket_factory:Lcom/jcraft/jsch/SocketFactory;

.field private volatile sshBugSigType74:Z

.field thread:Ljava/lang/Runnable;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private timeout:I

.field uncompress_len:[I

.field private userinfo:Lcom/jcraft/jsch/UserInfo;

.field username:Ljava/lang/String;

.field x11_forwarding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3115
    const-string v0, "keepalive@jcraft.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    .line 3127
    const-string v0, "no-more-sessions@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->nomoresessions:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH-2.0-JSCH_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/jcraft/jsch/JSch;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Session;->seqi:I

    .line 103
    iput v0, p0, Lcom/jcraft/jsch/Session;->seqo:I

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    .line 119
    iput v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    .line 121
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 123
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->doExtInfo:Z

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->enable_server_sig_algs:Z

    .line 125
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->enable_ext_info_in_auth:Z

    .line 127
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->initialKex:Z

    .line 128
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->doStrictKex:Z

    .line 129
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->enable_strict_kex:Z

    .line 130
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->require_strict_kex:Z

    .line 132
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    .line 134
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    .line 135
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    .line 137
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    .line 138
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    .line 140
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    .line 141
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    .line 148
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    .line 150
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    .line 152
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    .line 155
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    .line 156
    iput v0, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    .line 157
    iput v2, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    .line 159
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    .line 160
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    .line 161
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->serverSigAlgs:[Ljava/lang/String;

    .line 162
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->sshBugSigType74:Z

    .line 164
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    .line 166
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    .line 168
    const/4 v3, 0x6

    iput v3, p0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    .line 169
    iput v0, p0, Lcom/jcraft/jsch/Session;->auth_failures:I

    .line 171
    const-string v3, "127.0.0.1"

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 172
    const-string v3, "127.0.0.1"

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    .line 173
    const/16 v3, 0x16

    iput v3, p0, Lcom/jcraft/jsch/Session;->port:I

    .line 175
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->password:[B

    .line 181
    sget-object v3, Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;->INSTANCE:Lcom/jcraft/jsch/-$$Lambda$K8s8aYFD2zHJXcXA50NgTjzSfts;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 183
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->disconnectingChannels:Z

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->channels:Ljava/util/List;

    .line 185
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->channelsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 701
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 702
    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_prompt:Z

    .line 703
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->not_available_shks:[Ljava/lang/String;

    .line 1227
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    .line 1228
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    .line 1230
    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 1231
    iput v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    .line 2765
    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session$GlobalRequestReply;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    .line 3139
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    .line 189
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    .line 190
    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 191
    new-instance p1, Lcom/jcraft/jsch/Packet;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    .line 192
    iput-object p2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 193
    iput-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    .line 194
    iput p4, p0, Lcom/jcraft/jsch/Session;->port:I

    .line 196
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->applyConfig()V

    .line 198
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 199
    const-string p1, "user.name"

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 203
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "username is not given."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_1
    return-void
.end method

.method private _setPortForwardingR(Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2768
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    monitor-enter v0

    .line 2769
    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 2770
    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 2772
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2774
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    .line 2775
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v3, p2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2783
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2784
    const/16 v4, 0x50

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2785
    const-string v4, "tcpip-forward"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2786
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2787
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2788
    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2789
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2790
    nop

    .line 2795
    nop

    .line 2796
    :try_start_2
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2797
    const/4 v1, 0x0

    .line 2797
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 2799
    :cond_0
    const-wide/16 v5, 0x3e8

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2800
    goto :goto_1

    :catch_0
    move-exception p1

    .line 2802
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 2803
    :try_start_4
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I

    move-result p1

    goto :goto_0

    .line 2805
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    .line 2806
    if-eq p1, v4, :cond_2

    .line 2807
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remote port forwarding failed for listen port "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2809
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result p1

    .line 2768
    monitor-exit v0

    .line 2811
    return p1

    :catch_1
    move-exception p1

    .line 2791
    iget-object p2, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {p2, v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    .line 2792
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private _write(Lcom/jcraft/jsch/Packet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1869
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->initialKex:Z

    .line 1870
    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->doStrictKex:Z

    .line 1871
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->enable_strict_kex:Z

    .line 1872
    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->require_strict_kex:Z

    .line 1873
    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x15

    if-ne v4, v7, :cond_0

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v6

    .line 1875
    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1876
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->encode(Lcom/jcraft/jsch/Packet;)V

    .line 1877
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v7, :cond_3

    .line 1878
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v7, p1}, Lcom/jcraft/jsch/IO;->put(Lcom/jcraft/jsch/Packet;)V

    .line 1879
    iget p1, p0, Lcom/jcraft/jsch/Session;->seqo:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/jcraft/jsch/Session;->seqo:I

    if-nez p1, :cond_2

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 1880
    new-instance p1, Lcom/jcraft/jsch/JSchStrictKexException;

    const-string v0, "outgoing sequence number wrapped during initial KEX"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchStrictKexException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1882
    :cond_2
    if-eqz v1, :cond_3

    .line 1883
    iput v6, p0, Lcom/jcraft/jsch/Session;->seqo:I

    .line 1875
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1889
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    .line 1890
    const-string v0, "Reset outgoing sequence number after sending SSH_MSG_NEWKEYS for strict KEX"

    .line 1889
    invoke-interface {p1, v5, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1892
    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private addChannel(Lcom/jcraft/jsch/Channel;)Lcom/jcraft/jsch/Channel;
    .locals 3

    .line 2937
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->channelsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2938
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2940
    :try_start_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->disconnectingChannels:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v1, :cond_0

    .line 2941
    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->setSession(Lcom/jcraft/jsch/Session;)V

    .line 2942
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->channels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2943
    nop

    .line 2948
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2943
    move-object v2, p1

    return-object v2

    .line 2948
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2945
    return-object v2

    .line 2947
    :catchall_0
    move-exception p1

    .line 2947
    nop

    .line 2948
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2949
    throw p1
.end method

.method private applyConfig()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 3494
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    .line 3495
    if-nez v0, :cond_0

    .line 3496
    return-void

    .line 3499
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v1

    .line 3501
    nop

    .line 3503
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 3504
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getUser()Ljava/lang/String;

    move-result-object v2

    .line 3505
    if-eqz v2, :cond_1

    .line 3506
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 3509
    :cond_1
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getHostname()Ljava/lang/String;

    move-result-object v2

    .line 3510
    if-eqz v2, :cond_2

    .line 3511
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 3513
    :cond_2
    invoke-interface {v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getPort()I

    move-result v2

    .line 3514
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 3515
    iput v2, p0, Lcom/jcraft/jsch/Session;->port:I

    .line 3517
    :cond_3
    const-string v2, "kex"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3518
    const-string v2, "server_host_key"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3519
    const-string v2, "prefer_known_host_key_types"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3520
    const-string v2, "enable_server_sig_algs"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3521
    const-string v2, "enable_ext_info_in_auth"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3522
    const-string v2, "enable_strict_kex"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3523
    const-string v2, "require_strict_kex"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3524
    const-string v2, "enable_pubkey_auth_query"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3525
    const-string v2, "try_additional_pubkey_algorithms"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3526
    const-string v2, "enable_auth_none"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3527
    const-string v2, "use_sftp_write_flush_workaround"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3529
    const-string v2, "cipher.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3530
    const-string v2, "cipher.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3531
    const-string v2, "mac.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3532
    const-string v2, "mac.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3533
    const-string v2, "compression.c2s"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3534
    const-string v2, "compression.s2c"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3535
    const-string v2, "compression_level"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3537
    const-string v2, "StrictHostKeyChecking"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3538
    const-string v2, "HashKnownHosts"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3539
    const-string v2, "PreferredAuthentications"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3540
    const-string v2, "PubkeyAcceptedAlgorithms"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3541
    const-string v2, "FingerprintHash"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3542
    const-string v2, "MaxAuthTries"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3543
    const-string v2, "ClearAllForwardings"

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    .line 3545
    const-string v2, "HostKeyAlias"

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3546
    if-eqz v2, :cond_4

    .line 3547
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->setHostKeyAlias(Ljava/lang/String;)V

    .line 3549
    :cond_4
    const-string v2, "UserKnownHostsFile"

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3550
    if-eqz v2, :cond_5

    .line 3551
    new-instance v3, Lcom/jcraft/jsch/KnownHosts;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    .line 3552
    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V

    .line 3556
    :cond_5
    const-string v2, "IdentityFile"

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3557
    if-eqz v2, :cond_c

    .line 3558
    const-string v3, ""

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const-string v3, "IdentityFile"

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3559
    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 3560
    move v4, v3

    :goto_0
    array-length v5, v0

    if-lt v4, v5, :cond_6

    .line 3563
    goto :goto_1

    .line 3561
    :cond_6
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;)V

    .line 3560
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3564
    :cond_7
    new-array v0, v3, [Ljava/lang/String;

    .line 3566
    :goto_1
    array-length v4, v2

    array-length v5, v0

    sub-int/2addr v4, v5

    if-lez v4, :cond_c

    .line 3568
    new-instance v4, Lcom/jcraft/jsch/IdentityRepositoryWrapper;

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    .line 3567
    nop

    .line 3569
    move v5, v3

    :goto_2
    array-length v6, v2

    if-lt v5, v6, :cond_8

    .line 3582
    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V

    goto :goto_6

    .line 3570
    :cond_8
    aget-object v6, v2, v5

    .line 3571
    move v7, v3

    :goto_3
    array-length v8, v0

    const/4 v9, 0x0

    if-lt v7, v8, :cond_9

    goto :goto_4

    .line 3572
    :cond_9
    aget-object v8, v0, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 3573
    nop

    .line 3571
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3574
    :cond_a
    nop

    .line 3575
    move-object v6, v9

    .line 3577
    :goto_4
    if-nez v6, :cond_b

    .line 3578
    goto :goto_5

    .line 3579
    :cond_b
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    iget-object v7, v7, Lcom/jcraft/jsch/JSch;->instLogger:Lcom/jcraft/jsch/JSch$InstanceLogger;

    invoke-static {v6, v9, v7}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch$InstanceLogger;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v6

    .line 3580
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/IdentityRepositoryWrapper;->add(Lcom/jcraft/jsch/Identity;)V

    .line 3569
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3586
    :cond_c
    :goto_6
    const-string v0, "ServerAliveInterval"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3587
    if-eqz v0, :cond_d

    .line 3589
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setServerAliveInterval(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3590
    goto :goto_7

    :catch_0
    move-exception v0

    .line 3594
    :cond_d
    :goto_7
    const-string v0, "ConnectTimeout"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3595
    if-eqz v0, :cond_e

    .line 3597
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setTimeout(I)V

    .line 3598
    goto :goto_8

    :catch_1
    move-exception v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3602
    :cond_e
    :goto_8
    const-string v0, "MaxAuthTries"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3603
    if-eqz v0, :cond_f

    .line 3604
    const-string v2, "MaxAuthTries"

    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    :cond_f
    const-string v0, "ClearAllForwardings"

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3608
    if-eqz v0, :cond_10

    .line 3609
    const-string v1, "ClearAllForwardings"

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    :cond_10
    return-void
.end method

.method private applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 3614
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    .line 3615
    if-nez v0, :cond_0

    .line 3616
    return-void

    .line 3619
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    .line 3621
    nop

    .line 3623
    const-string v1, "ForwardAgent"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3624
    if-eqz v1, :cond_1

    .line 3625
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    .line 3628
    :cond_1
    const-string v1, "RequestTTY"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3629
    if-eqz v0, :cond_2

    .line 3630
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/ChannelSession;->setPty(Z)V

    .line 3632
    :cond_2
    return-void
.end method

.method static checkCipher(Ljava/lang/String;)Z
    .locals 4

    .line 3247
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v2, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 3248
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/Cipher;

    .line 3249
    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {p0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {p0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 3250
    move v1, v0

    return v1

    .line 3251
    :catch_0
    move-exception p0

    .line 3251
    nop

    .line 3252
    return v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private checkCiphers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 3212
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3215
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3216
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckCiphers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3219
    :cond_1
    const-string v1, "cipher.c2s"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3220
    const-string v3, "cipher.s2c"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3222
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3223
    const-string v5, ","

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3224
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, p1

    if-lt v6, v7, :cond_5

    .line 3232
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 3233
    return-object v0

    .line 3234
    :cond_2
    new-array p1, v5, [Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 3236
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3237
    :goto_1
    array-length p1, v0

    if-lt v5, p1, :cond_3

    goto :goto_2

    .line 3238
    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not available."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3237
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3242
    :cond_4
    :goto_2
    return-object v0

    .line 3225
    :cond_5
    aget-object v7, p1, v6

    .line 3226
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_6

    .line 3227
    goto :goto_3

    .line 3228
    :cond_6
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3229
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3224
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3213
    :cond_8
    return-object v0
.end method

.method private checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .locals 2

    .line 3662
    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3663
    if-nez v0, :cond_0

    const-string v1, "PubkeyAcceptedAlgorithms"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3664
    const-string v0, "PubkeyAcceptedKeyTypes"

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3665
    :cond_0
    if-eqz v0, :cond_1

    .line 3666
    invoke-virtual {p0, p2, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    :cond_1
    return-void
.end method

.method private checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 961
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    .line 962
    move-object v1, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 966
    :goto_0
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getHostKeyCertificate()Lcom/jcraft/jsch/OpenSshCertificate;

    move-result-object p1

    .line 967
    if-eqz p1, :cond_8

    .line 969
    const/4 p2, 0x1

    :try_start_0
    invoke-static {p0, p1}, Lcom/jcraft/jsch/OpenSshCertificateHostKeyVerifier;->checkHostCertificate(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/OpenSshCertificate;)V

    .line 970
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 971
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Host \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is known and matches the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " host certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 971
    invoke-interface {v0, p2, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 974
    :cond_2
    return-void

    .line 989
    :catch_0
    move-exception v0
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchRevokedHostKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    nop

    .line 990
    const-string v2, "host_certificate_to_key_fallback"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 991
    throw v0

    .line 994
    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 995
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Host certificate validation failed, falling back to public key verification. This bypasses CA trust validation. Reason: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 998
    nop

    .line 995
    invoke-interface {v2, p2, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1000
    :cond_4
    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getCertificatePublicKey()[B

    move-result-object v5

    .line 1001
    if-nez v5, :cond_5

    .line 1002
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    .line 1003
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid certificate \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/OpenSshCertificate;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': missing public key"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1002
    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1005
    :cond_5
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getFingerPrint()Ljava/lang/String;

    move-result-object v3

    .line 1007
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyAlgorithName()Ljava/lang/String;

    move-result-object v4

    .line 1008
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->doCheckHostKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1009
    return-void

    .line 975
    :catch_1
    move-exception p1

    .line 975
    nop

    .line 978
    iget-object p3, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz p3, :cond_6

    .line 979
    iget-object p3, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: REVOKED HOST KEY DETECTED!\nA key associated with the host certificate for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string v2, " is marked as revoked.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v2, "This could mean that a stolen key is being used to impersonate this host."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-interface {p3, v0}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 984
    :cond_6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 985
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Host \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has provided a certificate with a revoked key."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-interface {p3, p2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 988
    :cond_7
    throw p1

    .line 1013
    :cond_8
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getHostKey()[B

    move-result-object v5

    .line 1014
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    move-result-object v2

    .line 1015
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getFingerPrint()Ljava/lang/String;

    move-result-object v3

    .line 1016
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyAlgorithName()Ljava/lang/String;

    move-result-object v4

    .line 1018
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->doCheckHostKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1019
    return-void
.end method

.method static checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z
    .locals 8

    .line 3336
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v2, Lcom/jcraft/jsch/KeyExchange;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 3337
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/jcraft/jsch/KeyExchange;

    .line 3338
    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/jcraft/jsch/KeyExchange;->doInit(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    .line 3339
    move v1, v0

    return v1

    .line 3340
    :catch_0
    move-exception p0

    .line 3340
    nop

    .line 3341
    return v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private checkKexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 3302
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3305
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3306
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckKexes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3309
    :cond_1
    const-string v1, "kex"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3312
    const-string v4, ","

    invoke-static {p1, v4}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3313
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, p1

    if-lt v5, v6, :cond_5

    .line 3321
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 3322
    return-object v0

    .line 3323
    :cond_2
    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 3325
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3326
    :goto_1
    array-length p1, v0

    if-lt v4, p1, :cond_3

    goto :goto_2

    .line 3327
    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not available."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3326
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3331
    :cond_4
    :goto_2
    return-object v0

    .line 3314
    :cond_5
    aget-object v6, p1, v5

    .line 3315
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 3316
    goto :goto_3

    .line 3317
    :cond_6
    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/jcraft/jsch/Session;->checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3318
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3313
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3303
    :cond_8
    return-object v0
.end method

.method static checkMac(Ljava/lang/String;)Z
    .locals 3

    .line 3292
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v2, Lcom/jcraft/jsch/MAC;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 3293
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/MAC;

    .line 3294
    invoke-interface {p0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {p0, v2}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 3295
    move v1, v0

    return v1

    .line 3296
    :catch_0
    move-exception p0

    .line 3296
    nop

    .line 3297
    return v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private checkMacs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 3257
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3260
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3261
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckMacs: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3264
    :cond_1
    const-string v1, "mac.c2s"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3265
    const-string v3, "mac.s2c"

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3268
    const-string v5, ","

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3269
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, p1

    if-lt v6, v7, :cond_5

    .line 3277
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 3278
    return-object v0

    .line 3279
    :cond_2
    new-array p1, v5, [Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 3281
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3282
    :goto_1
    array-length p1, v0

    if-lt v5, p1, :cond_3

    goto :goto_2

    .line 3283
    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not available."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3287
    :cond_4
    :goto_2
    return-object v0

    .line 3270
    :cond_5
    aget-object v7, p1, v6

    .line 3271
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_6

    .line 3272
    goto :goto_3

    .line 3273
    :cond_6
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Session;->checkMac(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3274
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3269
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3258
    :cond_8
    return-object v0
.end method

.method private checkSignatures(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 3346
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3349
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3350
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckSignatures: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3353
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3354
    const-string v3, ","

    invoke-static {p1, v3}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3355
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    if-lt v4, v5, :cond_5

    .line 3368
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 3369
    return-object v0

    .line 3370
    :cond_2
    new-array p1, v3, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 3372
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3373
    :goto_1
    array-length p1, v0

    if-lt v3, p1, :cond_3

    goto :goto_2

    .line 3374
    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not available."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 3373
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3377
    :cond_4
    :goto_2
    return-object v0

    .line 3359
    :cond_5
    :try_start_0
    aget-object v5, p1, v4

    invoke-static {v5}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->getBaseKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3361
    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/jcraft/jsch/Signature;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 3360
    nop

    .line 3362
    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/Signature;

    .line 3363
    invoke-interface {v5}, Lcom/jcraft/jsch/Signature;->init()V

    .line 3364
    goto :goto_3

    :catch_0
    move-exception v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3365
    aget-object v5, p1, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3355
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3347
    :cond_6
    return-object v0
.end method

.method private createChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 4

    .line 2896
    nop

    .line 2897
    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2898
    new-instance v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2900
    :goto_0
    const-string v2, "shell"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2901
    new-instance v0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    .line 2903
    :cond_1
    const-string v2, "exec"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2904
    new-instance v0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    .line 2906
    :cond_2
    const-string v2, "x11"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2907
    new-instance v0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    .line 2909
    :cond_3
    const-string v2, "auth-agent@openssh.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2910
    new-instance v0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    .line 2912
    :cond_4
    const-string v2, "direct-tcpip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2913
    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    .line 2915
    :cond_5
    const-string v2, "forwarded-tcpip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2916
    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    .line 2918
    :cond_6
    const-string v2, "sftp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2919
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    .line 2920
    const-string v2, "use_sftp_write_flush_workaround"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2921
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->setUseWriteFlushWorkaround(Z)V

    .line 2922
    nop

    .line 2924
    :cond_7
    const-string v2, "subsystem"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2925
    new-instance v0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    .line 2927
    :cond_8
    const-string v2, "direct-streamlocal@openssh.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2928
    new-instance v0, Lcom/jcraft/jsch/ChannelDirectStreamLocal;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectStreamLocal;-><init>()V

    .line 2930
    :cond_9
    if-nez v0, :cond_a

    .line 2931
    return-object v1

    .line 2933
    :cond_a
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)Lcom/jcraft/jsch/Channel;

    move-result-object v1

    return-object v1
.end method

.method private doCheckHostKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1024
    const-string v0, "StrictHostKeyChecking"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v1

    .line 1029
    const-string v2, "HashKnownHosts"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1030
    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v2, :cond_0

    .line 1031
    move-object v2, v1

    check-cast v2, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v2, p1, p5}, Lcom/jcraft/jsch/KnownHosts;->createHashedHostKey(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    .line 1032
    goto :goto_0

    .line 1033
    :cond_0
    new-instance v2, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v2, p1, p5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    .line 1036
    :goto_0
    nop

    .line 1037
    monitor-enter v1

    .line 1038
    :try_start_0
    invoke-interface {v1, p1, p5}, Lcom/jcraft/jsch/HostKeyRepository;->check(Ljava/lang/String;[B)I

    move-result v2

    .line 1037
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1041
    nop

    .line 1042
    const-string v3, "ask"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v3, :cond_1

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    if-ne v2, v5, :cond_6

    .line 1043
    nop

    .line 1044
    monitor-enter v1

    .line 1045
    :try_start_1
    invoke-interface {v1}, Lcom/jcraft/jsch/HostKeyRepository;->getKnownHostsRepositoryID()Ljava/lang/String;

    move-result-object v3

    .line 1044
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1047
    if-nez v3, :cond_2

    .line 1048
    const-string v3, "known_hosts"

    .line 1051
    :cond_2
    nop

    .line 1053
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v7, :cond_4

    .line 1054
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " host key has just been changed.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    const-string v8, "The fingerprint for the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " key sent by the remote host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v8, " is\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Please contact your system administrator.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string v8, "Add correct host key in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to get rid of this message."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1062
    const-string v7, "ask"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1063
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 1064
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v3

    .line 1063
    nop

    .line 1065
    goto :goto_1

    .line 1066
    :cond_3
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v7, v3}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    :cond_4
    move v3, v6

    .line 1070
    :goto_1
    if-nez v3, :cond_5

    .line 1071
    new-instance p2, Lcom/jcraft/jsch/JSchChangedHostKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "HostKey has been changed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchChangedHostKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1074
    :cond_5
    monitor-enter v1

    .line 1075
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v1, p1, p4, v3}, Lcom/jcraft/jsch/HostKeyRepository;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1076
    nop

    .line 1074
    monitor-exit v1

    move v3, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    move v3, v6

    .line 1080
    :goto_2
    const-string v7, "ask"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "yes"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_7
    if-eqz v2, :cond_c

    if-nez v3, :cond_c

    .line 1081
    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1082
    new-instance p2, Lcom/jcraft/jsch/JSchUnknownHostKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "reject HostKey: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchUnknownHostKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1085
    :cond_8
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_a

    .line 1086
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "The authenticity of host \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v8, "\' can\'t be established.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " key fingerprint is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".\n"

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string p3, "Are you sure you want to continue connecting?"

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1086
    invoke-interface {v3, p3}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result p3

    .line 1089
    if-nez p3, :cond_9

    .line 1090
    new-instance p2, Lcom/jcraft/jsch/JSchUnknownHostKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "reject HostKey: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchUnknownHostKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1092
    :cond_9
    nop

    .line 1093
    move v3, v4

    goto :goto_3

    .line 1094
    :cond_a
    if-ne v2, v4, :cond_b

    .line 1095
    new-instance p4, Lcom/jcraft/jsch/JSchUnknownHostKeyException;

    .line 1096
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "UnknownHostKey: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " key fingerprint is "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1095
    invoke-direct {p4, p1}, Lcom/jcraft/jsch/JSchUnknownHostKeyException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 1098
    :cond_b
    new-instance p2, Lcom/jcraft/jsch/JSchChangedHostKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "HostKey has been changed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchChangedHostKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1102
    :cond_c
    :goto_3
    const-string p3, "no"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    if-ne v4, v2, :cond_d

    .line 1103
    move v3, v4

    .line 1106
    :cond_d
    if-nez v2, :cond_12

    .line 1107
    invoke-interface {v1, p1, p4}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object p3

    .line 1108
    array-length p4, p5

    invoke-static {p5, v6, p4, v4}, Lcom/jcraft/jsch/Util;->toBase64([BIIZ)[B

    move-result-object p4

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p4

    .line 1109
    :goto_4
    array-length p5, p3

    if-lt v6, p5, :cond_e

    goto/16 :goto_5

    .line 1110
    :cond_e
    aget-object p5, p3, v6

    invoke-virtual {p5}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_11

    aget-object p5, p3, v6

    invoke-virtual {p5}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    move-result-object p5

    const-string v0, "@revoked"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_11

    .line 1111
    iget-object p3, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz p3, :cond_f

    .line 1112
    iget-object p3, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "The "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " host key for "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const-string p2, " is marked as revoked.\n"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "This could mean that a stolen key is being used to "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const-string p2, "impersonate this host."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1112
    invoke-interface {p3, p2}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    .line 1116
    :cond_f
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-interface {p2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 1117
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Host \'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' has provided revoked key."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v4, p3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1119
    :cond_10
    new-instance p2, Lcom/jcraft/jsch/JSchRevokedHostKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "revoked HostKey: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchRevokedHostKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1109
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 1124
    :cond_12
    :goto_5
    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    invoke-interface {p3, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 1125
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    .line 1126
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Host \'"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\' is known and matches the "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " host key"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1125
    invoke-interface {p3, v4, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1129
    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    invoke-interface {p3, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1130
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p3

    .line 1131
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Permanently added \'"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") to the list of known hosts."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1130
    invoke-interface {p3, v5, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1134
    :cond_14
    if-eqz v3, :cond_15

    .line 1135
    monitor-enter v1

    .line 1136
    :try_start_4
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    iget-object p2, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1, p1, p2}, Lcom/jcraft/jsch/HostKeyRepository;->add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    .line 1135
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 1139
    :cond_15
    return-void

    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method private expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1738
    nop

    .line 1739
    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    move-result v0

    .line 1740
    nop

    .line 1740
    :goto_0
    array-length v1, p4

    if-lt v1, p6, :cond_0

    .line 1752
    return-object p4

    .line 1741
    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 1742
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1743
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1744
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1745
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x0

    invoke-interface {p5, v1, v3, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1746
    array-length v1, p4

    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 1747
    array-length v2, p4

    invoke-static {p4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1748
    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    array-length v4, p4

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1749
    invoke-static {p4}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 1750
    move-object p4, v1

    goto :goto_0
.end method

.method private getChannelById(I)Lcom/jcraft/jsch/Channel;
    .locals 4

    .line 1234
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->channelsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 1235
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1237
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1242
    nop

    .line 1243
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1245
    return-object v3

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jcraft/jsch/Channel;

    .line 1238
    iget v2, v3, Lcom/jcraft/jsch/Channel;->id:I

    if-ne v2, p1, :cond_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    nop

    .line 1243
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1239
    return-object v3

    :catchall_0
    move-exception p1

    .line 1243
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1244
    throw p1
.end method

.method private initDeflater(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2835
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    .line 2836
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2837
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    .line 2838
    if-eqz v0, :cond_0

    .line 2839
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 2841
    :cond_0
    return-void

    .line 2843
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2844
    if-eqz v1, :cond_4

    .line 2845
    const-string v2, "zlib"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v2, :cond_4

    const-string v2, "zlib@openssh.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2847
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/jcraft/jsch/Compression;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 2848
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2849
    nop

    .line 2851
    const/4 p1, 0x6

    :try_start_1
    const-string v1, "compression_level"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2852
    move p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2854
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p0}, Lcom/jcraft/jsch/Compression;->init(IILcom/jcraft/jsch/Session;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2855
    nop

    .line 2859
    if-eqz v0, :cond_4

    .line 2860
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    return-void

    .line 2858
    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2856
    :try_start_3
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2858
    :goto_1
    nop

    .line 2859
    if-eqz v0, :cond_3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2860
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 2862
    :cond_3
    throw p1

    .line 2865
    :cond_4
    return-void
.end method

.method private initInflater(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2868
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    .line 2869
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2870
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    .line 2871
    if-eqz v0, :cond_0

    .line 2872
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 2874
    :cond_0
    return-void

    .line 2876
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2877
    if-eqz v1, :cond_4

    .line 2878
    const-string v2, "zlib"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v2, :cond_4

    const-string v2, "zlib@openssh.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2880
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/jcraft/jsch/Compression;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 2881
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/Compression;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    .line 2882
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    invoke-interface {p1, v1, v1, p0}, Lcom/jcraft/jsch/Compression;->init(IILcom/jcraft/jsch/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2883
    nop

    .line 2887
    if-eqz v0, :cond_4

    .line 2888
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    return-void

    .line 2886
    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2884
    :try_start_1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2886
    :goto_0
    nop

    .line 2887
    if-eqz v0, :cond_3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2888
    invoke-interface {v0}, Lcom/jcraft/jsch/Compression;->end()V

    .line 2890
    :cond_3
    throw p1

    .line 2893
    :cond_4
    return-void
.end method

.method private receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 587
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 588
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 589
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 590
    iget v0, p1, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    .line 591
    goto :goto_0

    .line 592
    :cond_0
    sub-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    .line 594
    :goto_0
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget p1, p1, Lcom/jcraft/jsch/Buffer;->s:I

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v0, p1, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->initialKex:Z

    if-eqz p1, :cond_5

    .line 597
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->enable_strict_kex:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->require_strict_kex:Z

    if-eqz p1, :cond_4

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->checkServerStrictKex()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->doStrictKex:Z

    .line 599
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->doStrictKex:Z

    if-eqz p1, :cond_3

    .line 600
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 601
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "Doing strict KEX"

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 604
    :cond_2
    iget p1, p0, Lcom/jcraft/jsch/Session;->seqi:I

    if-eq p1, v2, :cond_4

    .line 605
    new-instance p1, Lcom/jcraft/jsch/JSchStrictKexException;

    const-string v0, "KEXINIT not first packet from server"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchStrictKexException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 607
    :cond_3
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->require_strict_kex:Z

    if-eqz p1, :cond_4

    .line 608
    new-instance p1, Lcom/jcraft/jsch/JSchStrictKexException;

    const-string v0, "Strict KEX not supported by server"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchStrictKexException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 612
    :cond_4
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->enable_server_sig_algs:Z

    if-eqz p1, :cond_5

    .line 613
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->checkServerExtInfo()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->doExtInfo:Z

    .line 614
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->doExtInfo:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 615
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const-string v0, "ext-info messaging supported by server"

    invoke-interface {p1, v2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 620
    :cond_5
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez p1, :cond_6

    .line 621
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    .line 624
    :cond_6
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    invoke-static {p0, p1, v0}, Lcom/jcraft/jsch/KeyExchange;->guess(Lcom/jcraft/jsch/Session;[B[B)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    .line 626
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object p1, p1, v4

    const-string v0, "ext-info-c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 627
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object p1, p1, v4

    const-string v0, "ext-info-s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 628
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object p1, p1, v4

    const-string v0, "kex-strict-c-v00@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 629
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object p1, p1, v4

    const-string v0, "kex-strict-s-v00@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 633
    :cond_7
    iget-boolean p1, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 634
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 635
    :cond_8
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 636
    const-string v0, "NONE Cipher should not be chosen before authentification is successed."

    .line 635
    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 639
    :cond_9
    nop

    .line 642
    :try_start_0
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object p1, p1, v4

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/jcraft/jsch/KeyExchange;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 641
    nop

    .line 643
    new-array v0, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jcraft/jsch/KeyExchange;

    .line 644
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->V_S:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->doInit(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    .line 649
    return-object p1

    :catch_0
    move-exception p1

    .line 645
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 630
    :cond_a
    :goto_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Kex negotiated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1593
    :try_start_0
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->updateKeys(Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    nop

    .line 1595
    invoke-virtual {p2}, Lcom/jcraft/jsch/KeyExchange;->clearK()V

    .line 1597
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 1598
    iget-boolean p2, p0, Lcom/jcraft/jsch/Session;->doStrictKex:Z

    if-eqz p2, :cond_0

    .line 1599
    iput p1, p0, Lcom/jcraft/jsch/Session;->seqi:I

    .line 1600
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1601
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p1

    .line 1602
    const-string v0, "Reset incoming sequence number after receiving SSH_MSG_NEWKEYS for strict KEX"

    .line 1601
    invoke-interface {p1, p2, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1605
    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1595
    invoke-virtual {p2}, Lcom/jcraft/jsch/KeyExchange;->clearK()V

    .line 1596
    throw p1
.end method

.method private requestPortForwarding()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 3636
    const-string v0, "ClearAllForwardings"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3637
    return-void

    .line 3639
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v0

    .line 3640
    if-nez v0, :cond_1

    .line 3641
    return-void

    .line 3644
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    .line 3646
    const-string v1, "LocalForward"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3647
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3648
    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_2

    goto :goto_1

    .line 3649
    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;)I

    .line 3648
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3653
    :cond_3
    :goto_1
    const-string v1, "RemoteForward"

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3654
    if-eqz v0, :cond_5

    .line 3655
    :goto_2
    array-length v1, v0

    if-lt v2, v1, :cond_4

    return-void

    .line 3656
    :cond_4
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;)I

    .line 3655
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3659
    :cond_5
    return-void
.end method

.method private send_extinfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 948
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 949
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 950
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v2, "ext-info-in-auth@openssh.com"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 951
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v2, "0"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 952
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 954
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_EXT_INFO sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 957
    :cond_0
    return-void
.end method

.method private send_kexinit()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 714
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v0, :cond_0

    .line 715
    return-void

    .line 717
    :cond_0
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    const-string v1, "cipher.s2c"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    const-string v2, "CheckCiphers"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->checkCiphers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 720
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 721
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    .line 723
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cipher.c2s proposal before removing unavailable algos is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 722
    invoke-interface {v4, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cipher.s2c proposal before removing unavailable algos is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 724
    invoke-interface {v4, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 728
    :cond_1
    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 735
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cipher.c2s proposal after removing unavailable algos is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cipher.s2c proposal after removing unavailable algos is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 737
    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto :goto_1

    .line 731
    :cond_3
    :goto_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_4
    :goto_1
    const-string v2, "mac.c2s"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    const-string v4, "mac.s2c"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 744
    const-string v5, "CheckMacs"

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/Session;->checkMacs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 745
    if-eqz v5, :cond_8

    array-length v6, v5

    if-lez v6, :cond_8

    .line 746
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 747
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    .line 748
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mac.c2s proposal before removing unavailable algos is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 747
    invoke-interface {v6, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    .line 750
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mac.s2c proposal before removing unavailable algos is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 749
    invoke-interface {v6, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 753
    :cond_5
    invoke-static {v2, v5}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-static {v4, v5}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 755
    if-eqz v2, :cond_7

    if-nez v4, :cond_6

    goto :goto_2

    .line 759
    :cond_6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 760
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mac.c2s proposal after removing unavailable algos is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 760
    invoke-interface {v5, v3, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    .line 763
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mac.s2c proposal after removing unavailable algos is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 762
    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto :goto_3

    .line 756
    :cond_7
    :goto_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available macs."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_8
    :goto_3
    const-string v2, "kex"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 768
    const-string v4, "CheckKexes"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/Session;->checkKexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 769
    if-eqz v4, :cond_b

    array-length v5, v4

    if-lez v5, :cond_b

    .line 770
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 771
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "kex proposal before removing unavailable algos is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 774
    :cond_9
    invoke-static {v2, v4}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    if-nez v2, :cond_a

    .line 776
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available kexes."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_a
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 780
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "kex proposal after removing unavailable algos is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 784
    :cond_b
    iget-boolean v4, p0, Lcom/jcraft/jsch/Session;->enable_server_sig_algs:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-nez v4, :cond_c

    .line 785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",ext-info-c"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 788
    :cond_c
    iget-boolean v4, p0, Lcom/jcraft/jsch/Session;->enable_strict_kex:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/jcraft/jsch/Session;->require_strict_kex:Z

    if-eqz v4, :cond_e

    :cond_d
    iget-boolean v4, p0, Lcom/jcraft/jsch/Session;->initialKex:Z

    if-eqz v4, :cond_e

    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",kex-strict-c-v00@openssh.com"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    :cond_e
    const-string v4, "server_host_key"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 793
    const-string v5, "CheckSignatures"

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/Session;->checkSignatures(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 795
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->not_available_shks:[Ljava/lang/String;

    .line 796
    if-eqz v5, :cond_13

    array-length v6, v5

    if-lez v6, :cond_13

    .line 797
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 798
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    .line 799
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "server_host_key proposal before removing unavailable algos is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 798
    invoke-interface {v6, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 802
    :cond_f
    invoke-static {v4, v5}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 803
    if-nez v4, :cond_10

    .line 804
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available sig algorithm."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_10
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 808
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    .line 809
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "server_host_key proposal after removing unavailable algos is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 808
    invoke-interface {v6, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 814
    :cond_11
    invoke-static {v4, v5}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->filterUnavailableCertTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 813
    nop

    .line 815
    if-nez v4, :cond_12

    .line 816
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available signature algorithms."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_12
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 820
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    .line 821
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "server_host_key proposal after removing unavailable cert algos is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 820
    invoke-interface {v5, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 826
    :cond_13
    const-string v5, "prefer_known_host_key_types"

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 827
    const-string v6, "yes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 828
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 829
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    .line 830
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "server_host_key proposal before known_host reordering is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 829
    invoke-interface {v5, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 833
    :cond_14
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v5

    .line 834
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 835
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    if-eqz v7, :cond_15

    .line 836
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    .line 838
    :cond_15
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    if-nez v7, :cond_16

    iget v7, p0, Lcom/jcraft/jsch/Session;->port:I

    const/16 v8, 0x16

    if-eq v7, v8, :cond_16

    .line 839
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 841
    :cond_16
    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object v5

    .line 842
    if-eqz v5, :cond_1d

    array-length v6, v5

    if-lez v6, :cond_1d

    .line 843
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 844
    new-instance v7, Ljava/util/ArrayList;

    const-string v8, ","

    invoke-static {v4, v8}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 845
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 846
    nop

    .line 846
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_17

    .line 875
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1d

    .line 876
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 877
    const-string v4, ","

    invoke-static {v4, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 847
    :cond_17
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 848
    nop

    .line 855
    invoke-static {v9}, Lcom/jcraft/jsch/OpenSshCertificateKeyTypes;->getBaseKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 856
    if-eqz v10, :cond_18

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    .line 857
    goto :goto_5

    :cond_18
    move-object v10, v9

    .line 861
    :goto_5
    const-string v11, "rsa-sha2-256"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "rsa-sha2-512"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 862
    const-string v11, "ssh-rsa-sha224@ssh.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "ssh-rsa-sha256@ssh.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 863
    const-string v11, "ssh-rsa-sha384@ssh.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "ssh-rsa-sha512@ssh.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 864
    :cond_19
    const-string v10, "ssh-rsa"

    .line 867
    :cond_1a
    array-length v11, v5

    move v12, v3

    :goto_6
    if-lt v12, v11, :cond_1b

    goto :goto_4

    :cond_1b
    aget-object v13, v5, v12

    .line 868
    invoke-virtual {v13}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 869
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 871
    goto :goto_4

    .line 867
    :cond_1c
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 881
    :cond_1d
    :goto_7
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 882
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v5

    .line 883
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "server_host_key proposal after known_host reordering is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 882
    invoke-interface {v5, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 887
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    .line 888
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 902
    new-instance v6, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v6}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 903
    new-instance v7, Lcom/jcraft/jsch/Packet;

    invoke-direct {v7, v6}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 904
    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 905
    const/16 v8, 0x14

    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 906
    sget-object v8, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v8

    .line 907
    :try_start_0
    sget-object v9, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    iget-object v10, v6, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v11, v6, Lcom/jcraft/jsch/Buffer;->index:I

    const/16 v12, 0x10

    invoke-interface {v9, v10, v11, v12}, Lcom/jcraft/jsch/Random;->fill([BII)V

    .line 908
    invoke-virtual {v6, v12}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 906
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 911
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 912
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 913
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 914
    const-string v0, "mac.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 915
    const-string v0, "mac.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 916
    const-string v0, "compression.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 917
    const-string v0, "compression.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 918
    const-string v0, "lang.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 919
    const-string v0, "lang.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 920
    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 921
    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 923
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    .line 924
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    .line 925
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    .line 927
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 929
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 930
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v5, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 932
    :cond_1f
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private send_newkeys()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 937
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 938
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 940
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v2, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 943
    :cond_0
    return-void
.end method

.method private start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1549
    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->isCBC()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/jcraft/jsch/MAC;->isEtM()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_3

    .line 1553
    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 1554
    iget v0, p0, Lcom/jcraft/jsch/Session;->seqi:I

    invoke-interface {p3, v0}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 1555
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {p3, v0, p2, p4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 1558
    :cond_1
    nop

    .line 1560
    nop

    .line 1560
    :goto_0
    const/4 p4, 0x0

    if-gtz p5, :cond_2

    .line 1569
    goto :goto_2

    .line 1561
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 1562
    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length p4, p4

    if-le p5, p4, :cond_3

    iget-object p4, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length p4, p4

    goto :goto_1

    :cond_3
    move p4, p5

    .line 1563
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v0, v1, p2, p4}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1564
    if-eqz p3, :cond_4

    .line 1565
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {p3, v0, p2, p4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 1567
    :cond_4
    sub-int/2addr p5, p4

    goto :goto_0

    :catch_0
    move-exception p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    nop

    .line 1571
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p5

    const/4 v0, 0x3

    invoke-interface {p5, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 1572
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start_discard finished early due to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v0, v1, p4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1576
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 1577
    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {p3, p1, p2}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 1580
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "Packet corrupt"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 1581
    if-eqz p4, :cond_7

    .line 1582
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/JSchException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1584
    :cond_7
    throw p1

    .line 1550
    :cond_8
    :goto_3
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "Packet corrupt"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateKeys(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1608
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getK()[B

    move-result-object v7

    .line 1609
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getH()[B

    move-result-object v8

    .line 1610
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getHash()Lcom/jcraft/jsch/HASH;

    move-result-object p1

    .line 1612
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 1613
    array-length v0, v8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    .line 1614
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    array-length v1, v8

    invoke-static {v8, v9, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 1626
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1627
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1628
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 1629
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1630
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v0, v9, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1631
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    .line 1633
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1635
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v3, v2, v0

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1636
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v2, v9, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1637
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    .line 1639
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v3, v2, v0

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1640
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v2, v9, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1641
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    .line 1643
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v3, v2, v0

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1644
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v2, v9, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1645
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    .line 1647
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v3, v2, v0

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1648
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v2, v9, v3}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1649
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    .line 1651
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v3, v2, v0

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1652
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v0, v9, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1653
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    .line 1660
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    .line 1661
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1662
    new-array v2, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    .line 1663
    nop

    .line 1663
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v2, v2

    if-gt v0, v2, :cond_4

    .line 1675
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 1676
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    .line 1678
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 1680
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/MAC;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1681
    new-array v1, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    .line 1682
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    .line 1683
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 1685
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    .line 1686
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    .line 1689
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1690
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/Cipher;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1691
    new-array v1, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    .line 1692
    nop

    .line 1692
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v1, v1

    if-gt v0, v1, :cond_3

    .line 1704
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    invoke-interface {v0, v9, v1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    .line 1705
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    .line 1707
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1708
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 1709
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/jcraft/jsch/MAC;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1710
    new-array v1, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    .line 1711
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    move-object v2, v7

    move-object v3, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    .line 1712
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    invoke-interface {p1, v0}, Lcom/jcraft/jsch/MAC;->init([B)V

    .line 1715
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    .line 1716
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    .line 1718
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object p1, p1, v0

    .line 1719
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V

    .line 1720
    nop

    .line 1726
    return-void

    .line 1693
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 1694
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1695
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1696
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1697
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v0, v9, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1698
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    .line 1699
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v1, v1

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 1700
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v3, v3

    invoke-static {v2, v9, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1701
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v2, v2

    array-length v3, v0

    invoke-static {v0, v9, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1702
    iput-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    goto/16 :goto_1

    .line 1664
    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 1665
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1666
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1667
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    .line 1668
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p1, v0, v9, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    .line 1669
    invoke-interface {p1}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    .line 1670
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v2, v2

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 1671
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v4, v4

    invoke-static {v3, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1672
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v3, v3

    array-length v4, v0

    invoke-static {v0, v9, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1673
    iput-object v2, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    goto/16 :goto_0

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_5

    .line 1722
    throw p1

    .line 1723
    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method checkCASignatureAlgorithm(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 3395
    const-string v0, "ca_signature_algorithms"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3397
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3401
    :cond_0
    const-string v2, ","

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3398
    :cond_1
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    .line 3399
    nop

    .line 3403
    :goto_1
    nop

    .line 3404
    array-length v3, v2

    move v4, v1

    :goto_2
    const/4 v5, 0x1

    if-lt v4, v3, :cond_2

    move v5, v1

    goto :goto_3

    :cond_2
    aget-object v6, v2, v4

    .line 3405
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3406
    nop

    .line 3407
    nop

    .line 3411
    :goto_3
    if-nez v5, :cond_3

    .line 3412
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CA signature algorithm \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3413
    const-string p1, "\' is not in the allowed ca_signature_algorithms list: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3412
    invoke-direct {v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3418
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->not_available_shks:[Ljava/lang/String;

    .line 3419
    if-eqz v0, :cond_6

    .line 3420
    array-length v2, v0

    :goto_4
    if-lt v1, v2, :cond_4

    return-void

    :cond_4
    aget-object v3, v0, v1

    .line 3421
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3422
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 3423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CA signature algorithm \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not available at runtime. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3424
    const-string p1, "This may be due to missing cryptographic provider support "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3425
    const-string p1, "(e.g., Ed25519 on Java 8 without Bouncy Castle)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3422
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3420
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3431
    :cond_6
    return-void

    .line 3404
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method checkServerExtInfo()Z
    .locals 7

    .line 677
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 678
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    .line 679
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 681
    nop

    .line 682
    nop

    .line 683
    const/4 v1, 0x0

    move v3, v1

    move v2, v3

    .line 683
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    .line 698
    return v1

    .line 684
    :cond_0
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-byte v4, v0, v3

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_1

    goto :goto_2

    .line 685
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 686
    :cond_2
    :goto_2
    if-ne v2, v3, :cond_3

    .line 687
    add-int/lit8 v3, v3, 0x1

    .line 688
    nop

    .line 689
    move v2, v3

    goto :goto_0

    .line 691
    :cond_3
    const-string v4, "ext-info-s"

    sub-int v6, v3, v2

    invoke-static {v0, v2, v6}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 692
    move v1, v5

    return v1

    .line 694
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 695
    move v2, v3

    goto :goto_0
.end method

.method checkServerStrictKex()Z
    .locals 7

    .line 653
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 654
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    .line 655
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    .line 657
    nop

    .line 658
    nop

    .line 659
    const/4 v1, 0x0

    move v3, v1

    move v2, v3

    .line 659
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    .line 673
    return v1

    .line 660
    :cond_0
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-byte v4, v0, v3

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_1

    goto :goto_2

    .line 661
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 662
    :cond_2
    :goto_2
    if-ne v2, v3, :cond_3

    .line 663
    add-int/lit8 v3, v3, 0x1

    .line 664
    nop

    .line 665
    move v2, v3

    goto :goto_0

    .line 667
    :cond_3
    const-string v4, "kex-strict-s-v00@openssh.com"

    sub-int v6, v3, v2

    invoke-static {v0, v2, v6}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 668
    move v1, v5

    return v1

    .line 670
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 671
    move v2, v3

    goto :goto_0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 208
    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->connect(I)V

    .line 209
    return-void
.end method

.method public connect(I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 212
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v3, :cond_0

    .line 213
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "session is already connected"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->initialKex:Z

    .line 217
    new-instance v4, Lcom/jcraft/jsch/IO;

    invoke-direct {v4}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v4, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    .line 218
    sget-object v4, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 220
    :try_start_0
    const-string v4, "random"

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v6, Lcom/jcraft/jsch/Random;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 221
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/Random;

    sput-object v4, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 223
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 226
    :cond_1
    :goto_0
    sget-object v4, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    invoke-static {v4}, Lcom/jcraft/jsch/Packet;->setRandom(Lcom/jcraft/jsch/Random;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Connecting to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 235
    :cond_2
    const/4 v4, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xd

    :try_start_1
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    if-nez v9, :cond_4

    .line 238
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    if-nez v9, :cond_3

    .line 239
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v10, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-static {v9, v10, v2}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 240
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 241
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 242
    goto :goto_1

    .line 243
    :cond_3
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v11, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-interface {v9, v10, v11}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 244
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-interface {v9, v10}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v9

    .line 245
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-interface {v10, v11}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v10

    .line 248
    :goto_1
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v11, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 249
    iget-object v11, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v11, v9}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 250
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 251
    goto :goto_2

    .line 252
    :cond_4
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 253
    :try_start_2
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    iget-object v12, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v13, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-interface {v10, v11, v12, v13, v2}, Lcom/jcraft/jsch/Proxy;->connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    .line 254
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v11}, Lcom/jcraft/jsch/Proxy;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    .line 255
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v11}, Lcom/jcraft/jsch/Proxy;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    .line 256
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v10}, Lcom/jcraft/jsch/Proxy;->getSocket()Ljava/net/Socket;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 252
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    :goto_2
    if-lez v2, :cond_5

    :try_start_3
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v9, :cond_5

    .line 261
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v9, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 264
    :cond_5
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const-string v10, "Connection established"

    invoke-interface {v9, v3, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 270
    :cond_6
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v9, v1}, Lcom/jcraft/jsch/JSch;->addSession(Lcom/jcraft/jsch/Session;)V

    .line 274
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    array-length v9, v9

    add-int/2addr v9, v6

    new-array v9, v9, [B

    .line 275
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    array-length v11, v11

    invoke-static {v10, v5, v9, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    array-length v10, v9

    sub-int/2addr v10, v6

    aput-byte v7, v9, v10

    .line 277
    array-length v10, v9

    sub-int/2addr v10, v3

    const/16 v11, 0xa

    aput-byte v11, v9, v10

    .line 278
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    array-length v12, v9

    invoke-virtual {v10, v9, v5, v12}, Lcom/jcraft/jsch/IO;->put([BII)V

    .line 282
    :cond_7
    :goto_3
    nop

    .line 283
    nop

    .line 284
    move v9, v5

    move v10, v9

    .line 284
    :cond_8
    iget-object v12, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v12, v12, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v12, v12

    if-lt v9, v12, :cond_9

    goto :goto_4

    .line 285
    :cond_9
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v10}, Lcom/jcraft/jsch/IO;->getByte()I

    move-result v10

    .line 286
    if-gez v10, :cond_a

    .line 287
    goto :goto_4

    .line 288
    :cond_a
    iget-object v12, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v12, v12, Lcom/jcraft/jsch/Buffer;->buffer:[B

    int-to-byte v13, v10

    aput-byte v13, v12, v9

    .line 289
    add-int/lit8 v9, v9, 0x1

    .line 290
    if-ne v10, v11, :cond_8

    .line 291
    nop

    .line 293
    :goto_4
    if-gez v10, :cond_b

    .line 294
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v9, "connection is closed by foreign host"

    invoke-direct {v2, v9}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_b
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    sub-int v12, v9, v3

    aget-byte v10, v10, v12

    if-ne v10, v11, :cond_c

    .line 298
    add-int/lit8 v9, v9, -0x1

    .line 299
    if-lez v9, :cond_c

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    sub-int v12, v9, v3

    aget-byte v10, v10, v12

    if-ne v10, v7, :cond_c

    .line 300
    add-int/lit8 v9, v9, -0x1

    .line 304
    :cond_c
    if-le v9, v4, :cond_7

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v10, v10

    if-eq v9, v10, :cond_d

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v10, v10, v5

    const/16 v12, 0x53

    if-ne v10, v12, :cond_7

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v10, v10, v3

    if-ne v10, v12, :cond_7

    .line 305
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v10, v10, v6

    const/16 v12, 0x48

    if-ne v10, v12, :cond_7

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v10, v10, v4

    const/16 v12, 0x2d

    if-eq v10, v12, :cond_d

    .line 308
    goto :goto_3

    .line 311
    :cond_d
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v10, v10

    if-eq v9, v10, :cond_2f

    const/4 v10, 0x7

    if-lt v9, v10, :cond_2f

    .line 312
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    const/16 v11, 0x31

    if-ne v10, v11, :cond_e

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v11, 0x6

    aget-byte v10, v10, v11

    const/16 v11, 0x39

    if-eq v10, v11, :cond_e

    goto/16 :goto_15

    .line 319
    :cond_e
    new-array v10, v9, [B

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    .line 320
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v10, v5, v11, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v9

    .line 323
    const-string v10, "SSH-2.0-OpenSSH_7.4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v1, Lcom/jcraft/jsch/Session;->sshBugSigType74:Z

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    invoke-interface {v10, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Remote version string: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v3, v9}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Local version string: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->V_C:[B

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v3, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 330
    :cond_f
    const-string v9, "enable_server_sig_algs"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/jcraft/jsch/Session;->enable_server_sig_algs:Z

    .line 331
    const-string v9, "enable_ext_info_in_auth"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/jcraft/jsch/Session;->enable_ext_info_in_auth:Z

    .line 332
    const-string v9, "enable_strict_kex"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/jcraft/jsch/Session;->enable_strict_kex:Z

    .line 333
    const-string v9, "require_strict_kex"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/jcraft/jsch/Session;->require_strict_kex:Z

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    .line 336
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v9

    iput-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 337
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v9

    const/16 v10, 0x14

    if-eq v9, v10, :cond_10

    .line 338
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 339
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "invalid protocol: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const-string v10, "SSH_MSG_KEXINIT received"

    invoke-interface {v9, v3, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 346
    :cond_11
    iget-object v9, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v9}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v9

    .line 349
    :cond_12
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v10}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 350
    invoke-virtual {v9}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v10

    iget-object v11, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v11

    if-ne v10, v11, :cond_2e

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J

    .line 352
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v10

    .line 353
    if-nez v10, :cond_13

    .line 355
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 356
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "verify: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_13
    invoke-virtual {v9}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v10, :cond_12

    .line 368
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 369
    iput-boolean v3, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    .line 370
    iget-object v12, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iget v13, v1, Lcom/jcraft/jsch/Session;->port:I

    invoke-direct {v1, v12, v13, v9}, Lcom/jcraft/jsch/Session;->checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V

    .line 371
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    .line 372
    iget-wide v12, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v10

    add-long/2addr v10, v12

    iput-wide v10, v1, Lcom/jcraft/jsch/Session;->kex_start_time:J
    :try_end_4
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 373
    nop

    .line 379
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    .line 382
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v10}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    .line 384
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_2d

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    invoke-interface {v10, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    const-string v11, "SSH_MSG_NEWKEYS received"

    invoke-interface {v10, v3, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 390
    :cond_14
    iget-object v10, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v10, v9}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    .line 391
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->initialKex:Z

    .line 392
    nop

    .line 397
    iget-boolean v9, v1, Lcom/jcraft/jsch/Session;->enable_server_sig_algs:Z

    if-eqz v9, :cond_15

    iget-boolean v9, v1, Lcom/jcraft/jsch/Session;->enable_ext_info_in_auth:Z

    if-eqz v9, :cond_15

    iget-boolean v9, v1, Lcom/jcraft/jsch/Session;->doExtInfo:Z

    if-eqz v9, :cond_15

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_extinfo()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 402
    :cond_15
    :try_start_6
    const-string v9, "MaxAuthTries"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 403
    if-eqz v9, :cond_16

    .line 404
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 406
    nop

    .line 410
    :cond_16
    nop

    .line 411
    nop

    .line 413
    nop

    .line 416
    :try_start_7
    const-string v9, "userauth.none"

    invoke-virtual {v1, v9}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 415
    nop

    .line 417
    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jcraft/jsch/UserAuthNone;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 418
    nop

    .line 422
    :try_start_8
    invoke-virtual {v9, v1}, Lcom/jcraft/jsch/UserAuthNone;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v10

    .line 424
    const-string v11, "PreferredAuthentications"

    invoke-virtual {v1, v11}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 426
    const-string v12, ","

    invoke-static {v11, v12}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 428
    nop

    .line 429
    if-nez v10, :cond_18

    .line 430
    invoke-virtual {v9}, Lcom/jcraft/jsch/UserAuthNone;->getMethods()Ljava/lang/String;

    move-result-object v9

    .line 431
    if-eqz v9, :cond_17

    .line 432
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 433
    move-object v11, v9

    goto :goto_5

    .line 436
    :cond_17
    goto :goto_5

    :cond_18
    const/4 v11, 0x0

    .line 440
    :goto_5
    const-string v9, ","

    invoke-static {v11, v9}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 442
    nop

    .line 446
    move v13, v10

    move v14, v5

    move v10, v14

    .line 446
    :goto_6
    if-nez v13, :cond_25

    if-eqz v12, :cond_25

    array-length v15, v12

    if-lt v14, v15, :cond_19

    .line 520
    goto/16 :goto_13

    .line 448
    :cond_19
    add-int/lit8 v15, v14, 0x1

    aget-object v14, v12, v14

    .line 449
    nop

    .line 450
    move v4, v5

    :goto_7
    array-length v7, v9

    if-lt v4, v7, :cond_1a

    move v4, v5

    goto :goto_8

    .line 451
    :cond_1a
    aget-object v7, v9, v4

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 452
    nop

    .line 453
    move v4, v3

    .line 456
    :goto_8
    if-nez v4, :cond_1b

    .line 457
    goto/16 :goto_12

    .line 462
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 463
    const-string v4, "Authentications that can continue: "

    .line 464
    sub-int v7, v15, v3

    :goto_9
    array-length v8, v12

    if-lt v7, v8, :cond_1c

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Next authentication method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto :goto_a

    .line 465
    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v12, v7

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 466
    add-int v8, v7, v3

    array-length v3, v12

    if-ge v8, v3, :cond_1d

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v4, v3

    .line 464
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    goto :goto_9

    .line 473
    :cond_1e
    :goto_a
    nop

    .line 475
    nop

    .line 476
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userauth."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userauth."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/jcraft/jsch/UserAuth;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 478
    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/jcraft/jsch/UserAuth;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 480
    goto :goto_b

    :catch_1
    move-exception v0

    .line 481
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "failed to load "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " method"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_1f
    const/4 v8, 0x0

    .line 486
    :goto_b
    if-eqz v8, :cond_23

    .line 487
    nop

    .line 489
    :try_start_b
    invoke-virtual {v8, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v3
    :try_end_b
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 490
    if-eqz v3, :cond_20

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Authentication succeeded ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v4, v8, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_c
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 493
    goto :goto_c

    .line 509
    :catch_2
    move-exception v0

    move v13, v3

    goto :goto_e

    .line 495
    :catch_3
    move-exception v0

    move v13, v3

    goto :goto_f

    :catch_4
    move-exception v0

    move v13, v3

    goto :goto_11

    :cond_20
    :goto_c
    const/4 v4, 0x3

    const/16 v7, 0xd

    move v13, v3

    move v14, v15

    move v10, v5

    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 509
    :catch_5
    move-exception v0

    :goto_e
    move-object v3, v0

    .line 509
    nop

    .line 512
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "an exception during authentication\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 514
    nop

    .line 513
    invoke-interface {v4, v6, v7, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    :cond_21
    move v10, v5

    goto :goto_13

    .line 507
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 507
    nop

    .line 508
    throw v2

    .line 505
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 505
    nop

    .line 506
    throw v2

    .line 495
    :catch_8
    move-exception v0

    :goto_f
    move-object v3, v0

    .line 495
    nop

    .line 496
    nop

    .line 497
    invoke-virtual {v3}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    move-result-object v3

    .line 498
    const-string v4, ","

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 499
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 500
    move v14, v5

    goto :goto_10

    :cond_22
    move v14, v15

    .line 503
    :goto_10
    nop

    .line 504
    nop

    .line 444
    const/4 v4, 0x3

    const/16 v7, 0xd

    move v10, v5

    move-object v11, v3

    goto :goto_d

    :catch_9
    move-exception v0

    .line 494
    :goto_11
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v7, 0xd

    move v14, v15

    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_23
    :goto_12
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v7, 0xd

    move v14, v15

    goto/16 :goto_6

    .line 450
    :cond_24
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto/16 :goto_7

    .line 523
    :cond_25
    :goto_13
    if-nez v13, :cond_28

    .line 524
    iget v2, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    iget v3, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    if-lt v2, v3, :cond_26

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Login trials exceeds "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 529
    :cond_26
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz v10, :cond_27

    const-string v4, "Auth cancel"

    goto :goto_14

    :cond_27
    const-string v4, "Auth fail"

    :goto_14
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " for methods \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_28
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_2a

    if-gtz v2, :cond_29

    iget v2, v1, Lcom/jcraft/jsch/Session;->timeout:I

    if-lez v2, :cond_2a

    .line 534
    :cond_29
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    iget v3, v1, Lcom/jcraft/jsch/Session;->timeout:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 537
    :cond_2a
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jcraft/jsch/Session;->isAuthed:Z

    .line 539
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 540
    :try_start_e
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v3, :cond_2c

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    new-instance v4, Lcom/jcraft/jsch/-$$Lambda$DYhZ_aV6AtMDSEcbRAfAhi_p44g;

    invoke-direct {v4, v1}, Lcom/jcraft/jsch/-$$Lambda$DYhZ_aV6AtMDSEcbRAfAhi_p44g;-><init>(Lcom/jcraft/jsch/Session;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    .line 542
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Connect thread "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " session"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 543
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v3, :cond_2b

    .line 544
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    iget-boolean v4, v1, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 546
    :cond_2b
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->requestPortForwarding()V

    .line 539
    :cond_2c
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 581
    iget-object v2, v1, Lcom/jcraft/jsch/Session;->password:[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 582
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/jcraft/jsch/Session;->password:[B

    .line 584
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v3

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 419
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 407
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "MaxAuthTries: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "MaxAuthTries"

    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 393
    :cond_2d
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 394
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid protocol(newkeys): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 374
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 375
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_prompt:Z

    .line 376
    throw v2

    .line 359
    :cond_2e
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 360
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid protocol(kex): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_2f
    :goto_15
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "invalid server\'s version string"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_11
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 580
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_18

    .line 554
    :catch_d
    move-exception v0

    move-object v2, v0

    .line 554
    nop

    .line 555
    :try_start_13
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->in_kex:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 557
    :try_start_14
    iget-boolean v3, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v3, :cond_30

    .line 558
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 560
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xd

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getBufferMargin()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->checkFreeSize(I)V

    .line 561
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 562
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 563
    iget-object v4, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 564
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v4, "en"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 565
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 567
    goto :goto_16

    :catch_e
    move-exception v0

    .line 570
    :cond_30
    :goto_16
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 571
    goto :goto_17

    :catch_f
    move-exception v0

    .line 573
    :goto_17
    :try_start_16
    iput-boolean v5, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 575
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_31

    .line 576
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 577
    :cond_31
    instance-of v3, v2, Lcom/jcraft/jsch/JSchException;

    if-eqz v3, :cond_32

    .line 578
    check-cast v2, Lcom/jcraft/jsch/JSchException;

    throw v2

    .line 579
    :cond_32
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Session.connect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 580
    :goto_18
    nop

    .line 581
    iget-object v3, v1, Lcom/jcraft/jsch/Session;->password:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->bzero([B)V

    .line 582
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/jcraft/jsch/Session;->password:[B

    .line 583
    throw v2
.end method

.method delChannel(Lcom/jcraft/jsch/Channel;)V
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->channelsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2230
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2232
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->channels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2233
    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2236
    return-void

    :catchall_0
    move-exception p1

    .line 2234
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2235
    throw p1
.end method

.method public delPortForwardingL(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2460
    const-string v0, "127.0.0.1"

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingL(Ljava/lang/String;I)V

    .line 2461
    return-void
.end method

.method public delPortForwardingL(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2471
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/PortWatcher;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    .line 2472
    return-void
.end method

.method public delPortForwardingR(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2820
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingR(Ljava/lang/String;I)V

    .line 2821
    return-void
.end method

.method public delPortForwardingR(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2831
    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    .line 2832
    return-void
.end method

.method public disconnect()V
    .locals 9

    .line 2239
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v0, :cond_0

    .line 2240
    return-void

    .line 2243
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2244
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disconnecting from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 2253
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->channelsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2254
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2256
    :try_start_0
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->disconnectingChannels:Z

    .line 2257
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->channels:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2258
    nop

    .line 2259
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2262
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2262
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9

    .line 2273
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 2275
    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->delPort(Lcom/jcraft/jsch/Session;)V

    .line 2276
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;)V

    .line 2277
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->removeFakedCookie(Lcom/jcraft/jsch/Session;)V

    .line 2279
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 2280
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 2281
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 2282
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 2283
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    .line 2279
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2286
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    .line 2288
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_6

    .line 2289
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    .line 2290
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2291
    :cond_4
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_5

    .line 2292
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 2293
    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    if-eqz v2, :cond_6

    .line 2294
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 2296
    :cond_6
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    if-nez v2, :cond_7

    .line 2297
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_8

    .line 2298
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 2299
    goto :goto_1

    .line 2300
    :cond_7
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2301
    :try_start_3
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v3}, Lcom/jcraft/jsch/Proxy;->close()V

    .line 2300
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2303
    :try_start_4
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2305
    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    .line 2308
    :cond_8
    :goto_1
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    .line 2309
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    .line 2310
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2312
    :try_start_7
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->disconnectingChannels:Z

    .line 2313
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2314
    nop

    .line 2315
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2321
    iput v4, p0, Lcom/jcraft/jsch/Session;->seqi:I

    .line 2322
    iput v4, p0, Lcom/jcraft/jsch/Session;->seqo:I

    .line 2323
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->initialKex:Z

    .line 2324
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->doStrictKex:Z

    .line 2325
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->doExtInfo:Z

    .line 2326
    iput-object v5, p0, Lcom/jcraft/jsch/Session;->serverSigAlgs:[Ljava/lang/String;

    .line 2332
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->removeSession(Lcom/jcraft/jsch/Session;)Z

    .line 2335
    return-void

    :catchall_1
    move-exception v1

    .line 2315
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2316
    throw v1

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Channel;

    .line 2264
    :try_start_9
    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 2265
    goto/16 :goto_0

    :catch_1
    move-exception v5

    .line 2266
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2267
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception disconnecting channel of type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2268
    iget-object v3, v3, Lcom/jcraft/jsch/Channel;->type:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2267
    invoke-interface {v6, v4, v3, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    .line 2259
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2260
    throw v1
.end method

.method encode(Lcom/jcraft/jsch/Packet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1177
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    aput v2, v0, v1

    .line 1179
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    const/4 v5, 0x5

    invoke-interface {v2, v3, v5, v4}, Lcom/jcraft/jsch/Compression;->compress([BI[I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1180
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1182
    :cond_0
    nop

    .line 1183
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 1185
    iget v2, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1188
    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v4}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    .line 1190
    :goto_1
    if-nez v0, :cond_4

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v5}, Lcom/jcraft/jsch/MAC;->isEtM()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1189
    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v1

    .line 1191
    :goto_2
    if-nez v0, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v3, v1

    :cond_6
    invoke-virtual {p1, v2, v3}, Lcom/jcraft/jsch/Packet;->padding(IZ)V

    .line 1193
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1194
    if-eqz v0, :cond_7

    .line 1196
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget v1, p0, Lcom/jcraft/jsch/Session;->seqo:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 1198
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    const/4 v11, 0x0

    const/4 v9, 0x4

    move-object v7, v2

    move v8, v11

    move-object v10, v2

    invoke-interface/range {v6 .. v11}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 1200
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v9, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface/range {v6 .. v11}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 1201
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 1202
    return-void

    :cond_7
    const/4 v0, 0x4

    if-eqz v4, :cond_8

    .line 1203
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v3, v2, v1, v0}, Lcom/jcraft/jsch/Cipher;->updateAAD([BII)V

    .line 1204
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int v9, v1, v0

    const/4 v11, 0x4

    move-object v7, v2

    move v8, v11

    move-object v10, v2

    invoke-interface/range {v6 .. v11}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V

    .line 1205
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 1206
    return-void

    :cond_8
    if-eqz v5, :cond_9

    .line 1207
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int v9, v3, v0

    const/4 v11, 0x4

    move-object v7, v2

    move v8, v11

    move-object v10, v2

    invoke-interface/range {v6 .. v11}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 1208
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget v2, p0, Lcom/jcraft/jsch/Session;->seqo:I

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 1209
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v2, v1, v3}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 1210
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 1211
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 1212
    return-void

    .line 1213
    :cond_9
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_a

    .line 1214
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget v3, p0, Lcom/jcraft/jsch/Session;->seqo:I

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 1215
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v3, v1, v4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 1216
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v1, v3}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 1218
    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_b

    .line 1219
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v9, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v11, 0x0

    move-object v7, v2

    move v8, v11

    move-object v10, v2

    invoke-interface/range {v6 .. v11}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 1221
    :cond_b
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_c

    .line 1222
    iget-object p1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    .line 1225
    :cond_c
    return-void
.end method

.method getBufferMargin()I
    .locals 4

    .line 3693
    nop

    .line 3696
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    .line 3697
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    .line 3700
    nop

    .line 3701
    const/16 v2, 0x14

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3702
    :cond_0
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 3703
    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v2

    .line 3705
    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 3706
    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 3707
    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v2

    .line 3710
    :cond_2
    :goto_0
    const/16 v0, 0x40

    add-int/2addr v0, v2

    .line 3712
    return v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 3100
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3052
    const-string v0, "PubkeyAcceptedKeyTypes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3053
    const-string p1, "PubkeyAcceptedAlgorithms"

    .line 3055
    :cond_0
    nop

    .line 3056
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3057
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3058
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3059
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3061
    :cond_1
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3062
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3063
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3064
    :cond_2
    return-object v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 3146
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKey()Lcom/jcraft/jsch/HostKey;
    .locals 1

    .line 3142
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    return-object v0
.end method

.method public getHostKeyAlias()Ljava/lang/String;
    .locals 1

    .line 3162
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    .line 3473
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    .line 3474
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    return-object v0

    .line 3475
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    return-object v0
.end method

.method getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;
    .locals 1

    .line 3451
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    if-nez v0, :cond_0

    .line 3452
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    return-object v0

    .line 3453
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    return-object v0
.end method

.method public getLogger()Lcom/jcraft/jsch/Logger;
    .locals 1

    .line 3676
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->logger:Lcom/jcraft/jsch/Logger;

    if-eqz v0, :cond_0

    .line 3677
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->logger:Lcom/jcraft/jsch/Logger;

    return-object v0

    .line 3679
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getInstanceLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 3154
    iget v0, p0, Lcom/jcraft/jsch/Session;->port:I

    return v0
.end method

.method public getPortForwardingL()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2480
    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortForwardingR()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2608
    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliveCountMax()I
    .locals 1

    .line 3204
    iget v0, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    return v0
.end method

.method public getServerAliveInterval()I
    .locals 1

    .line 3183
    iget v0, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    return v0
.end method

.method getServerSigAlgs()[Ljava/lang/String;
    .locals 1

    .line 2953
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->serverSigAlgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 3096
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSessionId()[B
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    return-object v0
.end method

.method public getStreamForwarder(Ljava/lang/String;I)Lcom/jcraft/jsch/Channel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2719
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    .line 2720
    if-eqz v0, :cond_0

    .line 2721
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setHost(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setPort(I)V

    .line 2723
    return-object v0

    .line 2725
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to add DirectTCPIP channel to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2726
    const-string p1, " - session may be disconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2727
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2728
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 2730
    :cond_1
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 2354
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 3076
    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    return v0
.end method

.method public getUnavailableSignatures()[Ljava/lang/String;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->not_available_shks:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/jcraft/jsch/UserInfo;
    .locals 1

    .line 2977
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 3150
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 3072
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    return v0
.end method

.method public noMoreSessionChannels()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3130
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 3131
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 3132
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 3133
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 3134
    sget-object v2, Lcom/jcraft/jsch/Session;->nomoresessions:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 3135
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 3136
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 3137
    return-void
.end method

.method public openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1144
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v0, :cond_0

    .line 1145
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "session is down"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1148
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->createChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    .line 1149
    if-eqz v2, :cond_2

    .line 1150
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->init()V

    .line 1151
    instance-of v3, v2, Lcom/jcraft/jsch/ChannelSession;

    if-eqz v3, :cond_1

    .line 1152
    move-object v3, v2

    check-cast v3, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/Session;->applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V

    .line 1154
    :cond_1
    move-object v0, v2

    return-object v0

    .line 1156
    :cond_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1157
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to open channel of type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    const-string v4, " - type unsupported or session may be disconnecting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    invoke-interface {v2, v1, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1161
    return-object v0

    :catch_0
    move-exception v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1163
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    .line 1164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception creating channel of type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1163
    invoke-interface {v3, v1, p1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1167
    :cond_3
    return-object v0
.end method

.method parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2625
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2626
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    .line 2627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2628
    move p1, v2

    :goto_0
    array-length v4, v0

    if-lt p1, v4, :cond_2

    .line 2633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2634
    move p1, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2639
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 2635
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    add-int v0, p1, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2637
    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2629
    :cond_2
    aget-object v4, v0, p1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 2630
    goto :goto_2

    .line 2631
    :cond_3
    aget-object v4, v0, p1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2628
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2642
    :cond_4
    :goto_3
    nop

    .line 2643
    new-instance v0, Lcom/jcraft/jsch/Session$Forwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/Session$Forwarding;-><init>()V

    .line 2645
    :try_start_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    .line 2646
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseForwarding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2648
    :cond_5
    :try_start_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    .line 2649
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2650
    :try_start_2
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 2651
    new-instance v5, Lcom/jcraft/jsch/JSchException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseForwarding: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2652
    :cond_6
    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2653
    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v1, p1

    .line 2654
    :goto_4
    :try_start_3
    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/jcraft/jsch/Session$Forwarding;->socketPath:Ljava/lang/String;

    .line 2656
    :goto_5
    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2657
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_a

    .line 2658
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    .line 2659
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2660
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2661
    :cond_7
    const-string p1, "0.0.0.0"

    .line 2662
    :cond_8
    const-string v1, "localhost"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2663
    const-string p1, "127.0.0.1"

    .line 2664
    :cond_9
    iput-object p1, v0, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    .line 2665
    return-object v0

    .line 2666
    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    .line 2667
    const-string p1, "127.0.0.1"

    iput-object p1, v0, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    .line 2669
    nop

    .line 2672
    return-object v0

    :catch_2
    move-exception p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2670
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseForwarding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1251
    nop

    .line 1252
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->isChaCha20()Z

    move-result v1

    if-eqz v1, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v10

    .line 1253
    :goto_0
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->isAEAD()Z

    move-result v1

    if-eqz v1, :cond_1

    move v12, v9

    goto :goto_1

    :cond_1
    move v12, v10

    .line 1255
    :goto_1
    if-nez v11, :cond_2

    if-nez v12, :cond_2

    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->isEtM()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1254
    move v13, v9

    goto :goto_2

    :cond_2
    move v13, v10

    .line 1259
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 1260
    const v1, 0xff00

    const/4 v5, 0x2

    const/high16 v2, 0xff0000

    const/high16 v3, -0x1000000

    const/4 v4, 0x4

    if-eqz v11, :cond_8

    .line 1262
    iget-object v14, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v15, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v6, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v14, v15, v6, v4}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1263
    iget v6, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v6, v4

    iput v6, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1265
    iget-object v6, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget v14, v7, Lcom/jcraft/jsch/Session;->seqi:I

    invoke-interface {v6, v14}, Lcom/jcraft/jsch/Cipher;->update(I)V

    .line 1267
    new-array v14, v4, [B

    .line 1268
    iget-object v6, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v15, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v22, 0x0

    const/16 v20, 0x4

    move-object/from16 v17, v6

    move-object/from16 v18, v15

    move/from16 v19, v22

    move-object/from16 v21, v14

    invoke-interface/range {v17 .. v22}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 1269
    aget-byte v6, v14, v10

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v3, v6

    aget-byte v6, v14, v9

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v2, v6

    or-int/2addr v2, v3

    .line 1270
    aget-byte v3, v14, v5

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v1, v3

    .line 1269
    or-int/2addr v1, v2

    .line 1270
    const/4 v6, 0x3

    aget-byte v2, v14, v6

    and-int/lit16 v2, v2, 0xff

    .line 1269
    or-int v15, v1, v2

    .line 1272
    const/4 v1, 0x5

    if-lt v15, v1, :cond_4

    const/high16 v1, 0x40000

    if-le v15, v1, :cond_3

    goto :goto_3

    :cond_3
    move v9, v4

    goto :goto_4

    .line 1273
    :cond_4
    :goto_3
    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/16 v16, 0x0

    const/high16 v17, 0x40000

    move-object v1, v7

    move-object/from16 v18, v2

    move-object v2, v8

    move v9, v4

    move-object/from16 v4, v18

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 1275
    :goto_4
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v1

    add-int/2addr v15, v1

    .line 1276
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v15

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_5

    .line 1277
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v15

    new-array v1, v1, [B

    .line 1278
    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {v2, v10, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1279
    iput-object v1, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1282
    :cond_5
    iget v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    rem-int v1, v15, v1

    if-eqz v1, :cond_7

    .line 1283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad packet length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1287
    :cond_6
    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    const/high16 v2, 0x40000

    sub-int v6, v2, v1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, v8

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 1290
    :cond_7
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v1, v2, v3, v15}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1292
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v1

    sub-int v1, v15, v1

    .line 1293
    iget v2, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v2, v1

    iput v2, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1295
    :try_start_0
    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v3, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    add-int v19, v1, v9

    iget-object v1, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v21

    move-object/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    nop

    .line 1300
    iget-object v1, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v14, v10, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1301
    const/4 v14, 0x2

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1297
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Packet corrupt"

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    move v9, v4

    if-nez v12, :cond_12

    if-eqz v13, :cond_9

    goto/16 :goto_8

    .line 1352
    :cond_9
    iget-object v4, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v5, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v6, v8, Lcom/jcraft/jsch/Buffer;->index:I

    iget v14, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    invoke-virtual {v4, v5, v6, v14}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1353
    iget v4, v8, Lcom/jcraft/jsch/Buffer;->index:I

    iget v5, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    add-int/2addr v4, v5

    iput v4, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1354
    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v4, :cond_a

    .line 1355
    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v5, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v6, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    iget-object v14, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v21, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v21

    move/from16 v19, v6

    move-object/from16 v20, v14

    invoke-interface/range {v16 .. v21}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 1359
    :cond_a
    iget-object v4, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v4, v10

    shl-int/lit8 v4, v4, 0x18

    and-int/2addr v3, v4

    iget-object v4, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 1360
    iget-object v3, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v14, 0x2

    aget-byte v3, v3, v14

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v1, v3

    .line 1359
    or-int/2addr v1, v2

    .line 1360
    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v15, 0x3

    aget-byte v2, v2, v15

    and-int/lit16 v2, v2, 0xff

    .line 1359
    or-int v6, v1, v2

    .line 1362
    const/4 v1, 0x5

    if-lt v6, v1, :cond_c

    const/high16 v1, 0x40000

    if-le v6, v1, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v17, v6

    goto :goto_6

    .line 1363
    :cond_c
    :goto_5
    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/4 v5, 0x0

    const/high16 v16, 0x40000

    move-object v1, v7

    move-object v2, v8

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 1368
    :goto_6
    add-int v1, v17, v9

    iget v2, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    sub-int v6, v1, v2

    .line 1372
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v6

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    .line 1373
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v6

    new-array v1, v1, [B

    .line 1374
    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {v2, v10, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1375
    iput-object v1, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1378
    :cond_d
    iget v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    rem-int v1, v6, v1

    if-eqz v1, :cond_f

    .line 1379
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad packet length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1383
    :cond_e
    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    const/high16 v2, 0x40000

    sub-int v16, v2, v1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, v8

    move v15, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto :goto_7

    :cond_f
    move v15, v6

    .line 1386
    :goto_7
    if-lez v15, :cond_10

    .line 1387
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v1, v2, v3, v15}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1388
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v15

    iput v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1389
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v1, :cond_10

    .line 1390
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    iget-object v4, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v5, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v15

    move-object/from16 v20, v4

    move/from16 v21, v5

    invoke-interface/range {v16 .. v21}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 1394
    :cond_10
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    if-eqz v1, :cond_1b

    .line 1395
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget v2, v7, Lcom/jcraft/jsch/Session;->seqi:I

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 1396
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v1, v2, v10, v3}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 1397
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    invoke-interface {v1, v2, v10}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 1399
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v10, v3}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1400
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->arraysequals([B[B)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1401
    iget v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    add-int/2addr v1, v15

    const/high16 v2, 0x40000

    if-le v1, v2, :cond_11

    .line 1402
    new-instance v1, Ljava/io/IOException;

    const-string v2, "MAC Error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1404
    :cond_11
    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget v5, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1405
    sub-int v1, v2, v15

    iget v2, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    sub-int v6, v1, v2

    .line 1404
    move-object v1, v7

    move-object v2, v8

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 1406
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_12
    :goto_8
    const/4 v14, 0x2

    .line 1302
    iget-object v4, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v5, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v6, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1303
    iget v4, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v4, v9

    iput v4, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1304
    iget-object v4, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v4, v4, v10

    shl-int/lit8 v4, v4, 0x18

    and-int/2addr v3, v4

    iget-object v4, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 1305
    iget-object v3, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v3, v3, v14

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v1, v3

    .line 1304
    or-int/2addr v1, v2

    .line 1305
    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 1304
    or-int v15, v1, v2

    .line 1307
    const/4 v1, 0x5

    if-lt v15, v1, :cond_13

    const/high16 v1, 0x40000

    if-le v15, v1, :cond_14

    .line 1308
    :cond_13
    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/4 v5, 0x0

    const/high16 v6, 0x40000

    move-object v1, v7

    move-object v2, v8

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 1310
    :cond_14
    if-eqz v12, :cond_15

    .line 1311
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v1

    add-int/2addr v15, v1

    .line 1313
    :cond_15
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v15

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_16

    .line 1314
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v15

    new-array v1, v1, [B

    .line 1315
    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {v2, v10, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1316
    iput-object v1, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1319
    :cond_16
    iget v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    rem-int v1, v15, v1

    if-eqz v1, :cond_18

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad packet length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v9, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1324
    :cond_17
    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v4, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    const/high16 v2, 0x40000

    sub-int v6, v2, v1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, v8

    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    .line 1327
    :cond_18
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v1, v2, v3, v15}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1328
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v1, v15

    iput v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1330
    if-eqz v12, :cond_19

    .line 1332
    :try_start_1
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {v1, v2, v10, v9}, Lcom/jcraft/jsch/Cipher;->updateAAD([BII)V

    .line 1333
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v5, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v6, 0x4

    move v3, v6

    move v4, v15

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/Cipher;->doFinal([BII[BI)V
    :try_end_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1334
    nop

    .line 1338
    iget v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v2}, Lcom/jcraft/jsch/Cipher;->getTagSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1339
    goto :goto_9

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1335
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Packet corrupt"

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1340
    :cond_19
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget v2, v7, Lcom/jcraft/jsch/Session;->seqi:I

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/MAC;->update(I)V

    .line 1341
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v1, v2, v10, v3}, Lcom/jcraft/jsch/MAC;->update([BII)V

    .line 1342
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    invoke-interface {v1, v2, v10}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    .line 1344
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    iget-object v3, v7, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v10, v3}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    .line 1345
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    iget-object v2, v7, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->arraysequals([B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1346
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "Packet corrupt"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    :cond_1a
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v5, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v6, 0x4

    move v3, v6

    move v4, v15

    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    .line 1350
    nop

    .line 1411
    :cond_1b
    :goto_9
    iget v1, v7, Lcom/jcraft/jsch/Session;->seqi:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lcom/jcraft/jsch/Session;->seqi:I

    if-nez v1, :cond_1d

    iget-boolean v1, v7, Lcom/jcraft/jsch/Session;->enable_strict_kex:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v7, Lcom/jcraft/jsch/Session;->require_strict_kex:Z

    if-eqz v1, :cond_1d

    :cond_1c
    iget-boolean v1, v7, Lcom/jcraft/jsch/Session;->initialKex:Z

    if-eqz v1, :cond_1d

    .line 1412
    new-instance v1, Lcom/jcraft/jsch/JSchStrictKexException;

    const-string v2, "incoming sequence number wrapped during initial KEX"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchStrictKexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1415
    :cond_1d
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    if-eqz v1, :cond_1f

    .line 1418
    :try_start_2
    iget-object v1, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v1, v1, v9

    .line 1419
    iget-object v2, v7, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    iget v3, v8, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    aput v1, v2, v10

    .line 1420
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    iget-object v2, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v3, v7, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    invoke-interface {v1, v2, v4, v3}, Lcom/jcraft/jsch/Compression;->uncompress([BI[I)[B

    move-result-object v1

    .line 1421
    if-eqz v1, :cond_1e

    .line 1422
    iput-object v1, v8, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 1423
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    aget v1, v1, v10

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v8, Lcom/jcraft/jsch/Buffer;->index:I

    .line 1424
    goto :goto_a

    .line 1425
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "fail in inflater"

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1428
    goto/16 :goto_f

    .line 1430
    :catch_2
    move-exception v0

    move-object v1, v0
    :try_end_2
    .catch Lcom/jcraft/jsch/Compression$InflaterException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1430
    nop

    .line 1431
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Compression$InflaterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1435
    :cond_1f
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1437
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 1438
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1439
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1440
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 1441
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 1442
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    .line 1443
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    .line 1444
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v2

    .line 1445
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    .line 1446
    new-instance v4, Lcom/jcraft/jsch/JSchSessionDisconnectException;

    .line 1447
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_MSG_DISCONNECT: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1448
    nop

    .line 1446
    invoke-direct {v4, v5, v1, v2, v3}, Lcom/jcraft/jsch/JSchSessionDisconnectException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1450
    :cond_20
    iget-boolean v2, v7, Lcom/jcraft/jsch/Session;->initialKex:Z

    if-eqz v2, :cond_21

    iget-boolean v2, v7, Lcom/jcraft/jsch/Session;->doStrictKex:Z

    if-eqz v2, :cond_21

    .line 1451
    goto/16 :goto_f

    .line 1452
    :cond_21
    if-eq v1, v14, :cond_32

    .line 1453
    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1454
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1455
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1456
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 1457
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1461
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_22
    move v9, v3

    goto/16 :goto_2

    :cond_23
    if-ne v1, v9, :cond_24

    .line 1462
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1463
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1464
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 1470
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_24
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_25

    .line 1471
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1472
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1473
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 1474
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    invoke-direct {v7, v1}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v1

    .line 1475
    if-eqz v1, :cond_32

    .line 1476
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(J)V

    .line 1478
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_25
    const/4 v2, 0x7

    if-ne v1, v2, :cond_30

    .line 1479
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1480
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1481
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 1482
    nop

    .line 1483
    iget-boolean v1, v7, Lcom/jcraft/jsch/Session;->enable_server_sig_algs:Z

    if-nez v1, :cond_26

    .line 1484
    nop

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    .line 1487
    const-string v3, "Ignoring SSH_MSG_EXT_INFO while enable_server_sig_algs != yes"

    .line 1486
    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1489
    goto :goto_b

    :cond_26
    const/4 v2, 0x1

    iget-boolean v1, v7, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v1, :cond_27

    .line 1490
    nop

    .line 1491
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    .line 1493
    const-string v3, "Ignoring SSH_MSG_EXT_INFO received after SSH_MSG_USERAUTH_SUCCESS"

    .line 1492
    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1495
    goto :goto_b

    :cond_27
    iget-boolean v1, v7, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v1, :cond_29

    .line 1496
    nop

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    .line 1499
    const-string v3, "Ignoring SSH_MSG_EXT_INFO received before SSH_MSG_NEWKEYS"

    .line 1498
    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1501
    :cond_28
    :goto_b
    move v3, v2

    goto :goto_c

    .line 1502
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const-string v3, "SSH_MSG_EXT_INFO received"

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_2a
    move v3, v10

    .line 1506
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v4

    .line 1507
    const-wide/16 v1, 0x0

    :goto_d
    cmp-long v6, v1, v4

    if-ltz v6, :cond_2b

    .line 1529
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1508
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    .line 1509
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v9

    .line 1510
    if-nez v3, :cond_2f

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v6

    const-string v14, "server-sig-algs"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1511
    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v6

    .line 1512
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const/4 v14, 0x1

    invoke-interface {v9, v14}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v10, "server-sig-algs=<"

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ">"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v14, v10}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1515
    :cond_2c
    iget-boolean v9, v7, Lcom/jcraft/jsch/Session;->sshBugSigType74:Z

    if-eqz v9, :cond_2e

    .line 1516
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 1517
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ",rsa-sha2-256,rsa-sha2-512"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1518
    goto :goto_e

    .line 1519
    :cond_2d
    const-string v6, "rsa-sha2-256,rsa-sha2-512"

    .line 1521
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v9

    .line 1523
    const-string v14, "OpenSSH 7.4 detected: adding rsa-sha2-256 & rsa-sha2-512 to server-sig-algs"

    .line 1522
    invoke-interface {v9, v10, v14}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1526
    :cond_2e
    const-string v9, ","

    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/jcraft/jsch/Session;->serverSigAlgs:[Ljava/lang/String;

    .line 1507
    :cond_2f
    const-wide/16 v9, 0x1

    add-long/2addr v1, v9

    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_30
    const/16 v3, 0x34

    if-ne v1, v3, :cond_31

    .line 1530
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/jcraft/jsch/Session;->isAuthed:Z

    .line 1531
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    if-nez v1, :cond_31

    iget-object v1, v7, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    if-nez v1, :cond_31

    .line 1533
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v1, v1, v3

    .line 1534
    invoke-direct {v7, v1}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    .line 1535
    iget-object v1, v7, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    aget-object v1, v1, v2

    .line 1536
    invoke-direct {v7, v1}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V

    .line 1543
    :cond_31
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 1544
    return-object v8

    :cond_32
    const/4 v9, 0x1

    goto/16 :goto_2
.end method

.method public rekey()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 710
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    .line 711
    return-void
.end method

.method run()V
    .locals 13

    .line 1897
    new-instance v0, Lcom/jcraft/jsch/-$$Lambda$DYhZ_aV6AtMDSEcbRAfAhi_p44g;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/-$$Lambda$DYhZ_aV6AtMDSEcbRAfAhi_p44g;-><init>(Lcom/jcraft/jsch/Session;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    .line 1900
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 1901
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 1902
    nop

    .line 1904
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 1905
    new-array v4, v2, [I

    .line 1906
    nop

    .line 1908
    nop

    .line 1910
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v0

    :goto_0
    move-object v0, v6

    :goto_1
    move v7, v5

    .line 1910
    :goto_2
    :try_start_0
    iget-boolean v9, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v9, :cond_0

    .line 2207
    goto/16 :goto_8

    .line 1912
    :cond_0
    :try_start_1
    invoke-virtual {p0, v8}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1913
    nop

    .line 1914
    nop

    .line 1926
    :try_start_2
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 1928
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 1929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    .line 1930
    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v7

    .line 1931
    if-nez v7, :cond_17

    .line 1932
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "verify: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1937
    :cond_1
    const/16 v8, 0x5d

    sparse-switch v7, :sswitch_data_0

    .line 2204
    new-instance v0, Ljava/io/IOException;

    goto/16 :goto_7

    .line 2169
    :sswitch_0
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2170
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2171
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2172
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2173
    if-nez v7, :cond_2

    .line 2174
    goto/16 :goto_6

    .line 2176
    :cond_2
    iput v5, v7, Lcom/jcraft/jsch/Channel;->reply:I

    .line 2177
    goto/16 :goto_6

    .line 2159
    :sswitch_1
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2160
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2161
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2162
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2163
    if-nez v7, :cond_3

    .line 2164
    goto/16 :goto_6

    .line 2166
    :cond_3
    iput v2, v7, Lcom/jcraft/jsch/Channel;->reply:I

    .line 2167
    goto/16 :goto_6

    .line 2093
    :sswitch_2
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2094
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2095
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2096
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    .line 2097
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v10

    if-eqz v10, :cond_4

    move v10, v2

    goto :goto_3

    :cond_4
    move v10, v5

    .line 2098
    :goto_3
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2099
    if-eqz v7, :cond_17

    .line 2100
    nop

    .line 2101
    invoke-static {v8}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v8

    const-string v11, "exit-status"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v11, 0x63

    const/16 v12, 0x64

    if-eqz v8, :cond_5

    .line 2102
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    .line 2103
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    .line 2104
    move v12, v11

    .line 2106
    :cond_5
    if-eqz v10, :cond_17

    .line 2107
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2108
    invoke-virtual {v9, v12}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2109
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2110
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 2114
    goto/16 :goto_6

    .line 2050
    :sswitch_3
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2051
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2052
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2053
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2054
    if-eqz v7, :cond_17

    .line 2056
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 2061
    goto/16 :goto_6

    .line 2035
    :sswitch_4
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2036
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2037
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2038
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2039
    if-eqz v7, :cond_17

    .line 2042
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->eof_remote()V

    .line 2048
    goto/16 :goto_6

    .line 1991
    :sswitch_5
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1992
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 1993
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 1994
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 1995
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1996
    invoke-virtual {v9, v3, v4}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v10

    .line 1998
    if-nez v7, :cond_6

    .line 1999
    goto/16 :goto_6

    .line 2002
    :cond_6
    aget v11, v4, v5

    if-nez v11, :cond_7

    .line 2003
    goto/16 :goto_6

    .line 2006
    :cond_7
    aget v11, v3, v5

    aget v12, v4, v5

    invoke-virtual {v7, v10, v11, v12}, Lcom/jcraft/jsch/Channel;->write_ext([BII)V

    .line 2008
    aget v10, v4, v5

    .line 2009
    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int v10, v11, v10

    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    .line 2010
    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_17

    .line 2011
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2012
    invoke-virtual {v9, v8}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2013
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2014
    iget v8, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v8, v10

    invoke-virtual {v9, v8}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2015
    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2016
    :try_start_3
    iget-boolean v8, v7, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v8, :cond_8

    .line 2017
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 2015
    :cond_8
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2019
    :try_start_4
    iget v8, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2021
    goto/16 :goto_6

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 1951
    :sswitch_6
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 1952
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1953
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 1954
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 1955
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 1956
    invoke-virtual {v9, v3, v4}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v10

    .line 1957
    if-nez v7, :cond_9

    .line 1958
    goto/16 :goto_6

    .line 1961
    :cond_9
    aget v11, v4, v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-nez v11, :cond_a

    .line 1962
    goto/16 :goto_6

    .line 1966
    :cond_a
    :try_start_7
    aget v11, v3, v5

    aget v12, v4, v5

    invoke-virtual {v7, v10, v11, v12}, Lcom/jcraft/jsch/Channel;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1967
    nop

    .line 1975
    :try_start_8
    aget v10, v4, v5

    .line 1976
    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int v10, v11, v10

    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    .line 1977
    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    iget v11, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_17

    .line 1978
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 1979
    invoke-virtual {v9, v8}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 1980
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 1981
    iget v8, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iget v10, v7, Lcom/jcraft/jsch/Channel;->lwsize:I

    sub-int/2addr v8, v10

    invoke-virtual {v9, v8}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 1982
    monitor-enter v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1983
    :try_start_9
    iget-boolean v8, v7, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v8, :cond_b

    .line 1984
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 1982
    :cond_b
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1986
    :try_start_a
    iget v8, v7, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1988
    goto/16 :goto_6

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_0
    move-exception v8

    .line 1970
    :try_start_d
    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 1971
    goto/16 :goto_6

    :catch_1
    move-exception v7

    .line 1973
    goto/16 :goto_6

    .line 2024
    :sswitch_7
    :try_start_e
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2025
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2026
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2027
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2028
    if-nez v7, :cond_c

    .line 2029
    goto/16 :goto_6

    .line 2031
    :cond_c
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(J)V

    .line 2032
    goto/16 :goto_6

    .line 2078
    :sswitch_8
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2079
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2080
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2081
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2082
    if-eqz v7, :cond_17

    .line 2083
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    .line 2086
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    .line 2087
    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->close:Z

    .line 2088
    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    .line 2089
    invoke-virtual {v7, v5}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    .line 2091
    goto/16 :goto_6

    .line 2063
    :sswitch_9
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2064
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2065
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    .line 2066
    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->getChannelById(I)Lcom/jcraft/jsch/Channel;

    move-result-object v7

    .line 2067
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    .line 2068
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v10

    .line 2069
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v12

    .line 2070
    if-eqz v7, :cond_17

    .line 2071
    invoke-virtual {v7, v10, v11}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    .line 2072
    invoke-virtual {v7, v12}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    .line 2073
    iput-boolean v2, v7, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    .line 2074
    invoke-virtual {v7, v8}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    .line 2076
    goto/16 :goto_6

    .line 2116
    :sswitch_a
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2117
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2118
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    .line 2119
    invoke-static {v7}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v7

    .line 2120
    const-string v8, "forwarded-tcpip"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v10, 0x5c

    if-nez v8, :cond_10

    const-string v8, "x11"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    if-nez v8, :cond_10

    .line 2121
    :cond_d
    const-string v8, "auth-agent@openssh.com"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    if-nez v8, :cond_10

    .line 2122
    :cond_e
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2123
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to add channel of type "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    const-string v7, " - type either unsupported or prohibited"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2123
    invoke-interface {v8, v5, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 2126
    :cond_f
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2127
    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2128
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2129
    invoke-virtual {v9, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2130
    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2131
    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2132
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 2133
    goto/16 :goto_6

    .line 2134
    :cond_10
    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v8

    .line 2135
    if-eqz v8, :cond_12

    .line 2136
    invoke-virtual {v8, v9}, Lcom/jcraft/jsch/Channel;->getData(Lcom/jcraft/jsch/Buffer;)V

    .line 2137
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/jcraft/jsch/-$$Lambda$KuZotKWK_y9Cs4jeX66YCW9tyjk;

    invoke-direct {v11, v8}, Lcom/jcraft/jsch/-$$Lambda$KuZotKWK_y9Cs4jeX66YCW9tyjk;-><init>(Lcom/jcraft/jsch/Channel;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v8

    .line 2138
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Channel "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2139
    iget-boolean v7, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v7, :cond_11

    .line 2140
    iget-boolean v7, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v8, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2142
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2143
    goto/16 :goto_6

    .line 2144
    :cond_12
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2145
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v8

    .line 2146
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to add channel of type "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - session may be disconnecting"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2145
    invoke-interface {v8, v5, v7}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 2148
    :cond_13
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2149
    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2150
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2151
    const/4 v7, 0x4

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 2152
    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2153
    sget-object v7, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 2154
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 2157
    goto :goto_6

    .line 2191
    :sswitch_b
    iget-object v8, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getThread()Ljava/lang/Thread;

    move-result-object v8

    .line 2192
    if-eqz v8, :cond_17

    .line 2193
    iget-object v10, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/16 v11, 0x51

    if-ne v7, v11, :cond_14

    move v12, v2

    goto :goto_4

    :cond_14
    move v12, v5

    :goto_4
    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setReply(I)V

    .line 2194
    if-ne v7, v11, :cond_15

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result v7

    if-nez v7, :cond_15

    .line 2195
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2196
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2197
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V

    .line 2199
    :cond_15
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 2201
    goto :goto_6

    .line 2179
    :sswitch_c
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 2180
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getShort()I

    .line 2181
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 2182
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v7

    if-eqz v7, :cond_16

    move v7, v2

    goto :goto_5

    :cond_16
    move v7, v5

    .line 2183
    :goto_5
    if-eqz v7, :cond_17

    .line 2184
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 2185
    const/16 v7, 0x52

    invoke-virtual {v9, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 2186
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 2188
    goto :goto_6

    .line 1945
    :sswitch_d
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    .line 1946
    invoke-direct {p0, v9, v0}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    .line 1947
    nop

    .line 1948
    move-object v8, v9

    goto/16 :goto_0

    .line 1940
    :sswitch_e
    invoke-direct {p0, v9}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    .line 1941
    :cond_17
    :goto_6
    move-object v8, v9

    goto/16 :goto_1

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown SSH message type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v9

    .line 1915
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez v10, :cond_18

    iget v10, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    if-ge v7, v10, :cond_18

    .line 1916
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->sendKeepAliveMsg()V

    .line 1917
    add-int/lit8 v7, v7, 0x1

    .line 1918
    goto/16 :goto_2

    .line 1919
    :cond_18
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v10, :cond_19

    iget v10, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    if-ge v7, v10, :cond_19

    .line 1920
    add-int/lit8 v7, v7, 0x1

    .line 1921
    goto/16 :goto_2

    .line 1923
    :cond_19
    throw v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :catch_3
    move-exception v0

    .line 2208
    iput-boolean v5, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    .line 2209
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2210
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    .line 2211
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught an exception, leaving main loop due to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2210
    invoke-interface {v1, v2, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2217
    :cond_1a
    :goto_8
    :try_start_f
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 2218
    goto :goto_9

    .line 2221
    :catch_4
    move-exception v0

    .line 2221
    goto :goto_9

    :catch_5
    move-exception v0

    .line 2225
    :goto_9
    iput-boolean v5, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    .line 2226
    return-void

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_e
        0x15 -> :sswitch_d
        0x50 -> :sswitch_c
        0x51 -> :sswitch_b
        0x52 -> :sswitch_b
        0x5a -> :sswitch_a
        0x5b -> :sswitch_9
        0x5c -> :sswitch_8
        0x5d -> :sswitch_7
        0x5e -> :sswitch_6
        0x5f -> :sswitch_5
        0x60 -> :sswitch_4
        0x61 -> :sswitch_3
        0x62 -> :sswitch_2
        0x63 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendIgnore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3108
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 3109
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 3110
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 3111
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 3112
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 3113
    return-void
.end method

.method public sendKeepAliveMsg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3118
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 3119
    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 3120
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 3121
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 3122
    sget-object v2, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 3123
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 3124
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 3125
    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    .line 3104
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    .line 3105
    return-void
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3039
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3040
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 3041
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    .line 3043
    :cond_0
    const-string v1, "PubkeyAcceptedKeyTypes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3044
    iget-object p1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    const-string v1, "PubkeyAcceptedAlgorithms"

    invoke-virtual {p1, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    goto :goto_0

    .line 3046
    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    :goto_0
    monitor-exit v0

    .line 3049
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConfig(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3025
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3026
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 3027
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    .line 3028
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 3028
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3025
    monitor-exit v0

    .line 3036
    return-void

    .line 3029
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3031
    const-string v3, "PubkeyAcceptedKeyTypes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PubkeyAcceptedAlgorithms"

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 3030
    :goto_1
    nop

    .line 3032
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3033
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConfig(Ljava/util/Properties;)V
    .locals 4

    .line 3017
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 3018
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3018
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3021
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/util/Hashtable;)V

    .line 3022
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3019
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDaemonThread(Z)V
    .locals 0

    .line 3208
    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    .line 3209
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 2961
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    .line 2962
    return-void
.end method

.method public setHostKeyAlias(Ljava/lang/String;)V
    .locals 0

    .line 3158
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    .line 3159
    return-void
.end method

.method public setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 0

    .line 3463
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    .line 3464
    return-void
.end method

.method public setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 0

    .line 3441
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    .line 3442
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 2981
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    .line 2982
    return-void
.end method

.method public setLogger(Lcom/jcraft/jsch/Logger;)V
    .locals 0

    .line 3689
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->logger:Lcom/jcraft/jsch/Logger;

    .line 3690
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 2985
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    .line 2986
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3005
    if-eqz p1, :cond_0

    .line 3006
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->password:[B

    .line 3007
    :cond_0
    return-void
.end method

.method public setPassword([B)V
    .locals 3

    .line 3010
    if-eqz p1, :cond_0

    .line 3011
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->password:[B

    .line 3012
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->password:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3014
    :cond_0
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 2965
    iput p1, p0, Lcom/jcraft/jsch/Session;->port:I

    .line 2966
    return-void
.end method

.method public setPortForwardingL(ILjava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2369
    const-string v0, "127.0.0.1"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2687
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    .line 2688
    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v2, p1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget p1, p1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2388
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2409
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result p1

    return p1
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2429
    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/PortWatcher;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object p1

    .line 2430
    invoke-virtual {p1, p6}, Lcom/jcraft/jsch/PortWatcher;->setConnectTimeout(I)V

    .line 2431
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/jcraft/jsch/-$$Lambda$pibVu87jVzlYI_0AWIaZonFppyU;

    invoke-direct {p4, p1}, Lcom/jcraft/jsch/-$$Lambda$pibVu87jVzlYI_0AWIaZonFppyU;-><init>(Lcom/jcraft/jsch/PortWatcher;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p2

    .line 2432
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "PortWatcher Thread for "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2433
    iget-boolean p3, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz p3, :cond_0

    .line 2434
    iget-boolean p3, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2436
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2437
    iget p1, p1, Lcom/jcraft/jsch/PortWatcher;->lport:I

    return p1
.end method

.method public setPortForwardingR(Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2704
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object p1

    .line 2705
    iget-object v0, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v1, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v0

    .line 2706
    iget-object v3, p1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v4, p1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v6, p1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget v7, p1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    .line 2707
    nop

    .line 2706
    const/4 v8, 0x0

    move-object v2, p0

    move v5, v0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    .line 2708
    return v0
.end method

.method public setPortForwardingR(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2562
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2563
    return-void
.end method

.method public setPortForwardingR(ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2493
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v5

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    .line 2494
    return-void
.end method

.method public setPortForwardingR(ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2527
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    .line 2528
    return-void
.end method

.method public setPortForwardingR(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2577
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2578
    return-void
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2512
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    .line 2513
    return-void
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2547
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v3

    .line 2548
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    .line 2549
    return-void
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2598
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v3

    .line 2599
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2600
    return-void
.end method

.method public setProxy(Lcom/jcraft/jsch/Proxy;)V
    .locals 0

    .line 2957
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    .line 2958
    return-void
.end method

.method public setServerAliveCountMax(I)V
    .locals 0

    .line 3195
    iput p1, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    .line 3196
    return-void
.end method

.method public setServerAliveInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 3173
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setTimeout(I)V

    .line 3174
    iput p1, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    .line 3175
    return-void
.end method

.method public setSocketFactory(Lcom/jcraft/jsch/SocketFactory;)V
    .locals 0

    .line 3068
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    .line 3069
    return-void
.end method

.method public setSocketForwardingL(Ljava/lang/String;ILjava/lang/String;Lcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 2442
    invoke-static {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/PortWatcher;->addSocket(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;Lcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object p1

    .line 2443
    invoke-virtual {p1, p5}, Lcom/jcraft/jsch/PortWatcher;->setConnectTimeout(I)V

    .line 2444
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/jcraft/jsch/-$$Lambda$pibVu87jVzlYI_0AWIaZonFppyU;

    invoke-direct {p3, p1}, Lcom/jcraft/jsch/-$$Lambda$pibVu87jVzlYI_0AWIaZonFppyU;-><init>(Lcom/jcraft/jsch/PortWatcher;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p2

    .line 2445
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "PortWatcher Thread for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2446
    iget-boolean p3, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz p3, :cond_0

    .line 2447
    iget-boolean p3, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2449
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 2450
    iget p1, p1, Lcom/jcraft/jsch/PortWatcher;->lport:I

    return p1
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 2344
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadFactory;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 2345
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 3080
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-nez v0, :cond_1

    .line 3081
    if-gez p1, :cond_0

    .line 3082
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "invalid timeout value"

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3084
    :cond_0
    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I

    .line 3085
    return-void

    .line 3088
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 3089
    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I

    .line 3090
    nop

    .line 3093
    return-void

    :catch_0
    move-exception p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3091
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setUserInfo(Lcom/jcraft/jsch/UserInfo;)V
    .locals 0

    .line 2973
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 2974
    return-void
.end method

.method setUserName(Ljava/lang/String;)V
    .locals 0

    .line 2969
    iput-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    .line 2970
    return-void
.end method

.method public setX11Cookie(Ljava/lang/String;)V
    .locals 0

    .line 2997
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setCookie(Ljava/lang/String;)V

    .line 2998
    return-void
.end method

.method public setX11Host(Ljava/lang/String;)V
    .locals 0

    .line 2989
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setHost(Ljava/lang/String;)V

    .line 2990
    return-void
.end method

.method public setX11Port(I)V
    .locals 0

    .line 2993
    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setPort(I)V

    .line 2994
    return-void
.end method

.method write(Lcom/jcraft/jsch/Packet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1847
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 1848
    nop

    .line 1848
    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 1849
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_prompt:Z

    if-nez v2, :cond_1

    .line 1850
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string v0, "timeout in waiting for rekeying process."

    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1852
    :cond_1
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v2

    .line 1854
    const/16 v3, 0x14

    if-eq v2, v3, :cond_3

    const/16 v3, 0x15

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_3

    .line 1855
    const/16 v3, 0x1f

    if-eq v2, v3, :cond_3

    if-eq v2, v3, :cond_3

    .line 1856
    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    const/16 v3, 0x21

    if-eq v2, v3, :cond_3

    .line 1857
    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1858
    goto :goto_1

    .line 1861
    :cond_2
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 1865
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    .line 1866
    return-void
.end method

.method write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1756
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 1758
    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 1759
    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 1760
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "timeout in waiting for rekeying process."

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1763
    :cond_0
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    goto :goto_0

    :catch_0
    move-exception v2

    .line 1766
    goto :goto_0

    .line 1768
    :cond_1
    monitor-enter p2

    .line 1769
    :try_start_1
    iget-wide v5, p2, Lcom/jcraft/jsch/Channel;->rwsize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    int-to-long v7, p3

    cmp-long v2, v5, v7

    const/4 v5, 0x1

    if-gez v2, :cond_2

    .line 1771
    :try_start_2
    iget v2, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    add-int/2addr v2, v5

    iput v2, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    .line 1772
    const-wide/16 v9, 0x64

    invoke-virtual {p2, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1773
    nop

    .line 1775
    :try_start_3
    iget v2, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    :goto_1
    sub-int/2addr v2, v5

    iput v2, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_2

    .line 1774
    :catchall_0
    move-exception p1

    .line 1774
    nop

    .line 1775
    iget p3, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    sub-int/2addr p3, v5

    iput p3, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    .line 1776
    throw p1

    :catch_1
    move-exception v2

    .line 1775
    iget v2, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_1

    .line 1779
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v2, :cond_3

    .line 1780
    monitor-exit p2

    goto :goto_0

    .line 1783
    :cond_3
    iget-wide v9, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_4

    .line 1784
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v0, v7

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 1785
    monitor-exit p2

    goto/16 :goto_4

    .line 1768
    :cond_4
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1788
    iget-boolean v2, p2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v2, :cond_f

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_5

    .line 1792
    :cond_5
    nop

    .line 1793
    nop

    .line 1794
    nop

    .line 1795
    nop

    .line 1796
    monitor-enter p2

    .line 1797
    :try_start_4
    iget-wide v9, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    cmp-long v2, v9, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lez v2, :cond_a

    .line 1798
    iget-wide v2, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 1799
    cmp-long v6, v2, v7

    if-lez v6, :cond_6

    .line 1800
    move-wide v2, v7

    .line 1802
    :cond_6
    cmp-long v6, v2, v7

    if-eqz v6, :cond_9

    .line 1803
    long-to-int v6, v2

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    const/16 v8, 0x8

    if-eqz v7, :cond_7

    iget v8, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    .line 1804
    :cond_7
    iget-object v7, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v7, :cond_8

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v4}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v4

    .line 1803
    :cond_8
    invoke-virtual {p1, v6, v8, v4}, Lcom/jcraft/jsch/Packet;->shift(III)I

    move-result v4

    .line 1806
    :cond_9
    iget-object v6, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v6

    .line 1807
    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v7

    .line 1808
    long-to-int v8, v2

    sub-int/2addr p3, v8

    .line 1809
    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long v2, v8, v2

    iput-wide v2, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 1810
    move v3, v7

    move v2, v4

    move v4, v5

    goto :goto_3

    :cond_a
    move v6, v4

    move v2, v6

    .line 1796
    :goto_3
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1813
    if-eqz v4, :cond_c

    .line 1814
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    .line 1815
    if-nez p3, :cond_b

    .line 1816
    return-void

    .line 1818
    :cond_b
    invoke-virtual {p1, v6, v3, v2, p3}, Lcom/jcraft/jsch/Packet;->unshift(BIII)V

    .line 1821
    :cond_c
    monitor-enter p2

    .line 1822
    :try_start_5
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v2, :cond_d

    .line 1823
    monitor-exit p2

    goto/16 :goto_0

    .line 1825
    :cond_d
    iget-wide v2, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v4, p3

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 1826
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v0, v4

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    .line 1827
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1842
    :goto_4
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    .line 1843
    return-void

    .line 1821
    :cond_e
    :try_start_6
    monitor-exit p2

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    .line 1789
    :cond_f
    :goto_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "channel is broken"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method
