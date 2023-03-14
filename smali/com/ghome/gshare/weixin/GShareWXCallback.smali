.class public Lcom/ghome/gshare/weixin/GShareWXCallback;
.super Ljava/lang/Object;
.source "GShareWXCallback.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field protected m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

.field protected m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    .line 16
    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    return-void
.end method

.method private initWXEngine(Landroid/app/Activity;)V
    .locals 3

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->getInstance(Landroid/content/Context;)Lcom/ghome/gshare/GShareInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->getShareEngine(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GShareBaseEngine;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/weixin/GShareWXEngine;

    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    .line 33
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {v2}, Lcom/ghome/gshare/GSharePlatformConfig;->getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ghome/gshare/weixin/GShareWXEngine;->onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V

    .line 37
    :cond_0
    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->getShareEngine(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GShareBaseEngine;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/weixin/GShareWXEngine;

    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    .line 38
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {v2}, Lcom/ghome/gshare/GSharePlatformConfig;->getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ghome/gshare/weixin/GShareWXEngine;->onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V

    .line 41
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ghome/gshare/weixin/GShareWXCallback;->initWXEngine(Landroid/app/Activity;)V

    return-void
.end method

.method public final onNewIntent(Landroid/app/Activity;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ghome/gshare/weixin/GShareWXCallback;->initWXEngine(Landroid/app/Activity;)V

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V

    :cond_0
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 70
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXCallback;->m_wxCircleEngine:Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 74
    :try_start_1
    invoke-virtual {v0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method
