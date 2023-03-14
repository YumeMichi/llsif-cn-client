.class public Lcom/ghome/sdk/common/WXEntryThirdHandler;
.super Ljava/lang/Object;
.source "WXEntryThirdHandler.java"

# interfaces
.implements Lcom/ghome/sdk/common/GHomeActivityListener;
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/ghome/sdk/common/WXEntryThirdHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private wxEntryThirdHandlerListener:Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/ghome/sdk/common/WXEntryThirdHandler;
    .locals 2

    const-string v0, "WXEntryThirdHandler"

    const-string v1, "getInstance"

    .line 72
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->INSTANCE:Lcom/ghome/sdk/common/WXEntryThirdHandler;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/ghome/sdk/common/WXEntryThirdHandler;

    invoke-direct {v0}, Lcom/ghome/sdk/common/WXEntryThirdHandler;-><init>()V

    sput-object v0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->INSTANCE:Lcom/ghome/sdk/common/WXEntryThirdHandler;

    .line 76
    :cond_0
    sget-object v0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->INSTANCE:Lcom/ghome/sdk/common/WXEntryThirdHandler;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->destroy()V

    return-void
.end method

.method public handle(Landroid/content/Context;Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEIXIN_APPID:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->WEIXIN_APPID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 85
    iput-object p2, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->wxEntryThirdHandlerListener:Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;

    .line 86
    invoke-static {p0}, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->setWXEntryListener(Lcom/ghome/sdk/common/GHomeActivityListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    const-string p2, "onActivityResult"

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1, p3, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    const-string v1, "onReq"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->wxEntryThirdHandlerListener:Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;->onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V

    :cond_0
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->TAG:Ljava/lang/String;

    const-string v1, "onResp"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/ghome/sdk/common/WXEntryThirdHandler;->wxEntryThirdHandlerListener:Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ghome/sdk/common/WXEntryThirdHandler$WXEntryThirdHandlerListener;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    :cond_0
    return-void
.end method
