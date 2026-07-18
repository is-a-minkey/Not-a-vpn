.class public interface abstract Lcom/jcraft/jsch/AgentConnector;
.super Ljava/lang/Object;
.source "AgentConnector.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract query(Lcom/jcraft/jsch/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation
.end method
