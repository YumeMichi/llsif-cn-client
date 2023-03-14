.class Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;
.super Ljava/lang/Object;
.source "QuickValidateDialog.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/login/model/CheckCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->callback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$300(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCheckCodeLogin Callback,code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$400(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->cancel()V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object v0, v0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$400(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$002(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {p1, p4}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$502(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->cancel()V

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$600(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2$1;->this$1:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$700(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
