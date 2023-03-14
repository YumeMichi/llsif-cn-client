.class public Lcom/geetest/sdk/dialog/views/GtWebView;
.super Landroid/webkit/WebView;
.source "GtWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/dialog/views/GtWebView$c;,
        Lcom/geetest/sdk/dialog/views/GtWebView$b;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "GtWebView"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/au;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/geetest/sdk/model/beans/b;

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/os/Handler;

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->c:Z

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->g:Landroid/os/Handler;

    .line 131
    invoke-direct {p0, p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0, p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/au;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->b:Lcom/geetest/sdk/au;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->k:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->k:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->k:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->k:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic c(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/dialog/views/GtWebView;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/geetest/sdk/dialog/views/GtWebView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/geetest/sdk/dialog/views/GtWebView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/model/beans/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->e:Lcom/geetest/sdk/model/beans/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/16 v1, 0x64

    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const-string v0, "searchBoxJavaBridge_"

    .line 22
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 23
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 24
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 26
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 27
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 28
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 29
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/geetest/sdk/dialog/views/GtWebView;->onResume()V

    .line 32
    new-instance v0, Lcom/geetest/sdk/dialog/views/GtWebView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/geetest/sdk/dialog/views/GtWebView$b;-><init>(Lcom/geetest/sdk/dialog/views/GtWebView;Lcom/geetest/sdk/dialog/views/GtWebView$a;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 33
    new-instance v0, Lcom/geetest/sdk/dialog/views/GtWebView$c;

    invoke-direct {v0, p0, p0}, Lcom/geetest/sdk/dialog/views/GtWebView$c;-><init>(Lcom/geetest/sdk/dialog/views/GtWebView;Lcom/geetest/sdk/dialog/views/GtWebView;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->c:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/geetest/sdk/dialog/views/GtWebView;->n:Ljava/lang/String;

    const-string v1, "GT3GtWebView-->destroy"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->a:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->b:Lcom/geetest/sdk/au;

    .line 16
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getMyHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->c:Z

    if-eqz v0, :cond_0

    const-string v0, " "

    .line 4
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4
    sget-object v0, Lcom/geetest/sdk/dialog/views/GtWebView;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webView\u786c\u4ef6\u52a0\u901f\u662f\u5426\u5f00\u542f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeTimers()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->h:I

    .line 3
    iput p2, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->i:I

    .line 4
    sget-object v0, Lcom/geetest/sdk/dialog/views/GtWebView;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged-->newWidth-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-->newHeight"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-->oldWidth"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-->oldHeight"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->e:Lcom/geetest/sdk/model/beans/b;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->e:Lcom/geetest/sdk/model/beans/b;

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->d()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->j:I

    .line 8
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->h:I

    int-to-float p2, p2

    iget p3, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->i:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->m:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->l:Landroid/graphics/Path;

    .line 10
    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 11
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->l:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->m:Landroid/graphics/RectF;

    iget p3, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->j:I

    int-to-float p3, p3

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setDataBean(Lcom/geetest/sdk/model/beans/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->e:Lcom/geetest/sdk/model/beans/b;

    return-void
.end method

.method public setMyHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->g:Landroid/os/Handler;

    return-void
.end method

.method public setObservable(Lcom/geetest/sdk/au;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->b:Lcom/geetest/sdk/au;

    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public setStaticUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->d:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    return-void
.end method

.method public setVoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView;->c:Z

    return-void
.end method
