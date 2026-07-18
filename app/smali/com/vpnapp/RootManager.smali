.class public Lcom/vpnapp/RootManager;
.super Ljava/lang/Object;
.source "RootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpnapp/RootManager$State;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "root_granted"

.field private static final PREFS:Ljava/lang/String; = "notavpn_prefs"

.field private static final TAG:Ljava/lang/String; = "notavpn/Root"

.field private static volatile cachedState:Lcom/vpnapp/RootManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Lcom/vpnapp/RootManager$State;->UNKNOWN:Lcom/vpnapp/RootManager$State;

    sput-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedState()Lcom/vpnapp/RootManager$State;
    .locals 1

    .line 48
    sget-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    return-object v0
.end method

.method public static isGranted()Z
    .locals 4

    .line 50
    sget-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    sget-object v1, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    move v3, v2

    return v3
.end method

.method public static isSuAvailable()Z
    .locals 8

    .line 36
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lt v3, v1, :cond_2

    .line 40
    const-string v0, "/system/bin/su"

    const-string v1, "/system/xbin/su"

    .line 41
    const-string v3, "/sbin/su"

    const-string v5, "/data/local/xbin/su"

    filled-new-array {v0, v1, v3, v5}, [Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_1
    if-lt v0, v6, :cond_0

    .line 44
    move v4, v2

    return v4

    :cond_0
    aget-object v1, v5, v0

    .line 42
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v5, v0, v3

    .line 37
    new-instance v6, Ljava/io/File;

    const-string v7, "su"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->canExecute()Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    .line 36
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static requestRoot()Lcom/vpnapp/RootManager$State;
    .locals 5

    .line 63
    invoke-static {}, Lcom/vpnapp/RootManager;->isSuAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/vpnapp/RootManager$State;->NOT_AVAILABLE:Lcom/vpnapp/RootManager$State;

    sput-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    .line 65
    sget-object v0, Lcom/vpnapp/RootManager$State;->NOT_AVAILABLE:Lcom/vpnapp/RootManager$State;

    return-object v0

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "id"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 68
    nop

    .line 73
    new-instance v1, Ljava/io/BufferedReader;

    .line 74
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 73
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "notavpn/Root"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "su -c id \u2192 rc="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez v0, :cond_1

    const-string v2, "uid=0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    sget-object v0, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    sput-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    .line 86
    const-string v0, "notavpn/Root"

    const-string v1, "Root granted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    sget-object v1, Lcom/vpnapp/RootManager$State;->DENIED:Lcom/vpnapp/RootManager$State;

    sput-object v1, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    .line 89
    const-string v1, "notavpn/Root"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Root denied (rc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const-string v1, "notavpn/Root"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "su request failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/vpnapp/RootManager$State;->DENIED:Lcom/vpnapp/RootManager$State;

    sput-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    .line 95
    :goto_1
    sget-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    return-object v0
.end method

.method public static resetGrant(Landroid/content/Context;)V
    .locals 2

    .line 139
    const-string v0, "notavpn_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 140
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "root_granted"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    sget-object p0, Lcom/vpnapp/RootManager$State;->UNKNOWN:Lcom/vpnapp/RootManager$State;

    sput-object p0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    .line 142
    return-void
.end method

.method public static restoreState(Landroid/content/Context;)V
    .locals 2

    .line 131
    sget-object v0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    sget-object v1, Lcom/vpnapp/RootManager$State;->UNKNOWN:Lcom/vpnapp/RootManager$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 132
    :cond_0
    const-string v0, "notavpn_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 133
    const-string v0, "root_granted"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 134
    :cond_1
    const-string v0, "root_granted"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/vpnapp/RootManager$State;->DENIED:Lcom/vpnapp/RootManager$State;

    :goto_0
    sput-object p0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    .line 135
    return-void
.end method

.method public static runAsRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 103
    invoke-static {}, Lcom/vpnapp/RootManager;->isGranted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "su"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "-c"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 105
    nop

    .line 108
    new-instance v0, Ljava/io/BufferedReader;

    .line 109
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 108
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    return-object v1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :catch_0
    move-exception p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    const-string v0, "notavpn/Root"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runAsRoot failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v1
.end method

.method public static saveGrantState(Landroid/content/Context;Z)V
    .locals 2

    .line 124
    const-string v0, "notavpn_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "root_granted"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    if-eqz p1, :cond_0

    sget-object p0, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vpnapp/RootManager$State;->DENIED:Lcom/vpnapp/RootManager$State;

    :goto_0
    sput-object p0, Lcom/vpnapp/RootManager;->cachedState:Lcom/vpnapp/RootManager$State;

    .line 127
    return-void
.end method
