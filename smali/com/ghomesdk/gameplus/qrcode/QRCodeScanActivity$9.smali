.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;
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

    .line 259
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

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

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "data"

    .line 265
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 266
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gameOrder"

    .line 267
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "areaId"

    .line 268
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "productId"

    .line 269
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "ext"

    .line 271
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    new-instance p2, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 295
    :cond_0
    iget-object p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    new-instance p3, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$2;

    invoke-direct {p3, p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$2;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;I)V

    invoke-virtual {p2, p3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
