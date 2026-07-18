.class public interface abstract Lcom/vpnapp/WireGuardUpdater$UpdateCallback;
.super Ljava/lang/Object;
.source "WireGuardUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/WireGuardUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateCallback"
.end annotation


# virtual methods
.method public abstract onAlreadyUpToDate(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onStatus(Ljava/lang/String;)V
.end method

.method public abstract onUpdateAvailable(Ljava/lang/String;)V
.end method

.method public abstract onUpdateInstalled(Ljava/lang/String;)V
.end method
