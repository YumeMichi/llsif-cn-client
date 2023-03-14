.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$2;
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

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;I)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$2;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;

    iput p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 298
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$2;->val$code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "respcode"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9$2;->val$code:I

    invoke-static {v0}, Lcom/ghome/sdk/common/Constants;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qrdata"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    sget-object v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v2, -0xa5db87

    invoke-static {v2}, Lcom/ghome/sdk/common/Constants;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "scanQRCode"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
