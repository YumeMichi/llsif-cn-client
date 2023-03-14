.class public Lcom/ghome/gshare/qq/GShareQQEngine;
.super Lcom/ghome/gshare/GShareBaseEngine;
.source "GShareQQEngine.java"


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

.field private m_shareActivity:Landroid/app/Activity;

.field private m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

.field private m_tencent:Lcom/tencent/tauth/Tencent;

.field private m_uiListener:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/ghome/gshare/GShareBaseEngine;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareActivity:Landroid/app/Activity;

    .line 41
    iput-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_tencent:Lcom/tencent/tauth/Tencent;

    .line 45
    new-instance v0, Lcom/ghome/gshare/qq/GShareQQEngine$1;

    invoke-direct {v0, p0}, Lcom/ghome/gshare/qq/GShareQQEngine$1;-><init>(Lcom/ghome/gshare/qq/GShareQQEngine;)V

    iput-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_uiListener:Lcom/tencent/tauth/IUiListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/listener/GShareListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghome/gshare/qq/GShareQQEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x2777

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2778

    if-ne v0, p1, :cond_2

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent qq share engine result, the requestCode is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", the resultCode is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 303
    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    if-eqz p3, :cond_2

    const-string p1, "key_action"

    .line 306
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tencent qq result, the action type is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :cond_1
    const-string p1, "result"

    .line 311
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tencent qq result, the result is:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    .line 101
    check-cast p2, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    iput-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    .line 102
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Lcom/tencent/tauth/Tencent;->setIsPermissionGranted(Z)V

    .line 107
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".gshare.fileprovider"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getAppID()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_tencent:Lcom/tencent/tauth/Tencent;

    :cond_0
    return-void
.end method

.method public share(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 8

    .line 117
    iput-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareActivity:Landroid/app/Activity;

    .line 118
    iput-object p3, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    .line 119
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getAppID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "QQ\u5e73\u53f0\u6682\u672a\u8bbe\u7f6e\u5176APPID\u76f8\u5173\u4fe1\u606f\uff0c\u5bfc\u81f4\u5206\u4eab\u5931\u8d25\u3002"

    .line 122
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p2, :cond_0

    .line 125
    iget-object p3, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p3}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "into tencent qq share engine share API, current package name is:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app signature is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Tencent QQ app id is:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_tencent:Lcom/tencent/tauth/Tencent;

    if-nez p1, :cond_4

    const-string p1, "\u521b\u5efaTencent\u5b9e\u4f8b\u5931\u8d25\uff0c\u5f53\u524d\u5e94\u7528\u53ef\u80fd\u672a\u5728\u817e\u8bafQQ\u63a5\u5165\u5e73\u53f0\u5ba1\u6838\u901a\u8fc7\u3002"

    .line 138
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p2, :cond_3

    .line 141
    iget-object p3, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p3}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 156
    :cond_4
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, ""

    const-string v2, "com.tencent.mobileqq"

    invoke-direct {p1, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/ghome/gshare/util/GShareUtils;->isInstalled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "\u817e\u8bafQQ\u672a\u5b89\u88c5\u3002"

    .line 160
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    .line 163
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p3, :cond_7

    .line 171
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ghome/gshare/listener/GShareListener;->onOpen(Lcom/ghome/gshare/GSharePlatformType;)V

    .line 175
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ".jpg"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get external files dir failed. Exception message is : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 186
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "QQ share, save image path is:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 187
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 190
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 192
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 193
    iget-object p3, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p3}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p3

    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const-string v2, "\u4e0d\u652f\u6301\u7684\u5a92\u4f53\u7c7b\u578b\u3002"

    const/4 v3, 0x1

    const-string v4, "targetUrl"

    const-string v5, "summary"

    const-string v6, "title"

    const-string v7, "req_type"

    if-ne p3, v0, :cond_b

    .line 196
    instance-of p3, p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    if-eqz p3, :cond_9

    .line 199
    check-cast p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    .line 201
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 202
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getWebPageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "imageUrl"

    .line 208
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_tencent:Lcom/tencent/tauth/Tencent;

    iget-object p3, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_uiListener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {p2, p3, p1, v0}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_2

    .line 213
    :cond_9
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_a

    .line 215
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 226
    :cond_b
    instance-of p3, p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    const-string v0, "imageLocalUrl"

    if-eqz p3, :cond_c

    .line 229
    check-cast p2, Lcom/ghome/gshare/share_media/GShareWebMedia;

    .line 231
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 232
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getWebPageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_c
    instance-of p3, p2, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    if-eqz p3, :cond_d

    .line 241
    check-cast p2, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    .line 243
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const/4 p2, 0x5

    .line 244
    invoke-virtual {p1, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_d
    instance-of p3, p2, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    if-eqz p3, :cond_e

    .line 250
    check-cast p2, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    .line 252
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const/4 p3, 0x2

    .line 253
    invoke-virtual {p1, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getMusicUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getMusicUrl()Ljava/lang/String;

    move-result-object p2

    const-string p3, "audio_url"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_1
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_tencent:Lcom/tencent/tauth/Tencent;

    iget-object p3, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_uiListener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {p2, p3, p1, v0}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_2
    return-void

    .line 263
    :cond_e
    iget-object p1, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_shareListener:Lcom/ghome/gshare/listener/GShareListener;

    if-eqz p1, :cond_f

    .line 265
    iget-object p2, p0, Lcom/ghome/gshare/qq/GShareQQEngine;->m_platform:Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {p2}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_f
    return-void
.end method
