.class public Lcom/gsk/ui/WebViewGsk;
.super Landroid/webkit/WebView;
.source "WebViewGsk.java"

# interfaces
.implements Lcom/gsk/api/GskWebApi$IGskApiWebSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsk/ui/WebViewGsk$LoadingHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewGsk"

.field private static loadingEnable:Z = true

.field private static mSdkVersion:Ljava/lang/String; = ""

.field private static wxClickListener:Lcom/gsk/WxPayClickListener;


# instance fields
.field loadingHandler:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

.field webApi:Lcom/gsk/api/GskWebApi;

.field webChromeClient:Lcom/gsk/ui/ChromeClientDecorator;

.field webViewClient:Lcom/gsk/ui/ViewClientDecorator;

.field private wxReferer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webViewClient:Lcom/gsk/ui/ViewClientDecorator;

    .line 32
    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webChromeClient:Lcom/gsk/ui/ChromeClientDecorator;

    const-string v0, "http://gsk.sdo.com"

    .line 37
    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk;->wxReferer:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lcom/gsk/ui/WebViewGsk;->initial(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk;->webViewClient:Lcom/gsk/ui/ViewClientDecorator;

    .line 32
    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk;->webChromeClient:Lcom/gsk/ui/ChromeClientDecorator;

    const-string p2, "http://gsk.sdo.com"

    .line 37
    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk;->wxReferer:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/gsk/ui/WebViewGsk;->initial(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk;->webViewClient:Lcom/gsk/ui/ViewClientDecorator;

    .line 32
    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk;->webChromeClient:Lcom/gsk/ui/ChromeClientDecorator;

    const-string p2, "http://gsk.sdo.com"

    .line 37
    iput-object p2, p0, Lcom/gsk/ui/WebViewGsk;->wxReferer:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lcom/gsk/ui/WebViewGsk;->initial(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/gsk/ui/WebViewGsk;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsk/ui/WebViewGsk;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/gsk/ui/WebViewGsk;->wxReferer:Ljava/lang/String;

    return-object p0
.end method

.method public static setGHomeSDKVersion(Ljava/lang/String;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/gsk/ui/WebViewGsk;->mSdkVersion:Ljava/lang/String;

    return-void
.end method

.method public static setLoadingEnable(Z)V
    .locals 0

    .line 76
    sput-boolean p0, Lcom/gsk/ui/WebViewGsk;->loadingEnable:Z

    return-void
.end method

.method public static setWxPayClickListener(Lcom/gsk/WxPayClickListener;)V
    .locals 0

    .line 62
    sput-object p0, Lcom/gsk/ui/WebViewGsk;->wxClickListener:Lcom/gsk/WxPayClickListener;

    return-void
.end method


# virtual methods
.method public doBackKeyClick()Z
    .locals 2

    .line 90
    sget-object v0, Lcom/gsk/ui/WebViewGsk;->TAG:Ljava/lang/String;

    const-string v1, "doBackKeyClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webApi:Lcom/gsk/api/GskWebApi;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lcom/gsk/api/GskWebApi;->doBackKeyClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/gsk/ui/WebViewGsk;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/gsk/ui/WebViewGsk;->goBack()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public executeJs(Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected hideLoading()V
    .locals 2

    .line 219
    sget-object v0, Lcom/gsk/ui/WebViewGsk;->TAG:Ljava/lang/String;

    const-string v1, "hideLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk;->loadingHandler:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->hideLoading()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk;->loadingHandler:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    :cond_0
    return-void
.end method

.method protected initial(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/gsk/ui/WebViewGsk;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/gsk/ui/WebViewGsk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 112
    new-instance v0, Lcom/gsk/api/GskWebApi;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/gsk/ui/WebViewGsk;->mSdkVersion:Ljava/lang/String;

    sget-object v3, Lcom/gsk/ui/WebViewGsk;->wxClickListener:Lcom/gsk/WxPayClickListener;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/gsk/api/GskWebApi;-><init>(Landroid/app/Activity;Lcom/gsk/api/GskWebApi$IGskApiWebSupport;Ljava/lang/String;Lcom/gsk/WxPayClickListener;)V

    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webApi:Lcom/gsk/api/GskWebApi;

    .line 113
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webApi:Lcom/gsk/api/GskWebApi;

    const-string v1, "gsk"

    invoke-virtual {p0, v0, v1}, Lcom/gsk/ui/WebViewGsk;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/gsk/ui/WebViewGsk$1;

    invoke-direct {v0, p0, p1}, Lcom/gsk/ui/WebViewGsk$1;-><init>(Lcom/gsk/ui/WebViewGsk;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webViewClient:Lcom/gsk/ui/ViewClientDecorator;

    .line 174
    new-instance p1, Lcom/gsk/ui/WebViewGsk$2;

    invoke-direct {p1, p0}, Lcom/gsk/ui/WebViewGsk$2;-><init>(Lcom/gsk/ui/WebViewGsk;)V

    iput-object p1, p0, Lcom/gsk/ui/WebViewGsk;->webChromeClient:Lcom/gsk/ui/ChromeClientDecorator;

    .line 189
    iget-object p1, p0, Lcom/gsk/ui/WebViewGsk;->webViewClient:Lcom/gsk/ui/ViewClientDecorator;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 190
    iget-object p1, p0, Lcom/gsk/ui/WebViewGsk;->webChromeClient:Lcom/gsk/ui/ChromeClientDecorator;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/gsk/ui/WebViewGsk;->showLoading()V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/gsk/ui/WebViewGsk;->TAG:Ljava/lang/String;

    const-string v1, "setWebChromeClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webChromeClient:Lcom/gsk/ui/ChromeClientDecorator;

    invoke-virtual {v0, p1}, Lcom/gsk/ui/ChromeClientDecorator;->setmWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 2

    .line 80
    sget-object v0, Lcom/gsk/ui/WebViewGsk;->TAG:Ljava/lang/String;

    const-string v1, "setWebViewClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk;->webViewClient:Lcom/gsk/ui/ViewClientDecorator;

    invoke-virtual {v0, p1}, Lcom/gsk/ui/ViewClientDecorator;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setWxReferer(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/gsk/ui/WebViewGsk;->wxReferer:Ljava/lang/String;

    return-void
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 199
    invoke-super {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected showLoading()V
    .locals 2

    .line 205
    sget-object v0, Lcom/gsk/ui/WebViewGsk;->TAG:Ljava/lang/String;

    const-string v1, "showLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-boolean v0, Lcom/gsk/ui/WebViewGsk;->loadingEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk;->loadingHandler:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    if-eqz v0, :cond_1

    return-void

    .line 214
    :cond_1
    new-instance v0, Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    invoke-direct {v0, p0}, Lcom/gsk/ui/WebViewGsk$LoadingHandler;-><init>(Lcom/gsk/ui/WebViewGsk;)V

    iput-object v0, p0, Lcom/gsk/ui/WebViewGsk;->loadingHandler:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    .line 215
    iget-object v0, p0, Lcom/gsk/ui/WebViewGsk;->loadingHandler:Lcom/gsk/ui/WebViewGsk$LoadingHandler;

    invoke-virtual {v0}, Lcom/gsk/ui/WebViewGsk$LoadingHandler;->showLoading()V

    return-void
.end method
