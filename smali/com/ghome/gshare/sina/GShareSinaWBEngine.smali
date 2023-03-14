.class public Lcom/ghome/gshare/sina/GShareSinaWBEngine;
.super Lcom/ghome/gshare/GShareBaseEngine;
.source "GShareSinaWBEngine.java"

# interfaces
.implements Lcom/sina/weibo/sdk/share/WbShareCallback;


# static fields
.field private static mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;


# instance fields
.field private TAG:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

.field private m_shareListener:Lcom/ghome/gshare/listener/GShareListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/ghome/gshare/GShareBaseEngine;-><init>()V

    .line 45
    const-class v0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghome/gshare/sina/GShareSinaWBEngine;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghome/gshare/sina/GShareSinaWBEngine;)Lcom/ghome/gshare/listener/GShareListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghome/gshare/sina/GShareSinaWBEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    return-object p0
.end method

.method private dealLargeImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const/high16 v1, 0x200000

    if-le v0, v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-int v2, v2

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    double-to-int v0, v3

    const/4 v1, 0x1

    .line 199
    invoke-static {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 207
    sget-object p1, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1, p3, p0}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    const-string v0, "sina weibo share canceled."

    .line 238
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ghome/gshare/listener/GShareListener;->onCancel(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "sina weibo share complete."

    .line 215
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ghome/gshare/listener/GShareListener;->onComplete(Lcom/ghome/gshare/GSharePlatformType;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_context:Landroid/content/Context;

    .line 55
    check-cast p2, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    iput-object p2, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    return-void
.end method

.method public onError(Lcom/sina/weibo/sdk/common/UiError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sina/weibo/sdk/common/UiError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error detail is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sina/weibo/sdk/common/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sina/weibo/sdk/common/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sina weibo share error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    const-string v1, "\u5206\u4eab\u5931\u8d25"

    invoke-interface {p1, v0, v1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public share(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 4

    .line 60
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->WEIBO_APPKEY:Ljava/lang/String;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->WEIBO_REDIRECTURL:Ljava/lang/String;

    const-string v3, "all"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/sina/weibo/sdk/openapi/WBAPIFactory;->createWBAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/openapi/IWBAPI;

    move-result-object v1

    sput-object v1, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    .line 62
    sget-boolean v1, Lcom/ghomesdk/gameplus/config/Config;->WB_REGISTERED:Z

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->shareStart(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    goto :goto_0

    .line 65
    :cond_0
    sget-object v1, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    new-instance v2, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;-><init>(Lcom/ghome/gshare/sina/GShareSinaWBEngine;Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V

    :goto_0
    return-void
.end method

.method public shareStart(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 7

    .line 86
    iput-object p3, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    .line 88
    iget-object p3, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {p3}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getAppKey()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const-string p1, "\u65b0\u6d6a\u5fae\u535a\u5e73\u53f0\u6682\u672a\u8bbe\u7f6e\u5176APPID\u76f8\u5173\u4fe1\u606f\uff0c\u5bfc\u81f4\u5206\u4eab\u5931\u8d25\u3002"

    .line 90
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object p2, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p2, :cond_0

    .line 92
    iget-object p3, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {p3}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object p3, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_context:Landroid/content/Context;

    if-eqz p3, :cond_2

    .line 97
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "into sina weibo share engine share API, current package name is:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app signature is: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sina weibo app key is:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iswbappinstalled: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    invoke-interface {v1}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->isWBAppInstalled()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 99
    :cond_2
    sget-object p3, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    invoke-interface {p3}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->isWBAppInstalled()Z

    move-result p3

    if-nez p3, :cond_4

    .line 101
    iget-object p1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_3

    .line 102
    iget-object p2, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p2

    const-string p3, "\u65b0\u6d6a\u5fae\u535aAPP\u672a\u5b89\u88c5\u3002"

    invoke-interface {p1, p2, p3}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    .line 104
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "sina weibo not install"

    invoke-static {p2, p1}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 107
    :cond_4
    iget-object p3, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p3, :cond_5

    .line 108
    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/ghome/gshare/listener/GShareListener;->onOpen(Lcom/ghome/gshare/GSharePlatformType;)V

    .line 112
    :cond_5
    new-instance p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {p3}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 113
    instance-of v1, p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    if-eqz v1, :cond_6

    .line 115
    check-cast p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    .line 116
    new-instance v1, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 119
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 120
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x55

    invoke-static {v2, v3}, Lcom/ghome/gshare/util/GShareBitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->thumbData:[B

    .line 121
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getWebPageUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    const-string p2, "\u5206\u4eab\u7f51\u9875"

    .line 122
    iput-object p2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    .line 123
    iput-object v1, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/MediaObject;

    goto/16 :goto_3

    .line 124
    :cond_6
    instance-of v1, p2, Lcom/ghome/gshare/share_media/GShareTextMedia;

    if-eqz v1, :cond_7

    .line 126
    check-cast p2, Lcom/ghome/gshare/share_media/GShareTextMedia;

    .line 127
    new-instance v1, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 128
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareTextMedia;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 129
    iput-object v1, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    goto/16 :goto_3

    .line 130
    :cond_7
    instance-of v1, p2, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    const-string v2, ""

    if-eqz v1, :cond_9

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "111 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GShareSinaWBEngine"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    check-cast p2, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get external files dir failed. Exception message is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 142
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 146
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sina share, save image path is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "222 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "255 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 152
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 153
    invoke-direct {p0, p2}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->dealLargeImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageData(Landroid/graphics/Bitmap;)V

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "333 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object v1, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    goto :goto_3

    .line 156
    :cond_9
    instance-of v1, p2, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    if-eqz v1, :cond_e

    .line 158
    check-cast p2, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    .line 159
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 162
    new-instance v3, Lcom/sina/weibo/sdk/api/VideoSourceObject;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/VideoSourceObject;-><init>()V

    .line 163
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_a

    .line 164
    iget-object v4, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".fileprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/sina/weibo/sdk/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v3, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    goto :goto_1

    .line 166
    :cond_a
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v3, Lcom/sina/weibo/sdk/api/VideoSourceObject;->videoPath:Landroid/net/Uri;

    .line 168
    :goto_1
    new-instance v1, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 169
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 170
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getDescription()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    goto :goto_2

    .line 172
    :cond_b
    iput-object v2, v1, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 174
    :goto_2
    iput-object v1, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 175
    iput-object v3, p3, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->videoSourceObject:Lcom/sina/weibo/sdk/api/VideoSourceObject;

    .line 190
    :goto_3
    sget-object p2, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->mWBAPI:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    invoke-interface {p2, p1, p3, v0}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->shareMessage(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V

    return-void

    .line 178
    :cond_c
    iget-object p1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_d

    .line 179
    iget-object p2, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p2

    const-string p3, "\u5a92\u4f53\u8d44\u6e90\u4e3a\u7a7a\u3002"

    invoke-interface {p1, p2, p3}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_d
    return-void

    .line 185
    :cond_e
    iget-object p1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_f

    .line 186
    iget-object p2, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p2

    const-string p3, "\u4e0d\u652f\u6301\u7684\u5a92\u4f53\u7c7b\u578b\u3002"

    invoke-interface {p1, p2, p3}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_f
    return-void
.end method
