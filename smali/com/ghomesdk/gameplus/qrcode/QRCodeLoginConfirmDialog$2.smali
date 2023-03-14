.class Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$2;
.super Ljava/lang/Object;
.source "QRCodeLoginConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$2;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 78
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$2;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->access$000(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$2;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->access$100(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)V

    .line 81
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string p1, "qrdata"

    const-string v0, ""

    .line 82
    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    sget-object v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v2, -0xa5db88

    const-string v3, "\u4e8c\u7ef4\u7801\u626b\u63cf\u53d6\u6d88"

    const-string v5, "scanQRCode"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$2;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->dismiss()V

    return-void
.end method
