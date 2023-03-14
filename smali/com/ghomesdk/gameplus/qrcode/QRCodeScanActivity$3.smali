.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3$1;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
