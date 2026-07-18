.class public final enum Lcom/vpnapp/PptpSession$ActiveMode;
.super Ljava/lang/Enum;
.source "PptpSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/PptpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActiveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vpnapp/PptpSession$ActiveMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTROL_PROBE_ONLY:Lcom/vpnapp/PptpSession$ActiveMode;

.field private static final synthetic ENUM$VALUES:[Lcom/vpnapp/PptpSession$ActiveMode;

.field public static final enum FAILED:Lcom/vpnapp/PptpSession$ActiveMode;

.field public static final enum MTPD_ROOT:Lcom/vpnapp/PptpSession$ActiveMode;

.field public static final enum TUN_PROXY:Lcom/vpnapp/PptpSession$ActiveMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/vpnapp/PptpSession$ActiveMode;

    const-string v1, "MTPD_ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vpnapp/PptpSession$ActiveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpSession$ActiveMode;->MTPD_ROOT:Lcom/vpnapp/PptpSession$ActiveMode;

    new-instance v0, Lcom/vpnapp/PptpSession$ActiveMode;

    const-string v1, "CONTROL_PROBE_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vpnapp/PptpSession$ActiveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpSession$ActiveMode;->CONTROL_PROBE_ONLY:Lcom/vpnapp/PptpSession$ActiveMode;

    new-instance v0, Lcom/vpnapp/PptpSession$ActiveMode;

    const-string v1, "TUN_PROXY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vpnapp/PptpSession$ActiveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpSession$ActiveMode;->TUN_PROXY:Lcom/vpnapp/PptpSession$ActiveMode;

    new-instance v0, Lcom/vpnapp/PptpSession$ActiveMode;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/vpnapp/PptpSession$ActiveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpSession$ActiveMode;->FAILED:Lcom/vpnapp/PptpSession$ActiveMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vpnapp/PptpSession$ActiveMode;

    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->MTPD_ROOT:Lcom/vpnapp/PptpSession$ActiveMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->CONTROL_PROBE_ONLY:Lcom/vpnapp/PptpSession$ActiveMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->TUN_PROXY:Lcom/vpnapp/PptpSession$ActiveMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vpnapp/PptpSession$ActiveMode;->FAILED:Lcom/vpnapp/PptpSession$ActiveMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vpnapp/PptpSession$ActiveMode;->ENUM$VALUES:[Lcom/vpnapp/PptpSession$ActiveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vpnapp/PptpSession$ActiveMode;
    .locals 1

    .line 1
    const-class v0, Lcom/vpnapp/PptpSession$ActiveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vpnapp/PptpSession$ActiveMode;

    return-object p0
.end method

.method public static values()[Lcom/vpnapp/PptpSession$ActiveMode;
    .locals 4

    .line 1
    sget-object v0, Lcom/vpnapp/PptpSession$ActiveMode;->ENUM$VALUES:[Lcom/vpnapp/PptpSession$ActiveMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/vpnapp/PptpSession$ActiveMode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
