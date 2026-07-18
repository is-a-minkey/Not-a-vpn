.class final synthetic Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;

    invoke-direct {v0}, Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;-><init>()V

    sput-object v0, Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;->INSTANCE:Lcom/wireguard/android/backend/-$$Lambda$GoBackend$yQ1hgAw1_BR_GsXl9RiI8Zz-E50;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    invoke-static {p1}, Lcom/wireguard/android/backend/GoBackend;->lambda$0(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
