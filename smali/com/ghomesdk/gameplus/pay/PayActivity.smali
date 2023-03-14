.class public Lcom/ghomesdk/gameplus/pay/PayActivity;
.super Landroid/app/Activity;
.source "PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/pay/PayActivity$ExitPayActivityEvent;,
        Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PayActivity"

.field public static event:Lcom/ghomesdk/gameplus/pay/PayActivity$ExitPayActivityEvent;


# instance fields
.field private isWebLoadSuccess:Z

.field private mNotchPadding:I

.field private mProgressBar:Landroid/app/ProgressDialog;

.field private mWebView:Lcom/gsk/ui/WebViewGsk;

.field private openTime:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->isWebLoadSuccess:Z

    .line 67
    iput v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mNotchPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/pay/PayActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mNotchPadding:I

    return p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/pay/PayActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mNotchPadding:I

    return p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/pay/PayActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->isWebLoadSuccess:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/pay/PayActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method private initUI()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "8.5.5.0"

    .line 223
    invoke-static {v0}, Lcom/gsk/ui/WebViewGsk;->setGHomeSDKVersion(Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/ghomesdk/gameplus/pay/PayActivity$3;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/pay/PayActivity$3;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V

    invoke-static {v0}, Lcom/gsk/ui/WebViewGsk;->setWxPayClickListener(Lcom/gsk/WxPayClickListener;)V

    .line 235
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 236
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 237
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 238
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 239
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 242
    new-instance v0, Lcom/gsk/ui/WebViewGsk;

    invoke-direct {v0, p0}, Lcom/gsk/ui/WebViewGsk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    const/4 v0, 0x0

    .line 244
    invoke-static {v0}, Lcom/gsk/ui/WebViewGsk;->setLoadingEnable(Z)V

    .line 245
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v2}, Lcom/gsk/ui/WebViewGsk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 246
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 247
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 248
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 249
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 250
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    const-string v3, "gameplus"

    invoke-virtual {v2, p0, v3}, Lcom/gsk/ui/WebViewGsk;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    new-instance v3, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/ghomesdk/gameplus/pay/PayActivity$MyWebChromeClient;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;Lcom/ghomesdk/gameplus/pay/PayActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/gsk/ui/WebViewGsk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 252
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v2, v0}, Lcom/gsk/ui/WebViewGsk;->setHorizontalScrollBarEnabled(Z)V

    .line 253
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v2, v0}, Lcom/gsk/ui/WebViewGsk;->setVerticalScrollBarEnabled(Z)V

    .line 254
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v2, v0}, Lcom/gsk/ui/WebViewGsk;->setScrollBarStyle(I)V

    .line 255
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v2, v0}, Lcom/gsk/ui/WebViewGsk;->setScrollbarFadingEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v0, v1}, Lcom/gsk/ui/WebViewGsk;->clearCache(Z)V

    .line 257
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v0}, Lcom/gsk/ui/WebViewGsk;->clearHistory()V

    .line 258
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v0}, Lcom/gsk/ui/WebViewGsk;->clearFormData()V

    .line 260
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    new-instance v1, Lcom/ghomesdk/gameplus/pay/PayActivity$4;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/pay/PayActivity$4;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V

    invoke-virtual {v0, v1}, Lcom/gsk/ui/WebViewGsk;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 269
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 271
    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {p0, v1, v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->addProgressbar()V

    return-void
.end method


# virtual methods
.method protected addProgressbar()V
    .locals 2

    .line 277
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;

    .line 278
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;

    const-string v1, "\u52a0\u8f7d\u4e2d, \u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public closeWindow(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web calling: closeWindow, code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayActivity"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "js:closeWindow"

    .line 110
    invoke-virtual {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->finishPay(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishPay(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 355
    new-instance v0, Lcom/ghomesdk/gameplus/pay/PayActivity$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/pay/PayActivity$7;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getNotchPadding()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotchPadding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mNotchPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayActivity"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mNotchPadding:I

    return v0
.end method

.method public goBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v0}, Lcom/gsk/ui/WebViewGsk;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PayActivity"

    const-string v1, "WebView goBack"

    .line 116
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    invoke-virtual {v0}, Lcom/gsk/ui/WebViewGsk;->goBack()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "PayActivity"

    const-string v1, "PayActivity onCreate start"

    .line 137
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x500

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 144
    :cond_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayActivity onCreate  lp.layoutInDisplayCutoutMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 148
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/pay/PayActivity$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/pay/PayActivity$1;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-static {}, Lcom/ghome/sdk/GHomeWXPayHandler;->getInstance()Lcom/ghome/sdk/GHomeWXPayHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghome/sdk/GHomeWXPayHandler;->handle()V

    .line 177
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/pay/PayActivity;->setRequestedOrientation(I)V

    .line 180
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->initUI()V

    .line 181
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/pay/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "orderData"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/pay/OrderModel;

    if-eqz v1, :cond_4

    if-ne p1, v2, :cond_3

    const/4 v2, 0x0

    .line 183
    :cond_3
    invoke-virtual {v1, v2}, Lcom/ghomesdk/gameplus/pay/OrderModel;->setOrientation(I)V

    :cond_4
    const-string p1, ""

    if-eqz v1, :cond_5

    .line 186
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ghomesdk/gameplus/utils/SignUtil;->sign(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_6

    .line 189
    :try_start_0
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/pay/OrderModel;->getEncodeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v1, p1

    :goto_2
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/security/DESUtil;->des3encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 191
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getPayWeb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?cipher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&token="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sign="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->url:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->url:Ljava/lang/String;

    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/gsk/ui/WebViewGsk;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->openTime:J

    .line 198
    new-instance p1, Lcom/ghomesdk/gameplus/pay/PayActivity$2;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/pay/PayActivity$2;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V

    .line 215
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0xbb8

    .line 216
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "PayActivity"

    const-string v1, "PayActivity onDestroy"

    .line 307
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/ghome/sdk/GHomeWXPayHandler;->getInstance()Lcom/ghome/sdk/GHomeWXPayHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghome/sdk/GHomeWXPayHandler;->destroy()V

    .line 309
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mProgressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 284
    iget-object p1, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gsk/ui/WebViewGsk;->doBackKeyClick()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u662f\u5426\u7ed3\u675f\u652f\u4ed8\u8fd4\u56de\u6e38\u620f\uff1f"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setDescribe1(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->isCustomAlertDialog(Z)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmStr(Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghomesdk/gameplus/pay/PayActivity$6;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/pay/PayActivity$6;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V

    .line 287
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setCancelOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ghomesdk/gameplus/pay/PayActivity$5;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/pay/PayActivity$5;-><init>(Lcom/ghomesdk/gameplus/pay/PayActivity;)V

    .line 292
    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->setConfirmOnClickListener(Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;)Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/CommonDialog$Builder;->create()Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return p2

    .line 303
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    sget-boolean v0, Lcom/gsk/api/GskWebApi;->isWxPayClicked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 125
    sput-boolean v0, Lcom/gsk/api/GskWebApi;->isWxPayClicked:Z

    const-string v0, "GHomeWXPayHandler"

    const-string v1, "wechat onResume double open weixin button cacel"

    .line 126
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/gsk/api/GskWebApi$wxHandler;

    invoke-direct {v0}, Lcom/gsk/api/GskWebApi$wxHandler;-><init>()V

    .line 128
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, -0x2

    .line 129
    iput v2, v1, Landroid/os/Message;->what:I

    .line 130
    invoke-virtual {v0, v1}, Lcom/gsk/api/GskWebApi$wxHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public rechargeLoadFinish(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rechargeLoadFinish\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayActivity"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->isWebLoadSuccess:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderJson"

    .line 99
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->checkoutOrder(Landroid/app/Activity;Ljava/util/Map;)V

    .line 104
    iget-object v2, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->url:Ljava/lang/String;

    iget-wide v7, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->openTime:J

    const-string v3, ""

    const-string v4, ""

    const-string v5, "0"

    const-string v6, ""

    const-string v9, "0"

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method public setWxReferer(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWxReferer\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayActivity"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/PayActivity;->mWebView:Lcom/gsk/ui/WebViewGsk;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/gsk/ui/WebViewGsk;->setWxReferer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAndroidToast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAndroidToast : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayActivity"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
