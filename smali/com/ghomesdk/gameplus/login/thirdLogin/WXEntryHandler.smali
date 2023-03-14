.class public Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;
.super Ljava/lang/Object;
.source "WXEntryHandler.java"

# interfaces
.implements Lcom/ghome/sdk/common/GHomeActivityListener;
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field private static INSTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;


# instance fields
.field private activity:Landroid/app/Activity;

.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private loginController:Lcom/ghomesdk/gameplus/login/LoginController;


# direct methods
.method private constructor <init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/tencent/mm/opensdk/openapi/IWXAPI;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    .line 25
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-void
.end method

.method public static getInstance()Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;
    .locals 1

    .line 74
    sget-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->INSTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    return-object v0
.end method

.method public static getInstance(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/tencent/mm/opensdk/openapi/IWXAPI;)Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;
    .locals 1

    .line 63
    sget-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->INSTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;-><init>(Lcom/ghomesdk/gameplus/login/LoginController;Lcom/tencent/mm/opensdk/openapi/IWXAPI;)V

    sput-object v0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->INSTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    .line 66
    :cond_0
    sget-object p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->INSTANCE:Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 82
    invoke-static {}, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->destroy()V

    return-void
.end method

.method public handle()V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->setWXEntryListener(Lcom/ghome/sdk/common/GHomeActivityListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1, p3, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->activity:Landroid/app/Activity;

    .line 90
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .line 95
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 96
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 97
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 6

    .line 35
    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 37
    :cond_0
    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object v3, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->loginController:Lcom/ghomesdk/gameplus/login/LoginController;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    const-string v4, "300"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ghomesdk/gameplus/login/LoginController;->doThirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
