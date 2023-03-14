.class public Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "WeGameLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$MyDownLoad;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWebViewUrl:Ljava/lang/String;

.field private viewLayoutId:I

.field private final wegamePackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->TAG:Ljava/lang/String;

    const-string p2, "com.tencent.tgp"

    .line 35
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->wegamePackName:Ljava/lang/String;

    .line 37
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_LOGIN_URL:Ljava/lang/String;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mWebViewUrl:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mContext:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mContext:Landroid/content/Context;

    const-string p2, "gl_wegame_login_page"

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->viewLayoutId:I

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public closeWindow()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->TAG:Ljava/lang/String;

    const-string v1, "call from js closeWindow"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->cancel()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->viewLayoutId:I

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x11

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 55
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    .line 56
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 57
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mContext:Landroid/content/Context;

    const-string v0, "wv_wegame_login"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 62
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 65
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const-string v3, "wegamelogin"

    .line 66
    invoke-virtual {p1, p0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 74
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 76
    new-instance v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$1;-><init>(Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    new-instance v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$MyDownLoad;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin$MyDownLoad;-><init>(Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mWebViewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_CLIENTID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&is_wegame_app_installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mContext:Landroid/content/Context;

    const-string v2, "com.tencent.tgp"

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weGameUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 152
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    return-void
.end method

.method public weGameLoginCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call from js weGameLoginCallback token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", verifyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v2

    iget-object v4, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/ghomesdk/gameplus/config/Config;->WEGAME_COMPANYID:Ljava/lang/String;

    move-object v3, v4

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/ghomesdk/gameplus/login/LoginController;->doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeGameLogin;->cancel()V

    return-void
.end method
