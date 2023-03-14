.class final Lcom/ghome/gshare/GShareInterface$1;
.super Ljava/lang/Object;
.source "GShareInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/GShareInterface;->initChannelShareEnv(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$strCloudConfigUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/ghome/gshare/GShareInterface$1;->val$strCloudConfigUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/ghome/gshare/GShareInterface$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setPlatformAppID(Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;)V
    .locals 7

    .line 385
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$300()Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 386
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$300()Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    move-result-object v0

    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_lstSharePlatformsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;

    const/4 v3, 0x0

    .line 388
    iget-object v4, p1, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_lstSharePlatformsInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;

    .line 389
    iget v6, v2, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_nPlatformID:I

    iget v5, v5, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_nPlatformID:I

    if-ne v6, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_0

    .line 394
    iget-object v3, p1, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_lstSharePlatformsInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_3
    invoke-static {v1}, Lcom/ghome/gshare/GShareInterface;->access$402(Z)Z

    .line 399
    iget-object p1, p1, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_lstSharePlatformsInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;

    .line 400
    iget v2, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_nPlatformID:I

    if-eqz v2, :cond_6

    if-eq v2, v1, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_2

    .line 410
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current channel sina weibo app id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 411
    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->setSinaWBAppKey(Ljava/lang/String;)V

    goto :goto_2

    .line 406
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current channel qq app id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 407
    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->setQQAppID(Ljava/lang/String;)V

    goto :goto_2

    .line 402
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current channel wechat app id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 403
    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->setWXAppID(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/ghome/gshare/GShareInterface$1;->val$strCloudConfigUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->downloadTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the cloud config file info is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 359
    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->access$000(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/ghome/gshare/GShareInterface$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->getChannelID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 363
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    .line 366
    invoke-direct {p0, v2}, Lcom/ghome/gshare/GShareInterface$1;->setPlatformAppID(Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/ghome/gshare/GShareInterface$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$100()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$100()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    .line 372
    invoke-direct {p0, v2}, Lcom/ghome/gshare/GShareInterface$1;->setPlatformAppID(Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;)V

    const-string v0, "current channel is not exist in the share cloud config file. set platform app ID With package name"

    .line 373
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "current channel is not exist in the share cloud config file."

    .line 375
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 378
    :goto_0
    invoke-static {v2}, Lcom/ghome/gshare/GShareInterface;->access$202(Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;)Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    goto :goto_1

    :cond_2
    const-string v0, "init with cloud config file failed, because the file download failed."

    .line 380
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
