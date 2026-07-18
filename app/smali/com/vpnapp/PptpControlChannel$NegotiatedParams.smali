.class public Lcom/vpnapp/PptpControlChannel$NegotiatedParams;
.super Ljava/lang/Object;
.source "PptpControlChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/PptpControlChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NegotiatedParams"
.end annotation


# instance fields
.field public final localCallId:I

.field public final peerCallId:I

.field public final remoteHost:Ljava/lang/String;

.field public final windowSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/vpnapp/PptpControlChannel$NegotiatedParams;->remoteHost:Ljava/lang/String;

    iput p2, p0, Lcom/vpnapp/PptpControlChannel$NegotiatedParams;->peerCallId:I

    iput p3, p0, Lcom/vpnapp/PptpControlChannel$NegotiatedParams;->localCallId:I

    iput p4, p0, Lcom/vpnapp/PptpControlChannel$NegotiatedParams;->windowSize:I

    .line 39
    return-void
.end method
