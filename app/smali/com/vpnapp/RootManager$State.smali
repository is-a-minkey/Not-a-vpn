.class public final enum Lcom/vpnapp/RootManager$State;
.super Ljava/lang/Enum;
.source "RootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/RootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vpnapp/RootManager$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DENIED:Lcom/vpnapp/RootManager$State;

.field private static final synthetic ENUM$VALUES:[Lcom/vpnapp/RootManager$State;

.field public static final enum GRANTED:Lcom/vpnapp/RootManager$State;

.field public static final enum NOT_AVAILABLE:Lcom/vpnapp/RootManager$State;

.field public static final enum UNKNOWN:Lcom/vpnapp/RootManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lcom/vpnapp/RootManager$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vpnapp/RootManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/RootManager$State;->UNKNOWN:Lcom/vpnapp/RootManager$State;

    new-instance v0, Lcom/vpnapp/RootManager$State;

    const-string v1, "GRANTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vpnapp/RootManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    new-instance v0, Lcom/vpnapp/RootManager$State;

    const-string v1, "DENIED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vpnapp/RootManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/RootManager$State;->DENIED:Lcom/vpnapp/RootManager$State;

    new-instance v0, Lcom/vpnapp/RootManager$State;

    const-string v1, "NOT_AVAILABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/vpnapp/RootManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vpnapp/RootManager$State;->NOT_AVAILABLE:Lcom/vpnapp/RootManager$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vpnapp/RootManager$State;

    sget-object v1, Lcom/vpnapp/RootManager$State;->UNKNOWN:Lcom/vpnapp/RootManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vpnapp/RootManager$State;->GRANTED:Lcom/vpnapp/RootManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vpnapp/RootManager$State;->DENIED:Lcom/vpnapp/RootManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vpnapp/RootManager$State;->NOT_AVAILABLE:Lcom/vpnapp/RootManager$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vpnapp/RootManager$State;->ENUM$VALUES:[Lcom/vpnapp/RootManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vpnapp/RootManager$State;
    .locals 1

    .line 1
    const-class v0, Lcom/vpnapp/RootManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vpnapp/RootManager$State;

    return-object p0
.end method

.method public static values()[Lcom/vpnapp/RootManager$State;
    .locals 4

    .line 1
    sget-object v0, Lcom/vpnapp/RootManager$State;->ENUM$VALUES:[Lcom/vpnapp/RootManager$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/vpnapp/RootManager$State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
