.class Lcom/vpnapp/MainActivity$WgPickerClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpnapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WgPickerClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpnapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/vpnapp/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vpnapp/MainActivity$WgPickerClickListener;->this$0:Lcom/vpnapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vpnapp/MainActivity$WgPickerClickListener;->this$0:Lcom/vpnapp/MainActivity;

    invoke-virtual {v0}, Lcom/vpnapp/MainActivity;->pickWireGuardConfig()V

    return-void
.end method
