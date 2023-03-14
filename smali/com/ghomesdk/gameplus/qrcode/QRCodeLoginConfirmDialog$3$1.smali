.class Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;
.super Ljava/lang/Object;
.source "QRCodeLoginConfirmDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 94
    iget-object p3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->dismiss()V

    if-nez p1, :cond_0

    .line 96
    iget-object p3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->access$200(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$1;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3;->this$0:Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;->access$200(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog;)Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1$2;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeLoginConfirmDialog$3$1;ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
