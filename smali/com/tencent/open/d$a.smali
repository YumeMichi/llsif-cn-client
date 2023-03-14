.class Lcom/tencent/open/d$a;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/d;


# direct methods
.method private constructor <init>(Lcom/tencent/open/d;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/d;Lcom/tencent/open/d$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/tencent/open/d$a;-><init>(Lcom/tencent/open/d;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 278
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {p1}, Lcom/tencent/open/d;->c(Lcom/tencent/open/d;)Lcom/tencent/open/c/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/open/c/b;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.PKDialog"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {p1}, Lcom/tencent/open/d;->b(Lcom/tencent/open/d;)Lcom/tencent/open/d$c;

    move-result-object p1

    new-instance v0, Lcom/tencent/tauth/UiError;

    invoke-direct {v0, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/open/d$c;->onError(Lcom/tencent/tauth/UiError;)V

    .line 259
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {p1}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {p1}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {p1}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 p2, 0x0

    const-string p3, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-virtual {p1}, Lcom/tencent/open/d;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Redirect URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openSDK_LOG.PKDialog"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/tencent/open/utils/j;->a()Lcom/tencent/open/utils/j;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {v0}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "auth://tauth.qq.com/"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/open/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {p1}, Lcom/tencent/open/d;->b(Lcom/tencent/open/d;)Lcom/tencent/open/d$c;

    move-result-object p1

    invoke-static {p2}, Lcom/tencent/open/utils/m;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/open/d$c;->onComplete(Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-virtual {p1}, Lcom/tencent/open/d;->dismiss()V

    return v0

    :cond_0
    const-string p1, "auth://cancel"

    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-static {p1}, Lcom/tencent/open/d;->b(Lcom/tencent/open/d;)Lcom/tencent/open/d$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/open/d$c;->onCancel()V

    .line 240
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-virtual {p1}, Lcom/tencent/open/d;->dismiss()V

    return v0

    :cond_1
    const-string p1, "auth://close"

    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/tencent/open/d$a;->a:Lcom/tencent/open/d;

    invoke-virtual {p1}, Lcom/tencent/open/d;->dismiss()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
