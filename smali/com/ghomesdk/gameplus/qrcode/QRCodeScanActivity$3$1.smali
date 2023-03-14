.class Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3$1;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$000(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->access$100(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    .line 111
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "qrdata"

    const-string v1, ""

    .line 112
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->finish()V

    .line 114
    sget-object v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    sget-object v2, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v3, -0xa5db88

    const-string v4, "\u4e8c\u7ef4\u7801\u626b\u63cf\u53d6\u6d88"

    const-string v6, "scanQRCode"

    invoke-static/range {v1 .. v6}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
