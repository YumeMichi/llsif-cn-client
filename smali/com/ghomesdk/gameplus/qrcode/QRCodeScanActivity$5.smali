.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$5;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handleDecode(Lcom/google/zxing/Result;)V
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

    .line 193
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$5;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$5;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$202(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Lcom/google/zxing/decoding/CaptureActivityHandler;)Lcom/google/zxing/decoding/CaptureActivityHandler;

    .line 197
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$5;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    new-instance v1, Lcom/google/zxing/decoding/CaptureActivityHandler;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$300(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$5;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$400(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Ljava/util/Vector;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$202(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Lcom/google/zxing/decoding/CaptureActivityHandler;)Lcom/google/zxing/decoding/CaptureActivityHandler;

    return-void
.end method
