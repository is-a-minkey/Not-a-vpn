.class public final enum Lcom/vpnapp/PptpMtpdManager$Mode;
.super Ljava/lang/Enum;
.source "PptpMtpdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/PptpMtpdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vpnapp/PptpMtpdManager$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/vpnapp/PptpMtpdManager$Mode;

.field private static final synthetic ENUM$VALUES:[Lcom/vpnapp/PptpMtpdManager$Mode;

.field public static final enum FAILED:Lcom/vpnapp/PptpMtpdManager$Mode;

.field public static final enum NOT_AVAILABLE:Lcom/vpnapp/PptpMtpdManager$Mode;

.field public static final enum NO_ROOT:Lcom/vpnapp/PptpMtpdManager$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/vpnapp/PptpMtpdManager$Mode;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vpnapp/PptpMtpdManager$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpMtpdManager$Mode;->NOT_AVAILABLE:Lcom/vpnapp/PptpMtpdManager$Mode;

    new-instance v0, Lcom/vpnapp/PptpMtpdManager$Mode;

    const-string v1, "NO_ROOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vpnapp/PptpMtpdManager$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpMtpdManager$Mode;->NO_ROOT:Lcom/vpnapp/PptpMtpdManager$Mode;

    new-instance v0, Lcom/vpnapp/PptpMtpdManager$Mode;

    const-string v1, "CONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vpnapp/PptpMtpdManager$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpMtpdManager$Mode;->CONNECTED:Lcom/vpnapp/PptpMtpdManager$Mode;

    new-instance v0, Lcom/vpnapp/PptpMtpdManager$Mode;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/vpnapp/PptpMtpdManager$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/PptpMtpdManager$Mode;->FAILED:Lcom/vpnapp/PptpMtpdManager$Mode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vpnapp/PptpMtpdManager$Mode;

    sget-object v1, Lcom/vpnapp/PptpMtpdManager$Mode;->NOT_AVAILABLE:Lcom/vpnapp/PptpMtpdManager$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vpnapp/PptpMtpdManager$Mode;->NO_ROOT:Lcom/vpnapp/PptpMtpdManager$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vpnapp/PptpMtpdManager$Mode;->CONNECTED:Lcom/vpnapp/PptpMtpdManager$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vpnapp/PptpMtpdManager$Mode;->FAILED:Lcom/vpnapp/PptpMtpdManager$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vpnapp/PptpMtpdManager$Mode;->ENUM$VALUES:[Lcom/vpnapp/PptpMtpdManager$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vpnapp/PptpMtpdManager$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/vpnapp/PptpMtpdManager$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vpnapp/PptpMtpdManager$Mode;

    return-object p0
.end method

.method public static values()[Lcom/vpnapp/PptpMtpdManager$Mode;
    .locals 4

    .line 1
    sget-object v0, Lcom/vpnapp/PptpMtpdManager$Mode;->ENUM$VALUES:[Lcom/vpnapp/PptpMtpdManager$Mode;

    array-length v1, v0

    new-array v2, v1, [Lcom/vpnapp/PptpMtpdManager$Mode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
