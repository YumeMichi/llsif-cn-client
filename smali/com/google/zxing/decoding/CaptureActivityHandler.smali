.class public final Lcom/google/zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureActivityHandler"


# instance fields
.field private final activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

.field private final decodeThread:Lcom/google/zxing/decoding/DecodeThread;

.field private state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;",
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    .line 58
    new-instance v0, Lcom/google/zxing/decoding/DecodeThread;

    new-instance v1, Lcom/google/zxing/view/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getViewfinderView()Lcom/google/zxing/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/zxing/decoding/DecodeThread;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    .line 59
    iget-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {p1}, Lcom/google/zxing/decoding/DecodeThread;->start()V

    .line 60
    sget-object p1, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 62
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/camera/CameraManager;->startPreview()V

    .line 63
    invoke-direct {p0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 126
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v3, "zx_decode"

    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 127
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_auto_focus"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/google/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 128
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    .line 69
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_auto_focus"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    if-ne p1, v0, :cond_6

    .line 74
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto/16 :goto_1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_restart_preview"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 77
    sget-object p1, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v0, "Got restart preview message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto/16 :goto_1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_decode_succeeded"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 80
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 82
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "barcode_bitmap"

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handleDecode(Lcom/google/zxing/Result;)V

    goto :goto_1

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_decode_failed"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 92
    sget-object p1, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 93
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_decode"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_1

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_return_scan_result"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 95
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    iget-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->finish()V

    goto :goto_1

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_launch_product_query"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 99
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got product query message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    iget-object p1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public quitSynchronously()V
    .locals 3

    .line 108
    sget-object v0, Lcom/google/zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->state:Lcom/google/zxing/decoding/CaptureActivityHandler$State;

    .line 109
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->stopPreview()V

    .line 110
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v2, "zx_quit"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v1, "zx_decode_succeeded"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/google/zxing/decoding/CaptureActivityHandler;->activity:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v1, "zx_decode_failed"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
