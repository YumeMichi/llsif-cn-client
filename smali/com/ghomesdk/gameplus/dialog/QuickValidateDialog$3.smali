.class Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;
.super Landroid/webkit/WebViewClient;
.source "QuickValidateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->showUI(Landroid/content/Context;I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$700(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u5173\u95ed\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$700(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u5173\u95ed\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 182
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;->this$0:Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->access$600(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
