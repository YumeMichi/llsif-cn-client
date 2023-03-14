.class Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;
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

    .line 87
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 91
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->access$200(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->getQrCodeScanLoginConfirmUrl()Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "codeKey="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->access$000(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;

    invoke-direct {v5, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;)V

    const-string v4, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/GamePlus;->my_doPostRequest(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method
