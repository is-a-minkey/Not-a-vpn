.class public Lcom/vpnapp/WireGuardUpdater;
.super Ljava/lang/Object;
.source "WireGuardUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;,
        Lcom/vpnapp/WireGuardUpdater$UpdateCallback;
    }
.end annotation


# static fields
.field private static final RELEASES_API:Ljava/lang/String; = "https://api.github.com/repos/WireGuard/wireguard-android/releases/latest"

.field private static final TAG:Ljava/lang/String; = "WG/Updater"

.field private static final TIMEOUT_MS:I = 0x4e20


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vpnapp/WireGuardUpdater;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static between(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 240
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 241
    if-gez v0, :cond_1

    :cond_0
    const-string p0, ""

    return-object p0

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 243
    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    .line 244
    if-le p2, p1, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private downloadAndExtract(Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)Ljava/io/File;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 125
    invoke-static {}, Lcom/vpnapp/WireGuardUpdater;->pickAbi()Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lib/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/libwg-go.so"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v4, "WG/Updater"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Looking for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in release APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v4, v1, Lcom/vpnapp/WireGuardUpdater;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v4

    .line 130
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "libwg-go-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->tagName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x186a0

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 133
    const-string v1, "WG/Updater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already cached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v5

    .line 138
    :cond_0
    iget-object v2, v2, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->apkUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vpnapp/WireGuardUpdater;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v6

    .line 140
    nop

    .line 142
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 144
    nop

    .line 144
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v8, :cond_2

    .line 163
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 164
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " not found in release APK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 147
    :cond_3
    const-string v9, "WG/Updater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes)"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 148
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 149
    const/high16 v8, 0x10000

    :try_start_5
    new-array v8, v8, [B

    .line 151
    const-wide/16 v9, 0x0

    move-wide v11, v9

    .line 151
    :goto_1
    invoke-virtual {v4, v8}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v13

    if-gtz v13, :cond_6

    .line 157
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 159
    :cond_4
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 160
    const-string v3, "WG/Updater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Extracted to: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 161
    nop

    .line 163
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 164
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 161
    return-object v5

    .line 152
    :cond_6
    const/4 v14, 0x0

    :try_start_9
    invoke-virtual {v3, v8, v14, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 153
    int-to-long v13, v13

    add-long/2addr v11, v13

    .line 154
    cmp-long v13, v6, v9

    const-wide/16 v14, -0x1

    if-lez v13, :cond_7

    const-wide/16 v13, 0x64

    mul-long/2addr v13, v11

    div-long v14, v13, v6

    .line 155
    :cond_7
    cmp-long v13, v14, v9

    if-ltz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "Downloading\u2026 "

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, p2

    invoke-interface {v13, v2}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onStatus(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :cond_8
    move-object/from16 v13, p2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_3

    :cond_9
    :goto_2
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    if-eq v2, v3, :cond_b

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    move-object v3, v2

    :goto_4
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_c

    :try_start_c
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :cond_c
    :goto_5
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_5
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    if-eq v2, v3, :cond_e

    :try_start_d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    move-object v3, v2

    :goto_7
    throw v3

    :catchall_6
    move-exception v0

    move-object v2, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 164
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 165
    throw v2
.end method

.method private fetchLatestRelease()Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    const-string v0, "https://api.github.com/repos/WireGuard/wireguard-android/releases/latest"

    invoke-direct {p0, v0}, Lcom/vpnapp/WireGuardUpdater;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "tag_name"

    invoke-static {v0, v1}, Lcom/vpnapp/WireGuardUpdater;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "\"assets\":["

    const-string v3, "]"

    invoke-static {v0, v2, v3}, Lcom/vpnapp/WireGuardUpdater;->between(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    nop

    .line 108
    const-string v2, "\\{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    .line 109
    const-string v5, "\"name\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 110
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/vpnapp/WireGuardUpdater;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "debug"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "fdroid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "browser_download_url"

    invoke-static {v0, v2}, Lcom/vpnapp/WireGuardUpdater;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    nop

    .line 116
    :goto_1
    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No release APK found in latest release"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    const-string v0, "WG/Updater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Latest release: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  APK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;

    invoke-direct {v0, v1, v4}, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 108
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private httpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1}, Lcom/vpnapp/WireGuardUpdater;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 209
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 210
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 209
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 214
    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 215
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eq v0, v1, :cond_4

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object v1, v0

    :goto_1
    throw v1

    :catchall_2
    move-exception v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 216
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 217
    throw v0
.end method

.method private isUpToDate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 185
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "unknown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 188
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vpnapp/WireGuardUpdater;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "libwg-go-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x186a0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    :goto_0
    move v1, v0

    :cond_3
    return v1
.end method

.method private static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 225
    if-gez v0, :cond_1

    :cond_0
    :goto_0
    const-string p0, ""

    return-object p0

    .line 226
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 227
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 228
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 230
    const/16 v1, 0x22

    if-ne v0, v1, :cond_5

    .line 231
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 232
    if-le v1, p1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 234
    :cond_5
    nop

    .line 235
    move v0, p1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 236
    :cond_7
    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$0(Lcom/vpnapp/WireGuardUpdater;Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)V
    .locals 5

    .line 58
    :try_start_0
    const-string v0, "Checking WireGuard version\u2026"

    invoke-interface {p1, v0}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onStatus(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/vpnapp/WireGuardUpdater;->fetchLatestRelease()Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/wireguard/android/backend/GoBackend;->wgVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "(not loaded)"

    .line 60
    :goto_0
    nop

    .line 63
    const-string v2, "WG/Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Latest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, v0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->tagName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/vpnapp/WireGuardUpdater;->isUpToDate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-interface {p1, v1}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onAlreadyUpToDate(Ljava/lang/String;)V

    .line 67
    return-void

    .line 70
    :cond_1
    iget-object v1, v0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->tagName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onUpdateAvailable(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloading WireGuard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onStatus(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, v0, p1}, Lcom/vpnapp/WireGuardUpdater;->downloadAndExtract(Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)Ljava/io/File;

    move-result-object v1

    .line 74
    if-nez v1, :cond_2

    const-string v0, "Extraction failed"

    invoke-interface {p1, v0}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 79
    const-string v2, "WG/Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hot-loaded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, v0, Lcom/vpnapp/WireGuardUpdater$ReleaseInfo;->tagName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onUpdateInstalled(Ljava/lang/String;)V

    .line 82
    return-void

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const-string v1, "WG/Updater"

    const-string v2, "Update check failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "Unknown error"

    :goto_1
    invoke-interface {p1, v0}, Lcom/vpnapp/WireGuardUpdater$UpdateCallback;->onError(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 198
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 200
    const-string v1, "User-Agent"

    const-string v2, "not-a-vpn/2.1 (Android)"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 202
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 203
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    return-object v0
.end method

.method private static pickAbi()Ljava/lang/String;
    .locals 5

    .line 172
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 173
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 179
    const-string v0, "arm64-v8a"

    return-object v0

    :cond_0
    aget-object v3, v0, v2

    .line 174
    const-string v4, "arm64-v8a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "x86_64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    const-string v4, "armeabi-v7a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "x86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_2
    :goto_1
    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public checkAndUpdate(Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpnapp/-$$Lambda$WireGuardUpdater$Fi5BQXif3bpJAM-M-Gmr-YtIIWM;

    invoke-direct {v1, p0, p1}, Lcom/vpnapp/-$$Lambda$WireGuardUpdater$Fi5BQXif3bpJAM-M-Gmr-YtIIWM;-><init>(Lcom/vpnapp/WireGuardUpdater;Lcom/vpnapp/WireGuardUpdater$UpdateCallback;)V

    .line 86
    const-string p1, "wg-updater"

    .line 56
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method
