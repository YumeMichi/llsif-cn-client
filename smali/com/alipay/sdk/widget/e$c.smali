.class public Lcom/alipay/sdk/widget/e$c;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/widget/e;->setChromeProxy(Lcom/alipay/sdk/widget/e$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/widget/e;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/widget/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->f(Lcom/alipay/sdk/widget/e;)Lcom/alipay/sdk/widget/e$f;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/sdk/widget/e$f;->a(Lcom/alipay/sdk/widget/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->d(Lcom/alipay/sdk/widget/e;)Lcom/alipay/sdk/widget/e$e;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/widget/e$e;->b(Lcom/alipay/sdk/widget/e$e;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x5a

    const/4 v0, 0x4

    if-le p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->e(Lcom/alipay/sdk/widget/e;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->e(Lcom/alipay/sdk/widget/e;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->e(Lcom/alipay/sdk/widget/e;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->e(Lcom/alipay/sdk/widget/e;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->e(Lcom/alipay/sdk/widget/e;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-static {p1}, Lcom/alipay/sdk/widget/e;->f(Lcom/alipay/sdk/widget/e;)Lcom/alipay/sdk/widget/e$f;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/sdk/widget/e$c;->a:Lcom/alipay/sdk/widget/e;

    invoke-interface {p1, v0, p2}, Lcom/alipay/sdk/widget/e$f;->c(Lcom/alipay/sdk/widget/e;Ljava/lang/String;)V

    return-void
.end method
