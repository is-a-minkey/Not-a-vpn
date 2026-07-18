.class public interface abstract Lcom/jcraft/jsch/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG:I = 0x0

.field public static final ERROR:I = 0x3

.field public static final FATAL:I = 0x4

.field public static final INFO:I = 0x1

.field public static final WARN:I = 0x2


# virtual methods
.method public abstract isEnabled(I)Z
.end method

.method public abstract log(ILjava/lang/String;)V
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 45
    invoke-interface {p0, p1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    if-eqz p3, :cond_5

    .line 49
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 50
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v1

    :catchall_1
    move-exception p1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    if-eq v1, p1, :cond_4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v1

    :goto_0
    throw p1

    .line 55
    :cond_5
    :goto_1
    invoke-interface {p0, p1, p2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 56
    return-void
.end method
