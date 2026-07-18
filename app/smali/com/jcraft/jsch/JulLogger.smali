.class public Lcom/jcraft/jsch/JulLogger;
.super Ljava/lang/Object;
.source "JulLogger.java"

# interfaces
.implements Lcom/jcraft/jsch/Logger;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/JulLogger;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLevel(I)Ljava/util/logging/Level;
    .locals 0

    .line 32
    packed-switch p0, :pswitch_data_0

    .line 43
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0

    .line 41
    :pswitch_0
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    return-object p0

    .line 38
    :pswitch_1
    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    return-object p0

    .line 36
    :pswitch_2
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object p0

    .line 34
    :pswitch_3
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 1

    .line 14
    sget-object v0, Lcom/jcraft/jsch/JulLogger;->logger:Ljava/util/logging/Logger;

    invoke-static {p1}, Lcom/jcraft/jsch/JulLogger;->getLevel(I)Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method public log(ILjava/lang/String;)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/JulLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    if-nez p3, :cond_0

    .line 25
    sget-object p3, Lcom/jcraft/jsch/JulLogger;->logger:Ljava/util/logging/Logger;

    invoke-static {p1}, Lcom/jcraft/jsch/JulLogger;->getLevel(I)Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 26
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/jcraft/jsch/JulLogger;->logger:Ljava/util/logging/Logger;

    invoke-static {p1}, Lcom/jcraft/jsch/JulLogger;->getLevel(I)Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
