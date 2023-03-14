.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;->callback(ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;

.field final synthetic val$areaid:Ljava/lang/String;

.field final synthetic val$extend:Ljava/lang/String;

.field final synthetic val$orderid:Ljava/lang/String;

.field final synthetic val$productid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$extend:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$orderid:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$areaid:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$productid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 276
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "GHOME_CODE_KEY"

    .line 278
    iget-object v2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;

    iget-object v2, v2, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$000(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GHOME_EXTEND"

    .line 279
    iget-object v2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$extend:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 281
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 283
    :goto_0
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v2

    sget-object v3, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$orderid:Ljava/lang/String;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$areaid:Ljava/lang/String;

    iget-object v6, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->val$productid:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-virtual/range {v2 .. v8}, Lcom/ghome/sdk/GHome;->pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    .line 284
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->finish()V

    return-void
.end method
