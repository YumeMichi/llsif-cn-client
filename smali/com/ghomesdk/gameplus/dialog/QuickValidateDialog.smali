.class public Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;
.super Landroid/app/Dialog;
.source "QuickValidateDialog.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field private checkCodeGuid:Ljava/lang/String;

.field private checkCodeUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private height:Ljava/lang/String;

.field mWebViewClient:Landroid/webkit/WebViewClient;

.field private phone:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 1

    const-string v0, "gl_app_theme_light"

    .line 50
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "QuickValidateDialog"

    .line 38
    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->TAG:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$3;-><init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 51
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->context:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->checkCodeGuid:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->phone:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->checkCodeUrl:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->type:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->width:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->height:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->checkCodeGuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->checkCodeGuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Lcom/ghomesdk/gameplus/callback/ErrorCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->checkCodeUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Landroid/webkit/WebView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setDialogSize()V
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->width:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x43920000    # 292.0f

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->width:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    :goto_0
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 148
    iget-object v1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->height:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x435a0000    # 218.0f

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->height:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 149
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->context:Landroid/content/Context;

    const-string v0, "gl_dialog_quick_validate"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->setDialogSize()V

    .line 68
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->context:Landroid/content/Context;

    const-string v1, "webview_quick_validate"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    .line 69
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->context:Landroid/content/Context;

    const-string v1, "iv_close"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$1;-><init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 80
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 95
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 96
    iget-object v2, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 97
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 102
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 110
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    new-instance p1, Lcom/ghomesdk/gameplus/utils/AndroidJSObject;

    new-instance v0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog$2;-><init>(Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;)V

    invoke-direct {p1, v0}, Lcom/ghomesdk/gameplus/utils/AndroidJSObject;-><init>(Lcom/ghomesdk/gameplus/utils/AndroidJSObject$JSCallback;)V

    .line 141
    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    const-string v1, "VALIDATE"

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/dialog/QuickValidateDialog;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
