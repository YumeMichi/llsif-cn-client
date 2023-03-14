.class public Lcom/ghome/sdk/GHomeWXPayHandler;
.super Ljava/lang/Object;
.source "GHomeWXPayHandler.java"

# interfaces
.implements Lcom/ghome/sdk/common/GHomeActivityListener;
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field private static INSTANCE:Lcom/ghome/sdk/GHomeWXPayHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GHomeWXPayHandler"

    .line 25
    iput-object v0, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/ghome/sdk/GHomeWXPayHandler;
    .locals 1

    .line 36
    sget-object v0, Lcom/ghome/sdk/GHomeWXPayHandler;->INSTANCE:Lcom/ghome/sdk/GHomeWXPayHandler;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/ghome/sdk/GHomeWXPayHandler;

    invoke-direct {v0}, Lcom/ghome/sdk/GHomeWXPayHandler;-><init>()V

    sput-object v0, Lcom/ghome/sdk/GHomeWXPayHandler;->INSTANCE:Lcom/ghome/sdk/GHomeWXPayHandler;

    .line 39
    :cond_0
    sget-object v0, Lcom/ghome/sdk/GHomeWXPayHandler;->INSTANCE:Lcom/ghome/sdk/GHomeWXPayHandler;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 47
    invoke-static {}, Lcom/ghome/sdk/common/GHomeWXPayActivity;->destroy()V

    return-void
.end method

.method public handle()V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/ghome/sdk/common/GHomeWXPayActivity;->setWXPayListener(Lcom/ghome/sdk/common/GHomeActivityListener;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->activity:Landroid/app/Activity;

    .line 53
    sget-object v0, Lcom/gsk/api/GskWebApi;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iput-object v0, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 54
    iget-object v0, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 61
    iput-object p2, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->activity:Landroid/app/Activity;

    .line 62
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 63
    iget-object p2, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p2, :cond_0

    .line 64
    invoke-interface {p2, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    :cond_0
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 6

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wechat response"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GHomeWXPayHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/gsk/api/GskWebApi;->isWxPayClicked:Z

    .line 77
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const-string v2, ""

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 78
    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 79
    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->activity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->activity:Landroid/app/Activity;

    const-string v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v3}, Lcom/ghomesdk/gameplus/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    :cond_2
    :goto_1
    new-instance v0, Lcom/gsk/api/GskWebApi$wxHandler;

    invoke-direct {v0}, Lcom/gsk/api/GskWebApi$wxHandler;-><init>()V

    .line 86
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 87
    iget v4, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    iput v4, v3, Landroid/os/Message;->what:I

    .line 88
    invoke-virtual {v0, v3}, Lcom/gsk/api/GskWebApi$wxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v3, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    :goto_2
    const-string v4, "errStr"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "errCode"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v3, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x1f4

    if-eqz v3, :cond_5

    move-object v3, v2

    goto :goto_3

    :cond_5
    iget-object v3, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ghomesdk/gameplus/utils/StringUtils;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v5, "transaction"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v3, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/ghomesdk/gameplus/utils/StringUtils;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const-string p1, "openId"

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->activity:Landroid/app/Activity;

    const-string v2, "{}"

    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onResp"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/ghome/sdk/GHomeWXPayHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
