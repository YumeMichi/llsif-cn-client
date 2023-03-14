.class Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;
.super Ljava/lang/Object;
.source "QRCodeLoginConfirmDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;->callback(ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;ILjava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;->this$2:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;

    iput p2, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;->val$code:I

    iput-object p3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 99
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;->val$code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "respcode"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;->val$msg:Ljava/lang/String;

    const-string v1, "qrdata"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeActivity:Landroid/app/Activity;

    sget-object v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;->val$msg:Ljava/lang/String;

    const v2, -0xa5db85

    const-string v5, "scanQRCode"

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
