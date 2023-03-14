.class public Lcom/ghome/gshare/weixin/GShareWXEngine;
.super Lcom/ghome/gshare/GShareBaseEngine;
.source "GShareWXEngine.java"


# static fields
.field private static sm_nMaxLenImageSupported:I = 0x20000

.field private static final sm_nMaxLenThumbSupported:I = 0x4000


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_lastTransaction:Ljava/lang/String;

.field private m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

.field private m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

.field private m_wxAPIEventHandler:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

.field private m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/ghome/gshare/GShareBaseEngine;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_lastTransaction:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/ghome/gshare/weixin/GShareWXEngine$1;

    invoke-direct {v0, p0}, Lcom/ghome/gshare/weixin/GShareWXEngine$1;-><init>(Lcom/ghome/gshare/weixin/GShareWXEngine;)V

    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxAPIEventHandler:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/ghome/gshare/weixin/GShareWXEngine;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_lastTransaction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghome/gshare/weixin/GShareWXEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghome/gshare/weixin/GShareWXEngine;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object p0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private regToWx()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 94
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 96
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/ghome/gshare/weixin/GShareWXEngine$2;

    invoke-direct {v1, p0}, Lcom/ghome/gshare/weixin/GShareWXEngine$2;-><init>(Lcom/ghome/gshare/weixin/GShareWXEngine;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.mm.plugin.openapi.Intent.ACTION_REFRESH_WXAPP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getWXApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public getWXEventHandler()Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxAPIEventHandler:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    return-object v0
.end method

.method public isInstall()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_context:Landroid/content/Context;

    .line 86
    check-cast p2, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    iput-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    .line 87
    invoke-direct {p0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->regToWx()V

    return-void
.end method

.method public onShareCallback(Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;)V
    .locals 3

    .line 325
    iget v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;->errCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 343
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "weixin share error ("

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;->errCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "):"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object p1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;->errStr:Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weixin share error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_2

    .line 346
    iget-object v1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "weixin share complete."

    .line 327
    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_2

    .line 330
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ghome/gshare/listener/GShareListener;->onComplete(Lcom/ghome/gshare/GSharePlatformType;)V

    goto :goto_0

    :cond_1
    const-string p1, "weixin share canceled."

    .line 335
    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_2

    .line 338
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ghome/gshare/listener/GShareListener;->onCancel(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public share(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 9

    .line 151
    iput-object p3, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    .line 152
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {p1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getAppID()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    const-string p1, "\u5fae\u4fe1\u5e73\u53f0\u6682\u672a\u8bbe\u7f6e\u5176APPID\u76f8\u5173\u4fe1\u606f\uff0c\u5bfc\u81f4\u5206\u4eab\u5931\u8d25\u3002"

    .line 154
    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p2, :cond_0

    .line 156
    iget-object p3, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {p3}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_context:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "into weixin share engine share API, current package name is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", app signature is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", weixin app id is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/ghome/gshare/weixin/GShareWXEngine;->isInstall()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "\u5fae\u4fe1APP\u672a\u5b89\u88c5\u3002"

    .line 169
    iget-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p2, :cond_3

    .line 170
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    .line 174
    :cond_3
    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 178
    :cond_4
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_5

    .line 179
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ghome/gshare/listener/GShareListener;->onOpen(Lcom/ghome/gshare/GSharePlatformType;)V

    .line 182
    :cond_5
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez p1, :cond_7

    const-string p1, "\u521b\u5efaIWXAPI\u5b9e\u4f8b\u5931\u8d25\uff0c\u5f53\u524d\u5e94\u7528\u53ef\u80fd\u672a\u5728\u817e\u8baf\u5fae\u4fe1\u63a5\u5165\u5e73\u53f0\u5ba1\u6838\u901a\u8fc7\u3002"

    .line 184
    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p2, :cond_6

    .line 186
    iget-object p3, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {p3}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 193
    :cond_7
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 195
    instance-of v0, p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 197
    check-cast p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    .line 200
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 201
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getWebPageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 202
    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 203
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 204
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 205
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/ghome/gshare/util/GShareBitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    const-string p2, "webpage"

    goto/16 :goto_1

    .line 206
    :cond_8
    instance-of v0, p2, Lcom/ghome/gshare/share_media/GShareTextMedia;

    if-eqz v0, :cond_9

    .line 208
    check-cast p2, Lcom/ghome/gshare/share_media/GShareTextMedia;

    .line 211
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;-><init>()V

    .line 212
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareTextMedia;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 213
    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 214
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareTextMedia;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    const-string p2, "text"

    goto/16 :goto_1

    .line 215
    :cond_9
    instance-of v0, p2, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    if-eqz v0, :cond_a

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "111 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GShareWXEngine"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    check-cast p2, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get external files dir failed. Exception message is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const-string v0, ""

    .line 228
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WX share, save image path is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 230
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ghome/gshare/weixin/GShareWXEngine$3;

    invoke-direct {v4, p0, p2, v0}, Lcom/ghome/gshare/weixin/GShareWXEngine$3;-><init>(Lcom/ghome/gshare/weixin/GShareWXEngine;Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "222 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>()V

    .line 244
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    sget v4, Lcom/ghome/gshare/weixin/GShareWXEngine;->sm_nMaxLenImageSupported:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/ghome/gshare/util/GShareBitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;J)[B

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->imageData:[B

    .line 245
    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 247
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v3, v3

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 250
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "444 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0xc8

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v5, v0

    float-to-int v0, v5

    invoke-static {v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "555 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 255
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 256
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const-string p2, "image"

    goto :goto_1

    .line 259
    :cond_a
    instance-of v0, p2, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    if-eqz v0, :cond_b

    .line 261
    check-cast p2, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    .line 263
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;-><init>()V

    .line 264
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getMusicUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 265
    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 266
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 267
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 268
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/ghome/gshare/util/GShareBitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    const-string p2, "music"

    goto :goto_1

    .line 269
    :cond_b
    instance-of v0, p2, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    if-eqz v0, :cond_11

    .line 271
    check-cast p2, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    .line 273
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;-><init>()V

    .line 274
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 275
    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 276
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 277
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 278
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/ghome/gshare/util/GShareBitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    const-string p2, "video"

    .line 290
    :goto_1
    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    array-length v0, v0

    const/16 v2, 0x4000

    if-le v0, v2, :cond_c

    .line 292
    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    invoke-static {v0, v2}, Lcom/ghome/gshare/util/GShareBitmapUtils;->compressBitmap([BI)[B

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 296
    :cond_c
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 297
    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 298
    invoke-direct {p0, p2}, Lcom/ghome/gshare/weixin/GShareWXEngine;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 299
    iget-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_lastTransaction:Ljava/lang/String;

    .line 300
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {p1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p1

    sget-object p2, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p1, p2, :cond_d

    .line 302
    iput p3, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_2

    .line 303
    :cond_d
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {p1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p1

    sget-object p2, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p1, p2, :cond_e

    .line 305
    iput v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 310
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "wxapi sendReq failed."

    .line 312
    iget-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p2, :cond_f

    .line 313
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    .line 317
    :cond_f
    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 318
    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-void

    .line 281
    :cond_11
    iget-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_12

    .line 282
    iget-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p2

    const-string p3, "\u4e0d\u652f\u6301\u7684\u5a92\u4f53\u7c7b\u578b"

    invoke-interface {p1, p2, p3}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_12
    return-void
.end method
