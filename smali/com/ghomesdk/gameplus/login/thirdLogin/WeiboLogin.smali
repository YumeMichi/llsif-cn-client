.class public Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;
.super Ljava/lang/Object;
.source "WeiboLogin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeiboLogin"

.field private static mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;


# instance fields
.field private final context:Landroid/content/Context;

.field private final loginController:Lcom/ghomesdk/gameplus/login/LoginController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->doWBLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)Lcom/ghomesdk/gameplus/login/LoginController;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    return-object p0
.end method

.method private doWBLogin()V
    .locals 3

    .line 62
    sget-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$2;

    invoke-direct {v2, p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$2;-><init>(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)V

    invoke-interface {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->authorize(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V

    return-void
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public startLogin()V
    .locals 5

    .line 37
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEIBO_REDIRECTURL:Ljava/lang/String;

    const-string v1, "WeiboLogin"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->context:Landroid/content/Context;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->WEIBO_APPKEY:Ljava/lang/String;

    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->WEIBO_REDIRECTURL:Ljava/lang/String;

    const-string v4, "all"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sina/weibo/sdk/openapi/WBAPIFactory;->createWBAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/openapi/IWBAPI;

    move-result-object v1

    sput-object v1, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    .line 41
    sget-boolean v1, Lcom/ghomesdk/gameplus/config/Config;->WB_REGISTERED:Z

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->doWBLogin()V

    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->context:Landroid/content/Context;

    new-instance v3, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$1;

    invoke-direct {v3, p0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin$1;-><init>(Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V

    :goto_0
    return-void
.end method
