.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


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

    .line 311
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p3, :cond_2

    :try_start_0
    const-string p2, "data"

    .line 317
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 318
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const-string v0, "prompt"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$502(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$600(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "login"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 322
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->finish()V

    .line 323
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->overridePendingTransition(II)V

    .line 326
    new-instance p1, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    sget-object p3, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    const v0, 0x103000a

    invoke-direct {p1, p3, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;-><init>(Landroid/app/Activity;I)V

    .line 327
    iget-object p3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$500(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$000(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->setInitData(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->setCanceledOnTouchOutside(Z)V

    .line 329
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->show()V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    new-instance p3, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10$1;

    invoke-direct {p3, p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10$1;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;I)V

    invoke-virtual {p2, p3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    invoke-static {}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$700()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 349
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "respcode"

    invoke-interface {v4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "qrdata"

    .line 350
    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    sget-object v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v2, -0xa5db87

    const p1, -0xa5db87

    invoke-static {p1}, Lcom/ghome/sdk/common/Constants;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "scanQRCode"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
