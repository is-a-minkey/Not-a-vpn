.class final enum Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;
.super Ljava/lang/Enum;
.source "JZlib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/jzlib/JZlib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WrapperType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field private static final synthetic ENUM$VALUES:[Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field public static final enum GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field public static final enum NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

.field public static final enum ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    new-instance v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    const-string v1, "ZLIB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    new-instance v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    const-string v1, "GZIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    new-instance v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    const-string v1, "ANY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->NONE:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ZLIB:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->GZIP:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ANY:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ENUM$VALUES:[Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;
    .locals 1

    .line 1
    const-class v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    return-object p0
.end method

.method public static values()[Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;
    .locals 4

    .line 1
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;->ENUM$VALUES:[Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    array-length v1, v0

    new-array v2, v1, [Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
