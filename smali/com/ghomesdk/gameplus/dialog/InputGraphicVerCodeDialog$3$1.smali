.class Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;
.super Ljava/lang/Object;
.source "InputGraphicVerCodeDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->onNoFastClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCheckCodeLogin Callback,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputGraphicVerCodeDialog"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$700(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->cancel()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object v1, v1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$700(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$302(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1, p4}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$102(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->cancel()V

    return-void

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p3}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$000(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/widget/ImageView;

    move-result-object p3

    iget-object p4, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p4, p4, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p4}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$100(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/ghomesdk/gameplus/utils/ImageLoader;->showImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$800(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3$1;->this$1:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;->access$200(Lcom/ghomesdk/gameplus/dialog/InputGraphicVerCodeDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
