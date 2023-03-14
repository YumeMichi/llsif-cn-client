.class public Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;
.super Ljava/lang/Object;
.source "WeiXinLogin.java"


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private context:Landroid/content/Context;

.field private loginController:Lcom/ghomesdk/gameplus/login/LoginController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ghomesdk/gameplus/login/LoginController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    return-void
.end method


# virtual methods
.method public login()V
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5230\u7684APPID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->WEIXIN_APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeiXinLogin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->context:Landroid/content/Context;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->WEIXIN_APPID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->WEIXIN_APPID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 35
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->getInstance(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/tencent/mm/opensdk/openapi/IWXAPI;)Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->handle()V

    .line 36
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u5148\u5b89\u88c5\u6216\u8005\u6253\u5f00\u5fae\u4fe1"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    const-string v1, "snsapi_userinfo"

    .line 40
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    const-string v1, "wechat_sdk_login"

    .line 41
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiXinLogin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    :goto_0
    return-void
.end method
