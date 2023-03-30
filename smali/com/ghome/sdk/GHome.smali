.class public final Lcom/ghome/sdk/GHome;
.super Lcom/ghome/sdk/common/GHomeApiBase;
.source "GHome.java"


# static fields
.field private static final CHANNEL_MARKET_CODE:Ljava/lang/String; = "A1"

.field private static final TAG:Ljava/lang/String; = "GHome"

.field private static instance:Lcom/ghome/sdk/GHome;


# instance fields
.field private GLOG_PRODUCT_ID:Ljava/lang/String;

.field private hasLoginView:Z

.field private initFlag:Z

.field private isFromSwitchAccount:Z

.field private isSdkAgreement:Z

.field private mActivity:Landroid/app/Activity;

.field private mSwitchCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/ghome/sdk/common/GHomeApiBase;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->initFlag:Z

    .line 69
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->hasLoginView:Z

    .line 72
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->isSdkAgreement:Z

    .line 74
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->isFromSwitchAccount:Z

    const-string v0, "ghomesdk"

    .line 78
    iput-object v0, p0, Lcom/ghome/sdk/GHome;->GLOG_PRODUCT_ID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/ghome/sdk/GHome;Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/ghome/sdk/GHome;->resetAgreementScene(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/ghome/sdk/GHome;->checkPermissionFirst(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->afterAgreementInit(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/ghome/sdk/GHome;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/ghome/sdk/GHome;->initFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ghome/sdk/GHome;->afterPrivacyShow(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->afterLoginAgree(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/ghome/sdk/GHome;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/ghome/sdk/GHome;->hasLoginView:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/ghome/sdk/GHome;Z)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->setIsFromLogout(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/ghome/sdk/GHome;Z)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->setIsFromLogout(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/ghome/sdk/GHome;)Lcom/ghome/sdk/common/IGHomeApi$Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/ghome/sdk/GHome;->mSwitchCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/ghome/sdk/GHome;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/ghome/sdk/GHome;->isFromSwitchAccount:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->notifySdKPayFinished(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/ghome/sdk/GHome;Z)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->setIsFromLogout(Z)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 63
    sput-boolean p0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    return p0
.end method

.method static synthetic access$900(Lcom/ghome/sdk/GHome;Landroid/app/Activity;ILcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ghome/sdk/GHome;->dealAgreementContent(Landroid/app/Activity;ILcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method private afterAgreementInit(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 7

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GTest.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file_gpopId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget-boolean v0, p0, Lcom/ghome/sdk/GHome;->initFlag:Z

    if-eqz v0, :cond_3

    .line 689
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->NEEDFLOATWINDOWAPERMISSION:Ljava/lang/String;

    .line 691
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "1"

    :cond_1
    const-string v0, "0"

    .line 695
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->jumpToFloatWindowPermissionPage(Landroid/content/Context;)V

    .line 698
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeUI() ->needFloatWindowPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GHome"

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 699
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v4, ""

    const-string v6, "initialize"

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    const-string v0, "8.5.5.0"

    .line 704
    invoke-static {v0}, Lcom/ghomesdk/gameplus/GamePlus;->my_setSdkVersion(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 705
    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/GamePlus;->my_initGame(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 708
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "humeVersion"

    .line 709
    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->GHUME_VERSION:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "humeChannelId"

    .line 710
    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->GHUME_CHANNEL_ID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HeadLineSdk"

    const-string v3, "HumeSDK.getChannel"

    const-string v4, "{}"

    .line 711
    invoke-static {v1, v4}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    new-instance v1, Lcom/ghomesdk/gameplus/utils/log/ConsoleAdapter;

    invoke-direct {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/ConsoleAdapter;-><init>(I)V

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->addAdapter(Lcom/ghomesdk/gameplus/utils/log/LogAdapter;)V

    const-string v0, "A1"

    .line 715
    new-instance v1, Lcom/ghome/sdk/GHome$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/ghome/sdk/GHome$7;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v1}, Lcom/ghomesdk/gameplus/GamePlus;->my_getAppConfiguration(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 742
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const v2, -0xa5db6a

    .line 743
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u5931\u8d25"

    const-string v5, "initialize"

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private afterLoginAgree(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 779
    invoke-static {p1, p1, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->activate(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V

    .line 780
    iget-boolean v0, p0, Lcom/ghome/sdk/GHome;->hasLoginView:Z

    if-eqz v0, :cond_0

    const-string v0, "GHome"

    const-string v1, "login view existed"

    .line 781
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-10869643"

    .line 782
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v4, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u540e\uff01"

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->hasLoginView:Z

    .line 787
    new-instance v0, Lcom/ghome/sdk/GHome$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$9;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, p2, p2}, Lcom/ghomesdk/gameplus/GamePlus;->my_loginView(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/LoginCallback;ZZ)V

    return-void
.end method

.method private afterPrivacyShow(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
    .locals 10

    .line 375
    iget p2, p4, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->status:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 379
    iget-object p2, p4, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->agreements:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v9, v6

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;

    if-eqz v1, :cond_0

    .line 381
    iget v2, v1, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    if-ne v2, v0, :cond_1

    .line 382
    iget-object v1, v1, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    move-object v5, v1

    goto :goto_0

    .line 383
    :cond_1
    iget v2, v1, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 384
    iget-object v1, v1, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    move-object v6, v1

    goto :goto_0

    .line 385
    :cond_2
    iget v2, v1, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    if-nez v2, :cond_0

    .line 386
    iget-object v1, v1, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->content:Ljava/lang/String;

    move-object v9, v1

    goto :goto_0

    .line 395
    :cond_3
    new-instance p2, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    const-string v0, "gl_app_theme_light"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;-><init>(Landroid/content/Context;I)V

    .line 396
    invoke-virtual {p2, v9}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setContentUrl(Ljava/lang/String;)V

    .line 397
    new-instance v0, Lcom/ghome/sdk/GHome$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/ghome/sdk/GHome$3;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setOperationListener(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;)V

    .line 456
    invoke-virtual {p2}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->show()V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 459
    invoke-virtual {p0, p1, p2, v0}, Lcom/ghome/sdk/GHome;->onUserAgreement(Landroid/app/Activity;ZZ)V

    const-string p2, "agreement_checkbox_selected"

    .line 460
    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 461
    sput-boolean v0, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    .line 462
    invoke-direct {p0, p1}, Lcom/ghome/sdk/GHome;->resetAgreementScene(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 464
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v4, "\u534f\u8bae\u63a5\u53e3\u6210\u529f"

    const-string v6, "agreementAction"

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private agreementAction(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 10

    .line 471
    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->getAgreementPrivacyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    .line 472
    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->getAgreementServiceUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    const-string v0, "KEY_AGREEMENT_VERSION_NEW"

    const-string v1, "0"

    .line 473
    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "agreement_status"

    const-string v2, "ghome_install"

    .line 474
    invoke-static {p1, v1, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    new-instance v9, Lcom/ghome/sdk/GHome$4;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    move-object v7, v0

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/ghome/sdk/GHome$4;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v0

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/GamePlus;->getAgreementContentNew(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method private checkPermissionFirst(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "NEED_READ_PHONE_STATE"

    .line 626
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->init(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 629
    invoke-static {p1, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 631
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->init(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const-string v1, "gh_READ_PHONE_STATE"

    .line 633
    invoke-virtual {p0, p1, v1}, Lcom/ghome/sdk/GHome;->isInHideDays(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v1, 0x1

    .line 635
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x9f

    invoke-static {p1, v1, v0}, Lcom/ghomesdk/gameplus/utils/PermissionMgrHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 637
    :cond_3
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->init(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const-string v0, "GHomeApplication"

    const-string v1, "sdk version <=23 SdkProvider.getInstance().onApplicationCreate"

    .line 641
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->init(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private dealAgreementContent(Landroid/app/Activity;ILcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 9

    .line 543
    iget-object p3, p3, Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;->agreements:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v8, v4

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;

    if-eqz v0, :cond_0

    .line 545
    iget v1, v0, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 546
    iget-object v0, v0, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    .line 547
    :cond_1
    iget v1, v0, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 548
    iget-object v0, v0, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->url:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 549
    :cond_2
    iget v1, v0, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->type:I

    if-nez v1, :cond_0

    .line 550
    iget-object v0, v0, Lcom/ghomesdk/gameplus/impl/object/AgreementDetail;->content:Ljava/lang/String;

    move-object v8, v0

    goto :goto_0

    .line 559
    :cond_3
    new-instance p3, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    const-string v0, "gl_app_theme_light"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p3, p1, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;-><init>(Landroid/content/Context;I)V

    .line 560
    invoke-virtual {p3, v8}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setContentUrl(Ljava/lang/String;)V

    .line 561
    new-instance v0, Lcom/ghome/sdk/GHome$5;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/ghome/sdk/GHome$5;-><init>(Lcom/ghome/sdk/GHome;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ILcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setOperationListener(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;)V

    .line 620
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->show()V

    return-void
.end method

.method public static getInstance()Lcom/ghome/sdk/GHome;
    .locals 1

    .line 81
    sget-object v0, Lcom/ghome/sdk/GHome;->instance:Lcom/ghome/sdk/GHome;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/ghome/sdk/GHome;

    invoke-direct {v0}, Lcom/ghome/sdk/GHome;-><init>()V

    sput-object v0, Lcom/ghome/sdk/GHome;->instance:Lcom/ghome/sdk/GHome;

    .line 84
    :cond_0
    sget-object v0, Lcom/ghome/sdk/GHome;->instance:Lcom/ghome/sdk/GHome;

    return-object v0
.end method

.method private notifySdKPayFinished(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySdKPayFinished() ->orderId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "actionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GHome"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "order_id"

    .line 977
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "action_name"

    .line 978
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->notifyAfterPayFinished(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method private notifySdkSubmitData(Landroid/app/Activity;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const/16 v1, 0x3eb

    if-ne v1, p2, :cond_6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p2, "data"

    .line 988
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 990
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "submitType"

    .line 991
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 992
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "createRole"

    .line 993
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitDataForCreateRole(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v0, "enterServer"

    .line 995
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitDataForEnterServer(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v0, "levelUp"

    .line 997
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 998
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitDataForUpdateRoleLevel(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const-string v0, "rechargeFirstTime"

    .line 999
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1000
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitFirstRecharge(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const-string v0, "passNewGuid"

    .line 1001
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1002
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitPassNewGuid(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    const-string v0, "changeGameStage"

    .line 1003
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1004
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitDataForChangeGameStage(Landroid/app/Activity;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1008
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_6
    const/16 v0, 0x3f0

    if-ne v0, p2, :cond_7

    .line 1011
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitDataForEnterServer(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private resetAgreementScene(Landroid/content/Context;)V
    .locals 2

    const-string v0, "agreement_status"

    const-string v1, "ghome_reopen"

    .line 318
    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected beforeLoginAgree(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 8

    const-string v0, "KEY_AGREEMENT_VERSION_NEW"

    const-string v1, "0"

    .line 899
    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 900
    sget-object v4, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    new-instance v7, Lcom/ghome/sdk/GHome$12;

    invoke-direct {v7, p0, p2, p1}, Lcom/ghome/sdk/GHome$12;-><init>(Lcom/ghome/sdk/GHome;Lcom/ghome/sdk/common/IGHomeApi$Callback;Landroid/app/Activity;)V

    const-string v5, "ghome_logout"

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/GamePlus;->getAgreementContentNew(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public create(Landroid/app/Activity;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public destroy(Landroid/app/Activity;)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public doExtendUI(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghome/sdk/common/IGHomeApi$Callback;",
            ")V"
        }
    .end annotation

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GHome.doExtend() ->command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GHome"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ghome/sdk/common/GHomeApiBase;->doExtendUI(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    .line 1020
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1021
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "doExtendRequestCommand"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->notifySdkSubmitData(Landroid/app/Activity;ILjava/util/Map;)V

    const/16 p3, 0x3f1

    if-ne p2, p3, :cond_0

    .line 1025
    new-instance p2, Lcom/ghome/sdk/GHome$14;

    invoke-direct {p2, p0, p1, p4}, Lcom/ghome/sdk/GHome$14;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    invoke-static {p0, p1, p2}, Lcom/ghomesdk/gameplus/GamePlus;->my_upgradeView(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x3eb

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const v4, -0xa5db6d

    const-string p2, "-10869613"

    const-string p3, "\u6682\u4e0d\u652f\u6301"

    .line 1035
    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "doExtend"

    move-object v2, p1

    move-object v3, p4

    invoke-static/range {v2 .. v7}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected doPrivacyAgreementUI(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 10

    .line 323
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GTest.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file_gpopId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GHome"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->isSdkAgreement:Z

    .line 329
    iput-object p1, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    .line 330
    invoke-super {p0, p1, p2, p3}, Lcom/ghome/sdk/common/GHomeApiBase;->doPrivacyAgreementUI(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    .line 332
    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->getAgreementPrivacyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_PRIVACY:Ljava/lang/String;

    .line 333
    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;->getAgreementServiceUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL_SERVICE:Ljava/lang/String;

    const-string v0, "KEY_AGREEMENT_VERSION_NEW"

    const-string v1, "0"

    .line 334
    invoke-static {p1, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "agreement_status"

    const-string v2, "ghome_install"

    .line 335
    invoke-static {p1, v1, v2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v9, Lcom/ghome/sdk/GHome$2;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    move-object v7, v0

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/ghome/sdk/GHome$2;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v0

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/GamePlus;->getAgreementContentNew(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public getApplicationChannel()Ljava/lang/String;
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const-string v1, "GHomeApiCall"

    const-string v2, "getApplicationChannel"

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-super {p0}, Lcom/ghome/sdk/common/GHomeApiBase;->getApplicationChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1102
    iget-object v0, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const-string v1, "GHomeApiCall"

    const-string v2, "getApplicationChannel(context)"

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationSuperChannel()Ljava/lang/String;
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const-string v1, "GHomeApiCall"

    const-string v2, "getApplicationSuperChannel"

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-super {p0}, Lcom/ghome/sdk/common/GHomeApiBase;->getApplicationSuperChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1090
    iget-object v0, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const-string v1, "GHomeApiCall"

    const-string v2, "getApplicationSuperChannel(context)"

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCPSChannelCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 1108
    iget-object v0, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const-string v1, "GHomeApiCall"

    const-string v2, "getCPSChannelCode"

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1110
    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPSChannelCode"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v8, "getCPSChannelCode"

    .line 1111
    invoke-static/range {v3 .. v8}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1112
    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChannelCode()Ljava/lang/String;
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const-string v1, "GHomeApiCall"

    const-string v2, "getChannelCode"

    invoke-static {v0, v1, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "A1"

    return-object v0
.end method

.method protected initializeUI(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GHome.initialize() -> gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GHome"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 652
    sput-boolean v0, Lcom/ghomesdk/gameplus/utils/log/Log;->isDebug:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 654
    sput-boolean v1, Lcom/ghomesdk/gameplus/utils/log/Log;->isDebug:Z

    .line 656
    :goto_0
    sput-boolean v0, Lcom/ghomesdk/gameplus/utils/log/Log;->isDebug:Z

    .line 657
    iput-object p1, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    .line 658
    sput-object p2, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    .line 660
    sget-boolean v1, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    if-nez v1, :cond_1

    .line 661
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->isSdkAgreement:Z

    .line 662
    new-instance v0, Lcom/ghome/sdk/GHome$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$6;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ghome/sdk/GHome;->agreementAction(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void

    .line 675
    :cond_1
    invoke-direct {p0, p1}, Lcom/ghome/sdk/GHome;->checkPermissionFirst(Landroid/app/Activity;)V

    .line 678
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->afterAgreementInit(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method

.method protected isSdkAgreement()Z
    .locals 1

    .line 894
    iget-boolean v0, p0, Lcom/ghome/sdk/GHome;->isSdkAgreement:Z

    return v0
.end method

.method protected loginUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V
    .locals 7

    const-string v0, "GHome"

    const-string v1, "GHome.login()"

    .line 756
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-boolean v0, p0, Lcom/ghome/sdk/GHome;->initFlag:Z

    if-nez v0, :cond_0

    const-string v0, "-10869611"

    .line 758
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v4, "\u6ca1\u6709\u521d\u59cb\u5316"

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/ghome/sdk/GHome;->isSdkAgreement()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ghome/sdk/GHome;->isFromLogout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    new-instance v0, Lcom/ghome/sdk/GHome$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ghome/sdk/GHome$8;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/ghome/sdk/GHome;->beforeLoginAgree(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    goto :goto_0

    .line 772
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->afterLoginAgree(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected logoutUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 2

    const-string v0, "GHome"

    const-string v1, "GHome.logout()"

    .line 826
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    new-instance v0, Lcom/ghome/sdk/GHome$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/ghome/sdk/GHome$10;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    invoke-static {p0, p1, v0}, Lcom/ghomesdk/gameplus/GamePlus;->my_logoutView(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 1069
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ghome/sdk/common/GHomeApiBase;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    const/4 p2, 0x0

    const-string p3, "{}"

    .line 1070
    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "lifeCycle"

    const-string p4, "onActivityResult"

    invoke-static {p1, p3, p4, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0

    .line 273
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 283
    invoke-super {p0, p1, p2}, Lcom/ghome/sdk/common/GHomeApiBase;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 8

    const-string v0, ""

    const-string v1, "GTest.txt"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GGHome"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "GPOPGUIDLog.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/ghomesdk/gameplus/utils/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 99
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_0
    sput-boolean v3, Lcom/greport/glog/GLogConfig;->IS_CACHE:Z

    .line 105
    new-instance v4, Lcom/ghomesdk/gameplus/utils/log/ConsoleAdapter;

    invoke-direct {v4, v3}, Lcom/ghomesdk/gameplus/utils/log/ConsoleAdapter;-><init>(I)V

    invoke-static {v4}, Lcom/ghomesdk/gameplus/utils/log/Log;->addAdapter(Lcom/ghomesdk/gameplus/utils/log/LogAdapter;)V

    .line 106
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onCreate(Landroid/app/Activity;)V

    .line 109
    new-instance v4, Lcom/ghomesdk/gameplus/oaid/OaidSDKHelper;

    new-instance v5, Lcom/ghome/sdk/GHome$1;

    invoke-direct {v5, p0}, Lcom/ghome/sdk/GHome$1;-><init>(Lcom/ghome/sdk/GHome;)V

    invoke-direct {v4, v5}, Lcom/ghomesdk/gameplus/oaid/OaidSDKHelper;-><init>(Lcom/ghomesdk/gameplus/oaid/OaidSDKHelper$AppIdsUpdater;)V

    .line 122
    invoke-virtual {v4, p1}, Lcom/ghomesdk/gameplus/oaid/OaidSDKHelper;->getDeviceIds(Landroid/content/Context;)V

    .line 127
    invoke-static {p1}, Lcom/bytedance/hume/readapk/HumeSDK;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ghomesdk/gameplus/config/Config;->GHUME_CHANNEL_ID:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/bytedance/hume/readapk/HumeSDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ghomesdk/gameplus/config/Config;->GHUME_VERSION:Ljava/lang/String;

    const/4 v4, 0x1

    .line 134
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v6, "gameId"

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "appId"

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sdkAppId"

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sdkVersion"

    .line 138
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "channelId"

    .line 139
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "subChannelId"

    .line 140
    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "productId"

    .line 141
    iget-object v7, p0, Lcom/ghome/sdk/GHome;->GLOG_PRODUCT_ID:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/greport/glog/FileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    sput-boolean v4, Lcom/greport/glog/GLogConfig;->IS_GPOP_TEST:Z

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/greport/glog/FileHelper;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    const-string v6, "file_uuid"

    .line 145
    sget-object v7, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 147
    :cond_0
    sput-boolean v3, Lcom/greport/glog/GLogConfig;->IS_GPOP_TEST:Z

    :goto_1
    const-string v6, "http://192.168.1.12:8080/report/ge/app"

    .line 149
    invoke-static {p1, v6, v5}, Lcom/greport/glog/GLog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_OAID:Ljava/lang/String;

    invoke-static {v5}, Lcom/greport/glog/GLog;->setOaidKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 152
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v0

    :goto_2
    const-string v6, "GHome"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_3
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onCreate(Landroid/app/Activity;)V

    const-string v5, "{}"

    .line 158
    invoke-static {v2, v5}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lifeCycle"

    const-string v6, "onCreate"

    invoke-static {p1, v5, v6, v2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/greport/glog/FileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    sput-boolean v4, Lcom/greport/glog/GLogConfig;->IS_GPOP_TEST:Z

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/greport/glog/FileHelper;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file_gpopId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppInfo"

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_2
    iput-boolean v3, p0, Lcom/ghome/sdk/GHome;->hasLoginView:Z

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3

    .line 241
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onDestroy(Landroid/app/Activity;)V

    .line 242
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onDestroy(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->initFlag:Z

    .line 245
    iput-boolean v0, p0, Lcom/ghome/sdk/GHome;->hasLoginView:Z

    const/4 v0, 0x0

    const-string v1, "{}"

    .line 247
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lifeCycle"

    const-string v2, "onDestroy"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 288
    invoke-super {p0, p1, p2, p3}, Lcom/ghome/sdk/common/GHomeApiBase;->onKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 252
    invoke-super {p0, p1, p2}, Lcom/ghome/sdk/common/GHomeApiBase;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 253
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    const/4 p2, 0x0

    const-string v0, "{}"

    .line 255
    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "lifeCycle"

    const-string v1, "onNewIntent"

    invoke-static {p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 749
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onNewIntent(Landroid/content/Intent;)V

    .line 750
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 751
    iget-object p1, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "{}"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lifeCycle"

    const-string v2, "onNewIntent"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onPause(Landroid/app/Activity;)V

    .line 191
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onPause(Landroid/app/Activity;)V

    const/4 v0, 0x0

    const-string v1, "{}"

    .line 192
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lifeCycle"

    const-string v2, "onPause"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 1055
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ghome/sdk/common/GHomeApiBase;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 1056
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1057
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "requestCode"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "{}"

    .line 1058
    invoke-static {p3, p4}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "lifeCycle"

    const-string v0, "onRequestPermissionsResult"

    invoke-static {p1, p4, v0, p3}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x9f

    if-ne p2, p3, :cond_0

    const-string p2, "GHome"

    const-string p3, "sdk version > 23 SdkProvider.getInstance().onApplicationCreate"

    .line 1060
    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->init(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 3

    .line 228
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onRestart(Landroid/app/Activity;)V

    .line 229
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onRestart(Landroid/app/Activity;)V

    const/4 v0, 0x0

    const-string v1, "{}"

    .line 231
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lifeCycle"

    const-string v2, "onRestart"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 267
    invoke-super {p0, p1, p2}, Lcom/ghome/sdk/common/GHomeApiBase;->onRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    const-string v0, "{}"

    .line 268
    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "lifeCycle"

    const-string v1, "onRestoreInstanceState"

    invoke-static {p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3

    .line 202
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onResume(Landroid/app/Activity;)V

    .line 203
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onResume(Landroid/app/Activity;)V

    const/4 v0, 0x0

    const-string v1, "{}"

    .line 205
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lifeCycle"

    const-string v2, "onResume"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 260
    invoke-super {p0, p1, p2}, Lcom/ghome/sdk/common/GHomeApiBase;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    const-string v0, "{}"

    .line 262
    invoke-static {p2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "lifeCycle"

    const-string v1, "onSaveInstanceState"

    invoke-static {p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 3

    .line 177
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onStart(Landroid/app/Activity;)V

    .line 178
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onStart(Landroid/app/Activity;)V

    const/4 v0, 0x0

    const-string v1, "{}"

    .line 180
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lifeCycle"

    const-string v2, "onStart"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 3

    .line 215
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/GHomeApiBase;->onStop(Landroid/app/Activity;)V

    .line 216
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->onStop(Landroid/app/Activity;)V

    const/4 v0, 0x0

    const-string v1, "{}"

    .line 218
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lifeCycle"

    const-string v2, "onStop"

    invoke-static {p1, v1, v2, v0}, Lcom/ghomesdk/gameplus/utils/GLogUtil;->gLogPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserAgreement(Landroid/app/Activity;ZZ)V
    .locals 6

    .line 302
    invoke-super {p0, p1, p2, p3}, Lcom/ghome/sdk/common/GHomeApiBase;->onUserAgreement(Landroid/app/Activity;ZZ)V

    .line 303
    sput-boolean p3, Lcom/ghome/sdk/GHome;->agreeFlag:Z

    .line 304
    iput-object p1, p0, Lcom/ghome/sdk/GHome;->mActivity:Landroid/app/Activity;

    const-string p2, "agreement_checkbox_selected"

    .line 305
    invoke-static {p1, p2, p3}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 307
    iget-boolean p2, p0, Lcom/ghome/sdk/GHome;->isFromSwitchAccount:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 309
    iget-object p2, p0, Lcom/ghome/sdk/GHome;->mSwitchCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string p3, "switchAccount"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->loginUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 311
    iput-boolean p2, p0, Lcom/ghome/sdk/GHome;->hasLoginView:Z

    .line 312
    iget-object v1, p0, Lcom/ghome/sdk/GHome;->mSwitchCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v2, -0xa5db68

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "\u7528\u6237\u4e0d\u540c\u610f\u9690\u79c1\u653f\u7b56\uff0c\u5207\u6362\u8d26\u53f7\u5931\u8d25"

    const-string v5, "switchAccount"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/ghome/sdk/GHome;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 278
    invoke-super {p0, p1, p2}, Lcom/ghome/sdk/common/GHomeApiBase;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    return-void
.end method

.method public pause(Landroid/app/Activity;)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method protected payUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 12

    move-object/from16 v0, p6

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GHome.pay() ->groupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "orderId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " areaId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " productId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extend="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GHome"

    invoke-static {v3, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-static/range {p6 .. p6}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GHOME_CODE_KEY"

    .line 958
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/JsonUtils;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "GHOME_EXTEND"

    .line 960
    invoke-static {v0, v3}, Lcom/ghomesdk/gameplus/utils/JsonUtils;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :cond_1
    :goto_0
    move-object v10, v0

    move-object v9, v1

    .line 963
    new-instance v11, Lcom/ghome/sdk/GHome$13;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p7

    invoke-direct {v11, p0, p1, v3}, Lcom/ghome/sdk/GHome$13;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v11}, Lcom/ghomesdk/gameplus/GamePlus;->my_payInGameProduct(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;)V

    return-void
.end method

.method public restart(Landroid/app/Activity;)V
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->onRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public start(Landroid/app/Activity;)V
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public stop(Landroid/app/Activity;)V
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Lcom/ghome/sdk/GHome;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method protected switchAccountUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 1

    .line 843
    iput-object p3, p0, Lcom/ghome/sdk/GHome;->mSwitchCallback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string p3, "GHome"

    const-string v0, "GHome.switchAccountUI() -> activity, agreementCallback, apiCallback"

    .line 844
    invoke-static {p3, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance p3, Lcom/ghome/sdk/GHome$11;

    invoke-direct {p3, p0, p1, p2}, Lcom/ghome/sdk/GHome$11;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    invoke-static {p0, p1, p3}, Lcom/ghomesdk/gameplus/GamePlus;->my_logoutView(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method protected writtenOffUI(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 1

    .line 1041
    new-instance v0, Lcom/ghome/sdk/GHome$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/ghome/sdk/GHome$15;-><init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/GamePlus;->deleteAcct(Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method
