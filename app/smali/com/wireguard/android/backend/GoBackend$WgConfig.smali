.class public Lcom/wireguard/android/backend/GoBackend$WgConfig;
.super Ljava/lang/Object;
.source "GoBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wireguard/android/backend/GoBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WgConfig"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public allowedIps:[Ljava/lang/String;

.field public dns:Ljava/lang/String;

.field public endpoint:Ljava/lang/String;

.field public peerPublicKeyHex:Ljava/lang/String;

.field public presharedKey:Ljava/lang/String;

.field public privateKeyHex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, "0.0.0.0/0"

    const-string v1, "::/0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->allowedIps:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method private static b64toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/wireguard/android/backend/GoBackend;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    return-object p0

    .line 163
    :catch_0
    move-exception v0

    .line 163
    return-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/wireguard/android/backend/GoBackend$WgConfig;
    .locals 10

    .line 129
    new-instance v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;

    invoke-direct {v0}, Lcom/wireguard/android/backend/GoBackend$WgConfig;-><init>()V

    .line 130
    const-string v1, ""

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_1

    .line 155
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    new-array p0, v4, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->allowedIps:[Ljava/lang/String;

    .line 156
    :cond_0
    return-object v0

    :cond_1
    aget-object v6, p0, v5

    .line 133
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 134
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v1, v6

    goto/16 :goto_3

    .line 135
    :cond_2
    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 136
    if-gez v7, :cond_3

    goto/16 :goto_3

    .line 137
    :cond_3
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 138
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 139
    const-string v7, "[Interface]"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 140
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "dns"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    .line 143
    :cond_4
    iput-object v6, v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->dns:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    const-string v7, "address"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_3

    .line 142
    :cond_5
    iput-object v6, v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->address:Ljava/lang/String;

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "privatekey"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_3

    .line 141
    :cond_6
    invoke-static {v6}, Lcom/wireguard/android/backend/GoBackend$WgConfig;->b64toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->privateKeyHex:Ljava/lang/String;

    goto :goto_3

    .line 145
    :goto_1
    goto :goto_3

    :cond_7
    const-string v7, "[Peer]"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 146
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto :goto_3

    :sswitch_3
    const-string v7, "endpoint"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    .line 149
    :cond_8
    iput-object v6, v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->endpoint:Ljava/lang/String;

    goto :goto_3

    :sswitch_4
    const-string v7, "publickey"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3

    .line 147
    :cond_9
    invoke-static {v6}, Lcom/wireguard/android/backend/GoBackend$WgConfig;->b64toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->peerPublicKeyHex:Ljava/lang/String;

    goto :goto_3

    :sswitch_5
    const-string v7, "allowedips"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_3

    .line 151
    :cond_a
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    move v6, v4

    :goto_2
    if-lt v6, v9, :cond_b

    goto :goto_3

    :cond_b
    aget-object v8, v7, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :sswitch_6
    const-string v7, "presharedkey"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_3

    .line 148
    :cond_c
    invoke-static {v6}, Lcom/wireguard/android/backend/GoBackend$WgConfig;->b64toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wireguard/android/backend/GoBackend$WgConfig;->presharedKey:Ljava/lang/String;

    .line 132
    :cond_d
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fd21a04 -> :sswitch_2
        -0x4468640c -> :sswitch_1
        0x18529 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x51bb0f69 -> :sswitch_6
        -0x4fabaa7c -> :sswitch_5
        0x563e6756 -> :sswitch_4
        0x67c71d95 -> :sswitch_3
    .end sparse-switch
.end method
