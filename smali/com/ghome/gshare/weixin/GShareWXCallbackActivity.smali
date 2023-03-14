.class public Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;
.super Landroid/app/Activity;
.source "GShareWXCallbackActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field protected m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

.field protected m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    .line 23
    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    return-void
.end method

.method private initWXEngine()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->initWXEngineForGShare(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public initWXEngineForGShare(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/ghome/gshare/GShareInterface;->getInstance(Landroid/content/Context;)Lcom/ghome/gshare/GShareInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {p1}, Lcom/ghome/gshare/GShareInterface;->getShareEngine(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GShareBaseEngine;

    move-result-object p1

    check-cast p1, Lcom/ghome/gshare/weixin/GShareWXEngine;

    iput-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    .line 59
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {v1}, Lcom/ghome/gshare/GSharePlatformConfig;->getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ghome/gshare/weixin/GShareWXEngine;->onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V

    .line 62
    :cond_0
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {p1}, Lcom/ghome/gshare/GShareInterface;->getShareEngine(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GShareBaseEngine;

    move-result-object p1

    check-cast p1, Lcom/ghome/gshare/weixin/GShareWXEngine;

    iput-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    .line 63
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {v1}, Lcom/ghome/gshare/GSharePlatformConfig;->getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ghome/gshare/weixin/GShareWXEngine;->onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->initWXEngine()V

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    invoke-direct {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->initWXEngine()V

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->finish()V

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 87
    :try_start_1
    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :catch_1
    :cond_1
    invoke-virtual {p0}, Lcom/ghome/gshare/weixin/GShareWXCallbackActivity;->finish()V

    return-void
.end method
