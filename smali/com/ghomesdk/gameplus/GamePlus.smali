.class public Lcom/ghomesdk/gameplus/GamePlus;
.super Ljava/lang/Object;
.source "GamePlus.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GamePlus"

.field private static initFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AutoLogin(Landroid/app/Activity;ZLcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 1

    .line 696
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object p0

    .line 697
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object p2

    .line 698
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getAutokey()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 701
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 69
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/GamePlus;->dolocalLogout(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method public static changeThirdBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 0

    .line 803
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/impl/ServerApi;->thirdAccountBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method private static checkTokenWithAutoLogin(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 1

    .line 619
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "-10869607"

    .line 621
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    return-void

    .line 624
    :cond_0
    new-instance v0, Lcom/ghomesdk/gameplus/GamePlus$8;

    invoke-direct {v0, p1, p2}, Lcom/ghomesdk/gameplus/GamePlus$8;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    invoke-static {p0, p1, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->checkToken(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public static deleteAcct(Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 1

    .line 354
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->startDele(Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method private static doAutoLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/Callback;)V
    .locals 0

    return-void
.end method

.method private static dolocalLogout(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 1

    .line 789
    new-instance v0, Lcom/ghomesdk/gameplus/GamePlus$9;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/GamePlus$9;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAgreementContentNew(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;",
            ">;)V"
        }
    .end annotation

    .line 807
    invoke-static/range {p0 .. p5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->getAgreementAll(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public static getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->GHUME_CHANNEL_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ghomesdk/gameplus/config/Config;->GHUME_CHANNEL_ID:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 608
    invoke-static {p0}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static my_doPostRequest(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 0

    .line 177
    invoke-static/range {p0 .. p5}, Lcom/ghomesdk/gameplus/impl/ServerApi;->postSign(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static my_getAppConfiguration(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 3

    .line 204
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "my_getAppConfiguration channelCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/ghomesdk/gameplus/GamePlus$3;

    invoke-direct {v0, p1, p3}, Lcom/ghomesdk/gameplus/GamePlus$3;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    invoke-static {p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->getAppConfiguration(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public static my_getAreaConfiguration(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/ConfigurationCallback;)V
    .locals 1

    .line 185
    new-instance v0, Lcom/ghomesdk/gameplus/GamePlus$2;

    invoke-direct {v0, p2}, Lcom/ghomesdk/gameplus/GamePlus$2;-><init>(Lcom/ghomesdk/gameplus/callback/ConfigurationCallback;)V

    invoke-static {p0, p1, v0}, Lcom/ghomesdk/gameplus/impl/ServerApi;->getAreaConfiguration(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static my_getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static my_getProductConfiguration(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 0

    .line 200
    invoke-static {p0, p1, p2}, Lcom/ghomesdk/gameplus/impl/ServerApi;->getProductConfiguration(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method public static my_getTicket(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 299
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/impl/ServerApi;->getTicket(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void

    .line 297
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static my_initErrorCodeList(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 160
    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->initErrorCodeList(Landroid/content/Context;)V

    .line 161
    new-instance p2, Lcom/ghomesdk/gameplus/GamePlus$1;

    invoke-direct {p2, p1}, Lcom/ghomesdk/gameplus/GamePlus$1;-><init>(Landroid/app/Activity;)V

    const-string p3, "0"

    invoke-static {p0, p1, p3, p2}, Lcom/ghomesdk/gameplus/impl/ServerApi;->getErrorCodeList(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public static my_initGame(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "GTest.txt"

    .line 90
    sget-object v1, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GamePlus.my_initGame() gameId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "8.5.5.0"

    const/4 v2, 0x0

    const-string v3, ""

    if-nez p2, :cond_1

    .line 93
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 94
    invoke-static {p1, v2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->str2Int(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "gameId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1, v2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->str2Int(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "appId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p1, v2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->str2Int(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sdkAppId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sdkVersion"

    .line 97
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "channelId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p0}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "subChannelId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "productId"

    const-string v6, "ghomesdk"

    .line 100
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/greport/glog/FileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/FileHelper;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    const-string v0, "file_uuid"

    .line 105
    sget-object v5, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    sget-object v5, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get GTest.txt exceptioin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "https://reportsk.web.sdo.com/report/ge/app"

    .line 111
    invoke-static {p0, v0, v4}, Lcom/greport/glog/GLog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_OAID:Ljava/lang/String;

    invoke-static {v0}, Lcom/greport/glog/GLog;->setOaidKey(Ljava/lang/String;)V

    .line 115
    invoke-static {v3, v3, v3}, Lcom/greport/glog/GLog;->reportAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->setSandbox(Z)V

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 123
    sget-boolean p2, Lcom/ghomesdk/gameplus/GamePlus;->initFlag:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 127
    :cond_2
    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    .line 129
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 130
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->APP_VERSION:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 132
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 134
    :goto_1
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->SDK_VERSION:Ljava/lang/String;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 135
    sput-object v1, Lcom/ghomesdk/gameplus/config/Config;->SDK_VERSION:Ljava/lang/String;

    .line 138
    :cond_3
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->PROMOTERID:Ljava/lang/String;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "APPLICATION_PROMOTERID"

    .line 139
    invoke-static {p0, p1, v3}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->PROMOTERID:Ljava/lang/String;

    .line 140
    sget-object p1, Lcom/ghomesdk/gameplus/config/Config;->PROMOTERID:Ljava/lang/String;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 141
    invoke-static {p0}, Lcom/ghomesdk/gameplus/GamePlus;->preInitialize(Landroid/content/Context;)V

    .line 145
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/EnvUtil;->setApplicationContext(Landroid/content/Context;)V

    .line 146
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->initMarketCode(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 148
    invoke-static {p0, p0, p1}, Lcom/ghomesdk/gameplus/impl/ServerApi;->activate(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V

    .line 149
    sget-boolean p1, Lcom/ghomesdk/gameplus/config/Assembly;->sendReportWhenCrash:Z

    if-eqz p1, :cond_5

    .line 150
    new-instance p1, Lcom/ghomesdk/gameplus/exception/GamePlusExceptionHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/ghomesdk/gameplus/exception/GamePlusExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_5
    const/4 p0, 0x1

    .line 153
    sput-boolean p0, Lcom/ghomesdk/gameplus/GamePlus;->initFlag:Z

    .line 154
    sput-object v3, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    const-string p0, "area_id"

    .line 156
    invoke-static {p0, v3}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static my_loginView(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 2

    .line 304
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    const-string v1, "GamePlus.my_loginView()"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 305
    invoke-static {p0, p1, v0, v0}, Lcom/ghomesdk/gameplus/GamePlus;->my_loginView(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/LoginCallback;ZZ)V

    return-void
.end method

.method public static my_loginView(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/LoginCallback;ZZ)V
    .locals 3

    .line 309
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.my_loginView() _isFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";_isPortrait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 313
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    sput-boolean p2, Lcom/ghomesdk/gameplus/config/Assembly;->isFullscreen:Z

    .line 318
    sput-boolean p3, Lcom/ghomesdk/gameplus/config/Assembly;->isPortrait:Z

    .line 320
    sget-boolean p2, Lcom/ghomesdk/gameplus/config/Assembly;->isFullscreen:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 321
    sput-boolean p2, Lcom/ghomesdk/gameplus/config/Assembly;->isPortrait:Z

    .line 328
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p2

    sget-object p3, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p0, p3, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->startLogin(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/LoginCallback;)V

    return-void

    .line 314
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You shound invoke GamePlus.my_initGame() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static my_logout(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 8

    .line 334
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    const-string v1, "GamePlus.my_logout()"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 339
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getAutokey()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v6

    .line 343
    sget-object v3, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    new-instance v7, Lcom/ghomesdk/gameplus/GamePlus$4;

    invoke-direct {v7, p1, p2}, Lcom/ghomesdk/gameplus/GamePlus$4;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/ServerApi;->logout(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void

    .line 336
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static my_logoutView(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 1

    .line 360
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ghomesdk/gameplus/login/LoginController;->doLogout(Ljava/lang/Object;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    const-string v0, ""

    .line 362
    invoke-interface {p2, p0, v0, p1}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static my_onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/thirdLogin/WeiboLogin;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 392
    invoke-static {}, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->getInstance()Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->getInstance()Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/thirdLogin/WXEntryHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 396
    :cond_0
    invoke-static {}, Lcom/ghome/sdk/common/WXEntryThirdHandler;->getInstance()Lcom/ghome/sdk/common/WXEntryThirdHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    invoke-static {}, Lcom/ghome/sdk/common/WXEntryThirdHandler;->getInstance()Lcom/ghome/sdk/common/WXEntryThirdHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ghome/sdk/common/WXEntryThirdHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 400
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/login/thirdLogin/QQLogin;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static my_payInGameProduct(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/PayCallback;)V
    .locals 13

    move-object v10, p1

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    .line 404
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.my_payInGameProduct() groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "orderid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";areaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";productid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";codeKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";extend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";marketCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_3

    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 406
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 409
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 415
    invoke-virtual {v9}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    invoke-virtual {v9}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getAutokey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-10869607"

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "\u8bf7\u5148\u767b\u5f55\uff01"

    .line 418
    invoke-static {v0, v2}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v11, p8

    .line 417
    invoke-interface {v11, v1, v0, v2}, Lcom/ghomesdk/gameplus/callback/PayCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    move-object/from16 v11, p8

    .line 422
    new-instance v12, Lcom/ghomesdk/gameplus/GamePlus$5;

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/ghomesdk/gameplus/GamePlus$5;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/PayCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V

    move-object v0, p0

    invoke-static {p0, p1, v12}, Lcom/ghomesdk/gameplus/GamePlus;->checkTokenWithAutoLogin(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You shound invoke GamePlus.my_initGame() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static my_reportRole(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 475
    invoke-static/range {p0 .. p6}, Lcom/ghomesdk/gameplus/impl/ServerApi;->reportRole(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method public static my_scanLoginPayCheckToken(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 2

    .line 454
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getAutokey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "-10869607"

    .line 456
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    return-void

    .line 460
    :cond_1
    new-instance v0, Lcom/ghomesdk/gameplus/GamePlus$6;

    invoke-direct {v0, p1, p2}, Lcom/ghomesdk/gameplus/GamePlus$6;-><init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    invoke-static {p0, p1, v0}, Lcom/ghomesdk/gameplus/GamePlus;->checkTokenWithAutoLogin(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method

.method public static my_setChannelSdkVersion(Ljava/lang/String;)V
    .locals 3

    .line 593
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.setChannelSdkVersion() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    sput-object p0, Lcom/ghomesdk/gameplus/config/Config;->CHANNEL_SDK_VERSION:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static my_setGReportLogLevel(Landroid/content/Context;I)V
    .locals 3

    .line 549
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.setGReportLogEnabled() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v0, Lcom/sqo/log/adapter/ConsoleAdapter;

    invoke-direct {v0, p1}, Lcom/sqo/log/adapter/ConsoleAdapter;-><init>(I)V

    invoke-static {v0}, Lcom/sqo/log/Log;->addAdapter(Lcom/sqo/log/adapter/LogAdapter;)V

    .line 551
    invoke-static {p0}, Lcom/sqo/eventcollection/EventLog;->init(Landroid/content/Context;)V

    .line 553
    sget-object p1, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    const-string v0, "481 start upload data"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "productId"

    const-string v0, "GHOME_ONLINEGAME"

    .line 554
    invoke-static {p1, v0}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "userId"

    const-string v0, ""

    .line 555
    invoke-static {p1, v0}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {p0}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channelId"

    invoke-static {v0, p1}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {p0}, Lcom/greport/glog/model/IMEIUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mac"

    invoke-static {p1, p0}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sdkVersion"

    const-string p1, "8.5.5.0"

    .line 558
    invoke-static {p0, p1}, Lcom/sqo/eventcollection/EventLog;->setGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static my_setGameArea(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 480
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    sput-object p2, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    :try_start_0
    const-string v0, "area_id"

    .line 486
    invoke-static {v0, p2}, Lcom/sqo/eventcollection/EventLog;->setGLogGlobalParams(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 488
    sget-object v1, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_0
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 492
    invoke-static {p0, p1, v0, p2, v1}, Lcom/ghomesdk/gameplus/impl/ServerApi;->updateUserGameAreaInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 481
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static my_setGameArea(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 504
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    sput-object p2, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    .line 510
    sput-object p3, Lcom/ghomesdk/gameplus/config/Config;->GROUP_ID:Ljava/lang/String;

    :try_start_0
    const-string v0, "area_id"

    .line 514
    invoke-static {v0, p2}, Lcom/sqo/eventcollection/EventLog;->setGLogGlobalParams(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "group_id"

    .line 515
    invoke-static {v0, p3}, Lcom/sqo/eventcollection/EventLog;->setGLogGlobalParams(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    sget-object v1, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_0
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {p0, p1, v0, p2, p3}, Lcom/ghomesdk/gameplus/impl/ServerApi;->updateUserGameAreaInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_1
    :goto_1
    sget-object p0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    const-string p2, "-1086977 Parameter is null."

    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "\u7cfb\u7edf\u5f02\u5e38(\u9519\u8bef\u7801:-1086977)"

    .line 506
    invoke-static {p1, p0}, Lcom/ghomesdk/gameplus/GamePlus;->showDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->show()V

    return-void
.end method

.method public static my_setGameEngine(Ljava/lang/String;)V
    .locals 3

    .line 536
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.setGameEngine() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    sput-object p0, Lcom/ghomesdk/gameplus/config/Config;->GAME_ENGINE:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static my_setLogLevel(I)V
    .locals 3

    .line 543
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.setLogEnabled() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v0, Lcom/ghomesdk/gameplus/utils/log/ConsoleAdapter;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/utils/log/ConsoleAdapter;-><init>(I)V

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->addAdapter(Lcom/ghomesdk/gameplus/utils/log/LogAdapter;)V

    return-void
.end method

.method public static my_setMarketCode(Ljava/lang/String;)V
    .locals 3

    .line 586
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.setMarketCode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    sput-object p0, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->marketCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static my_setReleaseEnvironment(Z)V
    .locals 3

    .line 568
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.setReleaseEnvironment() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, "https://mgame.sdo.com"

    .line 570
    sput-object p0, Lcom/ghomesdk/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "http://mgame.sdo.com"

    .line 573
    sput-object p0, Lcom/ghomesdk/gameplus/config/Config;->DOMAIN:Ljava/lang/String;

    const-string p0, "http://adv.sdo.com"

    .line 574
    sput-object p0, Lcom/ghomesdk/gameplus/config/Config;->ADVERT_DOMAIN:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static my_setSdkVersion(Ljava/lang/String;)V
    .locals 3

    .line 579
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GamePlus.setSdkVersion() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    sput-object p0, Lcom/ghomesdk/gameplus/config/Config;->SDK_VERSION:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static my_updateAgreement(Landroid/app/Activity;)V
    .locals 1

    .line 601
    sget-object v0, Lcom/ghomesdk/gameplus/config/Assembly;->agreementVersion:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/impl/AgreementUtil;->isAgreementNeedUpdate(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    sget-object v0, Lcom/ghomesdk/gameplus/config/Assembly;->agreementVersion:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/impl/AgreementUtil;->updateAgreement(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static my_upgradeView(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/LoginCallback;)V
    .locals 2

    .line 367
    sget-object p0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    const-string v0, "GamePlus.my_upgradeView()"

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 371
    invoke-static {p1}, Lcom/ghomesdk/gameplus/login/LoginData;->getLoginInfo(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "-10869607"

    .line 374
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, p1, p0, v0}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    const-string p0, "-10869642"

    .line 380
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "\u975e\u6e38\u5ba2\u8d26\u53f7\uff0c\u4e0d\u80fd\u8fdb\u884c\u5347\u7ea7\uff01"

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, p1, p0, v0}, Lcom/ghomesdk/gameplus/callback/LoginCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void

    .line 384
    :cond_3
    new-instance p0, Lcom/ghomesdk/gameplus/login/LoginDialog;

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/login/LoginDialog;-><init>(Landroid/content/Context;IILcom/ghomesdk/gameplus/callback/LoginCallback;)V

    .line 385
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/login/LoginDialog;->show()V

    return-void

    .line 369
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static preInitialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "APPLICATION_PROMOTERID"

    .line 612
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ghomesdk/gameplus/config/Config;->PROMOTERID:Ljava/lang/String;

    .line 613
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->PROMOTERID:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->PROMOTERID:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/ghomesdk/gameplus/dialog/CommonDialog;
    .locals 9

    .line 526
    new-instance v2, Lcom/ghomesdk/gameplus/GamePlus$7;

    invoke-direct {v2}, Lcom/ghomesdk/gameplus/GamePlus$7;-><init>()V

    const-string v3, "\u786e\u5b9a"

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 532
    invoke-static/range {v0 .. v8}, Lcom/ghomesdk/gameplus/dialog/CommonDialog;->createDlg(Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;Ljava/lang/String;Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;ZZ)Lcom/ghomesdk/gameplus/dialog/CommonDialog;

    move-result-object p0

    return-object p0
.end method
