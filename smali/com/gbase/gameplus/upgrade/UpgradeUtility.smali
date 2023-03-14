.class public Lcom/gbase/gameplus/upgrade/UpgradeUtility;
.super Lcom/gbase/gameplus/upgrade/UtilityBase;
.source "UpgradeUtility.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static anyscHttpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private static appContext:Landroid/content/Context;

.field private static downloadFlag:Z

.field private static g_bDownloadFlag:Z

.field private static g_bFindVailedUrl:Z

.field private static g_lEndBytes:J

.field private static g_lStartBytes:J

.field private static g_nResumeFile:I

.field private static httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private static httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

.field private static httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

.field private static isNeedReDownload:Z

.field private static m_Files:[Ljava/io/File;

.field private static m_OkHttpClient:Lgbase_okhttp3/OkHttpClient;

.field private static m_apkFilePath:Ljava/lang/String;

.field private static m_appChannelID:Ljava/lang/String;

.field private static m_appID:Ljava/lang/String;

.field private static m_appName:Ljava/lang/String;

.field private static m_areaID:Ljava/lang/String;

.field private static m_bUsePramaChannelId:Z

.field private static m_bUsePramaGameId:Z

.field private static m_bUsePramaSubmitUrl:Z

.field private static m_bUsePramaVerCtrlUrl:Z

.field public static m_dataSubmitUrl:Ljava/lang/String;

.field private static m_downloadUrl:Ljava/lang/String;

.field private static m_lCurrentDownloadSize:J

.field private static m_listVerCtrlUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_mustVersionName:Ljava/lang/String;

.field private static m_networkStates:I

.field protected static m_openVersionName:Ljava/lang/String;

.field private static m_osVersion:Ljava/lang/Integer;

.field private static m_pacBaseUrl:Ljava/lang/String;

.field private static m_pacBaseUrlBak:Ljava/lang/String;

.field private static m_packageName:Ljava/lang/String;

.field private static m_pakMd5:Ljava/lang/String;

.field protected static m_pakSize:J

.field private static m_pakUrl:Ljava/lang/String;

.field private static m_promoterID:Ljava/lang/String;

.field private static m_strFilePath:Ljava/lang/String;

.field private static m_strLocalAPKPath:Ljava/lang/String;

.field private static m_testVersionName:Ljava/lang/String;

.field private static m_verCtrlUrlUse:Ljava/lang/String;

.field private static m_versionCode:Ljava/lang/Integer;

.field private static m_versionName:Ljava/lang/String;

.field private static myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

.field private static myLog:Lorg/apache/log4j/Logger;

.field private static myNetworkStates:I

.field private static nUpdateModel:I

.field private static osVersion:Ljava/lang/Integer;

.field private static resumeFile:I

.field private static sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

.field private static totalBytes:J

.field private static updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    const-string v0, "default"

    .line 97
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgrade/UpgradeData;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const/4 v0, 0x0

    .line 105
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myLog:Lorg/apache/log4j/Logger;

    const/4 v1, 0x0

    .line 108
    sput v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_networkStates:I

    .line 111
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 112
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 113
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    .line 114
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->anyscHttpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    const-wide/16 v2, 0x0

    .line 117
    sput-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lStartBytes:J

    .line 118
    sput-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lEndBytes:J

    .line 119
    sput-boolean v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_bDownloadFlag:Z

    .line 120
    sput-boolean v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_bFindVailedUrl:Z

    .line 125
    sput v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myNetworkStates:I

    .line 126
    sput-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->totalBytes:J

    .line 128
    sput-boolean v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->downloadFlag:Z

    .line 132
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_Files:[Ljava/io/File;

    .line 1268
    sput-boolean v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->isNeedReDownload:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/gbase/gameplus/upgrade/UtilityBase;-><init>()V

    const/4 v0, 0x0

    .line 149
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    .line 150
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    .line 151
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    .line 152
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    const/4 v0, 0x0

    .line 153
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    .line 154
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    .line 155
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    .line 156
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    return-void
.end method

.method private static AutoUpdateOp(Landroid/content/Context;I)V
    .locals 2

    .line 2868
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_0

    .line 2869
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2871
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_1

    .line 2872
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2876
    :cond_1
    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-direct {v0, p0, v1, p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;-><init>(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeUtility;I)V

    .line 2877
    invoke-static {p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgradeAsync(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void
.end method

.method private static AutoUpdateOp(Landroid/content/Context;II)V
    .locals 2

    .line 2883
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_0

    .line 2884
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2886
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_1

    .line 2887
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2891
    :cond_1
    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-direct {v0, p0, v1, p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;-><init>(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeUtility;I)V

    .line 2892
    invoke-static {p0, v0, p2}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgradeAsync(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeCallback;I)V

    return-void
.end method

.method private static AutoUpdateOp(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2

    .line 2911
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_0

    .line 2912
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2914
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_1

    .line 2915
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2918
    :cond_1
    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-direct {v0, p0, v1, p1}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;-><init>(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeUtility;I)V

    const/16 p1, 0xfa0

    .line 2919
    invoke-static {p0, p1, p3, v0, p2}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgradeAsync(Landroid/content/Context;ILjava/lang/String;Lcom/gbase/gameplus/upgrade/UpgradeCallback;I)V

    return-void
.end method

.method private static AutoUpdateOp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 2897
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_0

    .line 2898
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2900
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_1

    .line 2901
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 2905
    :cond_1
    new-instance v0, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-direct {v0, p0, v1, p2}, Lcom/gbase/gameplus/upgrade/AutoUpgradeCallback;-><init>(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeUtility;I)V

    const/16 p2, 0xbb8

    .line 2906
    invoke-static {p0, p2, p1, v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgradeAsync(Landroid/content/Context;ILjava/lang/String;Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void
.end method

.method private static CheckDownloadUrl(Ljava/lang/String;)I
    .locals 4

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pacBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_downloadUrl:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getClientInstance()Lgbase_okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    .line 357
    invoke-virtual {v0, v2, v3, v1}, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 358
    invoke-virtual {v0, v2, v3, v1}, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 359
    invoke-virtual {v0, v2, v3, v1}, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object v0

    .line 361
    new-instance v1, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v1}, Lgbase_okhttp3/Request$Builder;-><init>()V

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_downloadUrl:Ljava/lang/String;

    .line 362
    invoke-virtual {v1, v2}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lgbase_okhttp3/Request$Builder;->head()Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v1

    .line 366
    invoke-virtual {v0, v1}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility$2;

    invoke-direct {v1, p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lgbase_okhttp3/Call;->enqueue(Lgbase_okhttp3/Callback;)V

    const-wide/16 v0, 0x4b0

    .line 381
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckDownloadUrl Exception:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static CheckIsNeedDeleteAPK()V
    .locals 4

    .line 1069
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getStoreageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_strFilePath:Ljava/lang/String;

    .line 1070
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strFilePath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_strFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1071
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_strFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_Files:[Ljava/io/File;

    .line 1074
    :try_start_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_Files:[Ljava/io/File;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_Files:[Ljava/io/File;

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1084
    :cond_0
    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$3;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$3;-><init>()V

    .line 1113
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$3;->start()V

    return-void

    .line 1076
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "\u6b64\u76ee\u5f55\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1080
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method private static CheckVerCtrlUrlAsync(I)I
    .locals 11

    .line 274
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 279
    sput-boolean v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_bFindVailedUrl:Z

    .line 280
    div-int/2addr p0, v0

    const/16 v2, 0x320

    if-ge p0, v2, :cond_1

    const/16 p0, 0x320

    :cond_1
    const/16 v2, 0xbb8

    if-le p0, v2, :cond_2

    const/16 p0, 0xbb8

    .line 289
    :cond_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 291
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 294
    sget-boolean v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_bFindVailedUrl:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    return v1

    :cond_3
    if-lt v2, v0, :cond_4

    sub-int v3, v2, v0

    goto :goto_1

    :cond_4
    move v3, v2

    .line 303
    :goto_1
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getClientInstance()Lgbase_okhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    int-to-long v7, p0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 306
    invoke-virtual {v6, v7, v8, v9}, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 307
    invoke-virtual {v6, v7, v8, v9}, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 308
    invoke-virtual {v6, v7, v8, v9}, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 309
    invoke-virtual {v6}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object v6

    .line 310
    new-instance v7, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v7}, Lgbase_okhttp3/Request$Builder;-><init>()V

    .line 311
    invoke-virtual {v7, v5}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v7

    .line 312
    invoke-virtual {v7}, Lgbase_okhttp3/Request$Builder;->head()Lgbase_okhttp3/Request$Builder;

    move-result-object v7

    .line 313
    invoke-virtual {v7}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v7

    .line 314
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "now checking url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v6, v7}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;

    invoke-direct {v4, v5}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lgbase_okhttp3/Call;->enqueue(Lgbase_okhttp3/Callback;)V

    add-int/lit16 v3, p0, 0xc8

    int-to-long v3, v3

    .line 338
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 341
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckVerCtrlUrlAsync:  ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return v1
.end method

.method private static CheckVerCtrlUrlSync(I)I
    .locals 11

    const-string v0, "Disable: "

    .line 211
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x2

    return p0

    .line 217
    :cond_0
    div-int/2addr p0, v1

    const/16 v2, 0x3e8

    if-ge p0, v2, :cond_1

    const/16 p0, 0x3e8

    :cond_1
    const/16 v2, 0xbb8

    if-le p0, v2, :cond_2

    const/16 p0, 0xbb8

    .line 226
    :cond_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 227
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move v3, v2

    :goto_0
    add-int v4, v2, v1

    if-ge v3, v4, :cond_5

    if-lt v3, v1, :cond_3

    sub-int v4, v3, v1

    goto :goto_1

    :cond_3
    move v4, v3

    .line 236
    :goto_1
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 237
    sput-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    .line 240
    :try_start_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getClientInstance()Lgbase_okhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    int-to-long v7, p0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 241
    invoke-virtual {v6, v7, v8, v9}, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 242
    invoke-virtual {v6, v7, v8, v9}, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 243
    invoke-virtual {v6, v7, v8, v9}, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 244
    invoke-virtual {v6}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object v6

    .line 245
    new-instance v7, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v7}, Lgbase_okhttp3/Request$Builder;-><init>()V

    .line 246
    invoke-virtual {v7, v5}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v7

    .line 247
    invoke-virtual {v7}, Lgbase_okhttp3/Request$Builder;->head()Lgbase_okhttp3/Request$Builder;

    move-result-object v7

    .line 248
    invoke-virtual {v7}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v7

    .line 250
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "now checking url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v6, v7}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lgbase_okhttp3/Call;->execute()Lgbase_okhttp3/Response;

    move-result-object v4

    .line 252
    invoke-virtual {v4}, Lgbase_okhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 254
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    .line 259
    :cond_4
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 264
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private static DeleteAPKFile(Ljava/lang/String;)V
    .locals 3

    .line 1120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1123
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "\u5220\u9664\u5355\u4e2a\u6587\u4ef6"

    if-eqz v0, :cond_0

    .line 1124
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u6210\u529f\uff01"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1126
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5931\u8d25\uff01"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1129
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664\u5355\u4e2a\u6587\u4ef6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e0d\u5b58\u5728\uff01"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected static GApkUpdate(Landroid/content/Context;I)V
    .locals 1

    .line 1135
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 1137
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->isNetworkAvailable(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myNetworkStates:I

    .line 1139
    sget p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myNetworkStates:I

    if-nez p0, :cond_0

    .line 1141
    sget-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->showNetworkDlg(Landroid/content/Context;I)V

    goto :goto_0

    .line 1144
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->AutoUpdateOp(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method protected static GApkUpdate(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1151
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 1153
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->isNetworkAvailable(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myNetworkStates:I

    .line 1154
    sget p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myNetworkStates:I

    if-nez p0, :cond_0

    .line 1156
    sget-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->showNetworkDlg(Landroid/content/Context;I)V

    goto :goto_0

    .line 1159
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0, p0, p2, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->AutoUpdateOp(Landroid/content/Context;IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static InitUpdateConfig(Ljava/lang/String;)V
    .locals 6

    const-string v0, "http_backup_ver_ctrl"

    const-string v1, "http_ver_ctrl"

    const-string v2, "https_backup_ver_ctrl"

    const-string v3, "https_ver_ctrl"

    const-string v4, "ver_ctrl_urls"

    .line 2180
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2183
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 2186
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2187
    instance-of v4, p0, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 2189
    check-cast p0, Lorg/json/JSONObject;

    .line 2190
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2192
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2193
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2197
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2198
    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2202
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2203
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2207
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2208
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2213
    :cond_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string v0, "get the wrong object type"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 2218
    :cond_4
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string v0, "get jsonVerCtrl failed "

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2228
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2223
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2224
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static InitUpgrade(Landroid/content/Context;I)I
    .locals 0

    .line 408
    invoke-static {p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgradeSync(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static InitUpgrade(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    .line 507
    invoke-static {p0, p1, p2}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->InitUpgradeSync(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static InitUpgradeAsync(Landroid/content/Context;ILjava/lang/String;Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 815
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "V2_InitUpgradeAsync : GAPK_UPDATE_SDK_VERSION:[3.7.1.2]"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 818
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->Init(Landroid/content/Context;)Z

    const/4 v0, 0x2

    .line 822
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v0, 0x0

    .line 823
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_nResumeFile:I

    .line 824
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 825
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getAndroidVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    .line 826
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 829
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 831
    sput-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    :cond_0
    const/4 p0, -0x1

    .line 836
    :try_start_0
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 837
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    .line 838
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sput-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    .line 839
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    const-string p1, "ApplicationInfo not found"

    .line 850
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Error:[ApplicationInfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 856
    :cond_1
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    .line 857
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 859
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    if-eqz v0, :cond_2

    .line 861
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "not need read Metainfo"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "Metainfo not found"

    .line 865
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Error:[Metainfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 871
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    if-nez v0, :cond_4

    .line 873
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    .line 875
    :cond_4
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    if-nez v0, :cond_5

    .line 877
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    .line 879
    :cond_5
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    if-nez v0, :cond_6

    .line 881
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "GBASE_DATA_SUBMIT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    .line 883
    :cond_6
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    if-nez v0, :cond_9

    .line 885
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 889
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 891
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VERCTRL_URL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 893
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 896
    :cond_7
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find Url in Local XML.  Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 901
    :cond_8
    :goto_2
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    .line 903
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string p2, "CheckVerCtrlUrl Result: [Empty Url List]"

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const-string p1, "Empty Url List"

    .line 904
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 909
    :cond_9
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->CheckVerCtrlUrlAsync(I)I

    const/4 p0, 0x0

    .line 910
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    .line 912
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKCurrentVersion(Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrAppID(Ljava/lang/String;)V

    .line 914
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrChannelID(Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setPackageName(Ljava/lang/String;)V

    .line 917
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AsyncFunc : appID=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nappName=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nappChannelID=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nversionName=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nverCtrlUrlUse=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\ndataSubmitUrl=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\napiLevel=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 924
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p2, "into CheckDeleteAPK API"

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 925
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->CheckIsNeedDeleteAPK()V

    .line 927
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p2, 0xb

    if-lt p0, p2, :cond_a

    .line 928
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p2, "Disable setThreadPolicy"

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 929
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 930
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 931
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 934
    :cond_a
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string p2, "01"

    const-string v0, "12"

    const-string v1, "00"

    invoke-virtual {p0, v0, p2, v1, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-static {p1, p3}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoAsync(ILcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void

    :catch_0
    move-exception p1

    .line 843
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitUpgradeAsync Error:[PackageInfo NameNotFoundException,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const-string p1, "PackageInfo NameNotFoundException"

    .line 844
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method

.method public static InitUpgradeAsync(Landroid/content/Context;ILjava/lang/String;Lcom/gbase/gameplus/upgrade/UpgradeCallback;I)V
    .locals 5

    .line 941
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "V2_InitUpgradeAsync : GAPK_UPDATE_SDK_VERSION:[3.7.1.2]"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 944
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->Init(Landroid/content/Context;)Z

    const/4 v0, 0x2

    .line 948
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v0, 0x0

    .line 949
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_nResumeFile:I

    .line 950
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 951
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getAndroidVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    .line 952
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 955
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 957
    sput-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    :cond_0
    const/4 p0, -0x1

    .line 962
    :try_start_0
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 963
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    .line 964
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sput-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    .line 965
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    const-string p1, "ApplicationInfo not found"

    .line 976
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Error:[ApplicationInfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 982
    :cond_1
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    .line 983
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 985
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    if-eqz v0, :cond_2

    .line 987
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "not need read Metainfo"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "Metainfo not found"

    .line 991
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 992
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Error:[Metainfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 997
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    if-nez v0, :cond_4

    .line 999
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    .line 1001
    :cond_4
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    if-nez v0, :cond_5

    .line 1003
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    .line 1005
    :cond_5
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    if-nez v0, :cond_6

    .line 1007
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "GBASE_DATA_SUBMIT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    .line 1009
    :cond_6
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    if-nez v0, :cond_9

    .line 1011
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1015
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 1017
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VERCTRL_URL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1019
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 1022
    :cond_7
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find Url in Local XML.  Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    :cond_8
    :goto_2
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    .line 1029
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string p2, "CheckVerCtrlUrl Result: [Empty Url List]"

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const-string p1, "Empty Url List"

    .line 1030
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void

    .line 1035
    :cond_9
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->CheckVerCtrlUrlAsync(I)I

    const/4 p0, 0x0

    .line 1036
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    .line 1038
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKCurrentVersion(Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrAppID(Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrChannelID(Ljava/lang/String;)V

    .line 1041
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setPackageName(Ljava/lang/String;)V

    .line 1043
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AsyncFunc : appID=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nappName=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nappChannelID=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nversionName=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nverCtrlUrlUse=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\ndataSubmitUrl=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\napiLevel=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nareaID=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1051
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p2, "into CheckDeleteAPK API"

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1052
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->CheckIsNeedDeleteAPK()V

    .line 1054
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p2, 0xb

    if-lt p0, p2, :cond_a

    .line 1055
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p2, "Disable setThreadPolicy"

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1056
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 1057
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 1058
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1061
    :cond_a
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string p2, "01"

    const-string v0, "12"

    const-string v1, "00"

    invoke-virtual {p0, v0, p2, v1, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-static {p1, p3, p4}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoAsync(ILcom/gbase/gameplus/upgrade/UpgradeCallback;I)V

    return-void

    :catch_0
    move-exception p1

    .line 969
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InitUpgradeAsync Error:[PackageInfo NameNotFoundException,"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const-string p1, "PackageInfo NameNotFoundException"

    .line 970
    invoke-interface {p3, p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method

.method public static InitUpgradeAsync(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 643
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "V1_InitUpgradeAsync : GAPKUPDATE_VERSION: Upgrade Version Info:[3.7.1.2]"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 646
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->Init(Landroid/content/Context;)Z

    const/4 v0, 0x0

    .line 648
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->resumeFile:I

    const/4 v1, 0x1

    .line 649
    sput v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    .line 650
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 651
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getAndroidVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    .line 652
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    const/4 p0, 0x6

    .line 658
    :try_start_0
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 660
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    .line 661
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    .line 663
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 665
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKCurrentVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, "ApplicationInfo not found"

    .line 673
    invoke-interface {p1, p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Errot:[ApplicationInfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 678
    :cond_0
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    .line 680
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    const-string v0, "Metainfo not found"

    .line 681
    invoke-interface {p1, p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 682
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Error:[Metainfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 686
    :cond_1
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_CHANNEL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    .line 687
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_KEY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    .line 688
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "APPLICATION_PROMOTERID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 691
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 694
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    .line 697
    :goto_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrAppID(Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrChannelID(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setPackageName(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitUpgradeAsync : appID=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nappName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nappChannelID=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nversionCode=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nversionName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nPromoterID=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\napiLevel=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 709
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xb

    if-lt p0, v0, :cond_3

    .line 710
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string v0, "Disable setThreadPolicy"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 711
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 712
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 713
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 716
    :cond_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string v0, "01"

    const-string v1, "12"

    const-string v2, "00"

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoAsync(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    return-void

    :catch_0
    move-exception v0

    .line 667
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitUpgradeAsync Error:[PackageInfo NameNotFoundException,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const-string v0, "PackageInfo NameNotFoundException"

    .line 668
    invoke-interface {p1, p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method

.method public static InitUpgradeAsync(Landroid/content/Context;Lcom/gbase/gameplus/upgrade/UpgradeCallback;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 726
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "V1_InitUpgradeAsync : GAPK_UPDATE_VERSION: update Version Info:[3.7.1.2]"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 729
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->Init(Landroid/content/Context;)Z

    const/4 v0, 0x0

    .line 731
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->resumeFile:I

    const/4 v1, 0x1

    .line 732
    sput v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    .line 733
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 734
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getAndroidVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    .line 735
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    const/4 p0, 0x6

    .line 741
    :try_start_0
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 743
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    .line 744
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    .line 746
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 748
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKCurrentVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string p2, "ApplicationInfo not found"

    .line 756
    invoke-interface {p1, p0, p2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Errot:[ApplicationInfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 761
    :cond_0
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    .line 763
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    const-string p2, "Metainfo not found"

    .line 764
    invoke-interface {p1, p0, p2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    .line 765
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p1, "InitUpgradeAsync Error:[Metainfo not found]"

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void

    .line 769
    :cond_1
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_CHANNEL"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    .line 770
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_KEY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    .line 771
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "APPLICATION_PROMOTERID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 774
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 777
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    .line 780
    :goto_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrAppID(Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrChannelID(Ljava/lang/String;)V

    .line 782
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setPackageName(Ljava/lang/String;)V

    .line 784
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitUpgradeAsync : appID=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nappName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nappChannelID=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nversionCode=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nversionName=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\nPromoterID=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\napiLevel=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 792
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xb

    if-lt p0, v0, :cond_3

    .line 793
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string v0, "Disable setThreadPolicy"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 794
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 795
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 796
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 799
    :cond_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string v0, "01"

    const-string v1, "12"

    const-string v2, "00"

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-static {p1, p2}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoAsync(Lcom/gbase/gameplus/upgrade/UpgradeCallback;I)V

    return-void

    :catch_0
    move-exception p2

    .line 750
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitUpgradeAsync Error:[PackageInfo NameNotFoundException,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const-string p2, "PackageInfo NameNotFoundException"

    .line 751
    invoke-interface {p1, p0, p2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onUpgradeInfoResult(ILjava/lang/String;)V

    return-void
.end method

.method private static InitUpgradeSync(Landroid/content/Context;I)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 414
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->Init(Landroid/content/Context;)Z

    const/4 v0, 0x1

    .line 417
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v1, 0x0

    .line 422
    sput v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->resumeFile:I

    .line 423
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 424
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getAndroidVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    .line 425
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    const/4 p0, 0x6

    .line 431
    :try_start_0
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 434
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    .line 435
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    .line 437
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 438
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 441
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v2

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKCurrentVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 449
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string v0, "InitUpgradeSync Errot:[ApplicationInfo not found]"

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return p0

    .line 454
    :cond_0
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    .line 456
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 457
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string v0, "InitUpgradeSync Error:[Metainfo not found]"

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return p0

    .line 461
    :cond_1
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "APPLICATION_CHANNEL"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    .line 462
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "APPLICATION_KEY"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    .line 463
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_PROMOTERID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 466
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 469
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    .line 472
    :goto_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrAppID(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrChannelID(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setPackageName(Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncFunc : appID=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nappName=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nappChannelID=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nversionCode=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nversionName=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nPromoterID=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\napiLevel=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 484
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->osVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0xb

    if-lt p0, v1, :cond_3

    .line 485
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string v1, "Disable setThreadPolicy"

    invoke-virtual {p0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 486
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 487
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 488
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 491
    :cond_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string v1, "01"

    const-string v2, "12"

    const-string v3, "00"

    invoke-virtual {p0, v2, v1, v3, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getUpdateInfoSync(I)I

    move-result p0

    if-eq p0, v0, :cond_4

    const/4 p1, 0x2

    if-ne p0, p1, :cond_6

    .line 495
    :cond_4
    sget-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSdcardWriteAuthority(Landroid/content/Context;)Z

    move-result p1

    .line 496
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSDCardInfo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    if-nez p1, :cond_6

    :cond_5
    const/4 p0, 0x7

    :cond_6
    return p0

    :catch_0
    move-exception p1

    .line 443
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitUpgrade Name Not Found Exception:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return p0
.end method

.method private static InitUpgradeSync(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 513
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2_InitUpgradeSync : GAPK_UPDATE_SDK_VERSION:[3.7.1.2],Timeout["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 516
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->Init(Landroid/content/Context;)Z

    const/4 v0, 0x2

    .line 521
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v0, 0x0

    .line 522
    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_nResumeFile:I

    .line 523
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 524
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getAndroidVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    .line 525
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 530
    sput-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    :cond_0
    const/4 p0, -0x1

    .line 536
    :try_start_0
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 537
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 538
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    .line 539
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sput-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    .line 540
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 541
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    .line 552
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string p2, "InitUpgradeSync Error:[ApplicationInfo not found]"

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return p0

    .line 557
    :cond_1
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    .line 558
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 560
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    if-eqz v0, :cond_2

    .line 562
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "not need read Metainfo"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string p2, "InitUpgradeSync Error:[Metainfo not found]"

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return p0

    .line 571
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    if-nez v0, :cond_4

    .line 573
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    .line 575
    :cond_4
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    if-nez v0, :cond_5

    .line 577
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "APPLICATION_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    .line 579
    :cond_5
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    if-nez v0, :cond_6

    .line 581
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "GBASE_DATA_SUBMIT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    .line 583
    :cond_6
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    if-nez v0, :cond_9

    .line 585
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 591
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 593
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VERCTRL_URL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 595
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 598
    :cond_7
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find Url in Local XML.  Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 603
    :cond_8
    :goto_2
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    .line 605
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    const-string p2, "CheckVerCtrlUrl Result: [Empty Url List]"

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return p0

    .line 610
    :cond_9
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->CheckVerCtrlUrlAsync(I)I

    const/4 p0, 0x0

    .line 612
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    .line 613
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKCurrentVersion(Ljava/lang/String;)V

    .line 614
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrAppID(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrChannelID(Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setPackageName(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SyncFunc : appID=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nappName=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nappChannelID=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nversionName=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\nverCtrlUrlUse=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\ndataSubmitUrl=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\napiLevel=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 626
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_osVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p2, 0xb

    if-lt p0, p2, :cond_a

    .line 627
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    const-string p2, "Disable setThreadPolicy"

    invoke-virtual {p0, p2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 628
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 629
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 630
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 633
    :cond_a
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string p2, "01"

    const-string v0, "12"

    const-string v1, "00"

    invoke-virtual {p0, v0, p2, v1, p2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getVerCtrlInfo(I)I

    move-result p0

    return p0

    :catch_0
    move-exception p1

    .line 546
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitUpgradeSync Name Not Found Exception:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return p0
.end method

.method public static SetChannelId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 175
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaChannelId:Z

    .line 176
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    return-void
.end method

.method public static SetDataSubmitUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 181
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaSubmitUrl:Z

    .line 182
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_dataSubmitUrl:Ljava/lang/String;

    return-void
.end method

.method public static SetGameId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 169
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaGameId:Z

    .line 170
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    return-void
.end method

.method public static SetVerCtrlUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 187
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_bUsePramaVerCtrlUrl:Z

    .line 188
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000()J
    .locals 2

    .line 71
    sget-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_lCurrentDownloadSize:J

    return-wide v0
.end method

.method static synthetic access$1002(J)J
    .locals 0

    .line 71
    sput-wide p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_lCurrentDownloadSize:J

    return-wide p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_bFindVailedUrl:Z

    return p0
.end method

.method static synthetic access$1100()Lcom/gbase/gameplus/upgrade/UpgradeCallback;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/gbase/gameplus/upgrade/UpgradeData;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    return-object v0
.end method

.method static synthetic access$1300()J
    .locals 2

    .line 71
    sget-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lStartBytes:J

    return-wide v0
.end method

.method static synthetic access$1302(J)J
    .locals 0

    .line 71
    sput-wide p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lStartBytes:J

    return-wide p0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_bDownloadFlag:Z

    return p0
.end method

.method static synthetic access$1600()J
    .locals 2

    .line 71
    sget-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lEndBytes:J

    return-wide v0
.end method

.method static synthetic access$1602(J)J
    .locals 0

    .line 71
    sput-wide p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lEndBytes:J

    return-wide p0
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 71
    sget v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_nResumeFile:I

    return v0
.end method

.method static synthetic access$1800(Z)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->checkAndInstall(Z)V

    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->isNeedReDownload:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->isNeedReDownload:Z

    return p0
.end method

.method static synthetic access$2000()V
    .locals 0

    .line 71
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startDownloadV2()V

    return-void
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0

    .line 71
    sput-boolean p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->downloadFlag:Z

    return p0
.end method

.method static synthetic access$2200()J
    .locals 2

    .line 71
    sget-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->totalBytes:J

    return-wide v0
.end method

.method static synthetic access$2202(J)J
    .locals 0

    .line 71
    sput-wide p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->totalBytes:J

    return-wide p0
.end method

.method static synthetic access$2300()I
    .locals 1

    .line 71
    sget v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->resumeFile:I

    return v0
.end method

.method static synthetic access$2400()Landroid/content/Context;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/json/JSONObject;)I
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->parseVerCtrl(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pacBaseUrlBak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/io/File;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_Files:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_strLocalAPKPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_strLocalAPKPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->DeleteAPKFile(Ljava/lang/String;)V

    return-void
.end method

.method private static checkAndInstall(Z)V
    .locals 2

    .line 2678
    sget v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2679
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->checkAndInstallV1(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2681
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->checkAndInstallV2(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkAndInstallV1(Z)V
    .locals 8

    .line 2731
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getStoreageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v2}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getLastVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2738
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->install(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2741
    :cond_0
    :try_start_0
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    invoke-interface {p0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onMD5CheckStart()V

    .line 2743
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->fileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2745
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getMd5String()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2748
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const/4 v1, 0x1

    const-string v2, "check files MD5 succeed"

    invoke-interface {p0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onMD5CheckFinish(ZLjava/lang/String;)V

    .line 2750
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->install(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 2753
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    const-string v2, "12"

    const-string v3, "99"

    const-string v4, "04"

    const-string v5, "01"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MD5_OK["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    .line 2754
    invoke-virtual {v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getMd5String()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "],MD5_NOK["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2753
    invoke-virtual/range {v1 .. v6}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const/4 v1, 0x0

    const-string v2, "check files MD5 failed"

    invoke-interface {p0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onMD5CheckFinish(ZLjava/lang/String;)V

    .line 2761
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2762
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2765
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const-string v0, "check files MD5 failed , delete files failed"

    invoke-interface {p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2771
    :catch_0
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const-string v0, "check files MD5 read file failed"

    invoke-interface {p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static checkAndInstallV2(Z)V
    .locals 8

    .line 2686
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getStoreageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2691
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->install(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 2694
    :cond_0
    :try_start_0
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    invoke-interface {p0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onMD5CheckStart()V

    .line 2696
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->fileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2698
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakMd5:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2701
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const/4 v1, 0x1

    const-string v2, "check files MD5 succeed"

    invoke-interface {p0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onMD5CheckFinish(ZLjava/lang/String;)V

    .line 2703
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->install(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 2707
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    const-string v2, "12"

    const-string v3, "99"

    const-string v4, "04"

    const-string v5, "01"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MD5_OK["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakMd5:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "],MD5_NOK["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const/4 v1, 0x0

    const-string v2, "check files MD5 failed"

    invoke-interface {p0, v1, v2}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onMD5CheckFinish(ZLjava/lang/String;)V

    .line 2715
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2719
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const-string v0, "check files MD5 failed , delete files failed"

    invoke-interface {p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2725
    :catch_0
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const-string v0, "check files MD5 read file failed"

    invoke-interface {p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static checkNetworkStatus(Landroid/content/Context;Z)I
    .locals 1

    .line 1173
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->isNetworkAvailable(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_networkStates:I

    .line 1174
    sget v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_networkStates:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1176
    invoke-static {p0, v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->showNetworkDlg(Landroid/content/Context;I)V

    .line 1179
    :cond_0
    sget p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_networkStates:I

    return p0
.end method

.method public static checkWriteSdcard()Z
    .locals 1

    .line 2674
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSdcardWriteAuthority(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "\\."

    .line 2086
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2087
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2088
    array-length v1, p0

    .line 2089
    array-length v2, p1

    if-eqz v1, :cond_9

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    .line 2101
    aget-object v4, p0, v2

    .line 2102
    aget-object v5, p1, v2

    .line 2103
    invoke-static {v4}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->isDigit(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v5}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->isDigit(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2105
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2106
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    if-le v4, v5, :cond_4

    return v0

    :cond_4
    if-ge v4, v5, :cond_8

    return v3

    .line 2122
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 2126
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    return v0

    .line 2130
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_8

    return v3

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    return v0
.end method

.method public static downLoadFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2141
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0xbb8

    .line 2144
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)"

    .line 2146
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 2150
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 2152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2154
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2156
    :cond_0
    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2157
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2158
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2160
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p0, :cond_1

    .line 2163
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method private static exit(I)V
    .locals 0

    return-void
.end method

.method public static getAppChannelID()Ljava/lang/String;
    .locals 1

    .line 2799
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .line 2803
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .line 2787
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    return-object v0
.end method

.method private static getClientInstance()Lgbase_okhttp3/OkHttpClient;
    .locals 2

    .line 198
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_OkHttpClient:Lgbase_okhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 199
    const-class v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_OkHttpClient:Lgbase_okhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Lgbase_okhttp3/OkHttpClient;

    invoke-direct {v1}, Lgbase_okhttp3/OkHttpClient;-><init>()V

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_OkHttpClient:Lgbase_okhttp3/OkHttpClient;

    .line 203
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 205
    :cond_1
    :goto_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_OkHttpClient:Lgbase_okhttp3/OkHttpClient;

    return-object v0
.end method

.method public static getInstance()Lcom/gbase/gameplus/upgrade/UpgradeUtility;
    .locals 1

    .line 140
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    .line 144
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    return-object v0
.end method

.method public static getLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .line 2778
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myLog:Lorg/apache/log4j/Logger;

    if-nez v0, :cond_0

    .line 2780
    const-class v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myLog:Lorg/apache/log4j/Logger;

    .line 2782
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myLog:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method private static getMustVersion()Ljava/lang/String;
    .locals 2

    .line 2061
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getStoreageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sgbaseUpdateTest.flag"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2063
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    goto :goto_0

    .line 2070
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static getUpdateInfoAsync(ILcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 6

    .line 1789
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1792
    div-int/2addr p0, v0

    :cond_0
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_1

    const/16 p0, 0x3e8

    :cond_1
    const/16 v0, 0xbb8

    if-le p0, v0, :cond_2

    const/16 p0, 0xbb8

    .line 1802
    :cond_2
    sput-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    .line 1803
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1804
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    .line 1805
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getClientInstance()Lgbase_okhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v1

    int-to-long v2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1806
    invoke-virtual {v1, v2, v3, p0}, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1807
    invoke-virtual {p0, v2, v3, v1}, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1808
    invoke-virtual {p0, v2, v3, v1}, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 1809
    invoke-virtual {p0}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object p0

    .line 1810
    new-instance v1, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v1}, Lgbase_okhttp3/Request$Builder;-><init>()V

    .line 1811
    invoke-virtual {v1, v0}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    .line 1812
    invoke-virtual {v1}, Lgbase_okhttp3/Request$Builder;->get()Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    .line 1813
    invoke-virtual {v1}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v1

    .line 1814
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v2

    const-string v3, "02"

    const-string v4, "12"

    const-string v5, "00"

    invoke-virtual {v2, v4, v3, v5, v3}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateInfoAsync, url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1816
    invoke-virtual {p0, v1}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object p0

    new-instance v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;

    invoke-direct {v1, v0, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$8;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {p0, v1}, Lgbase_okhttp3/Call;->enqueue(Lgbase_okhttp3/Callback;)V

    return-void
.end method

.method private static getUpdateInfoAsync(ILcom/gbase/gameplus/upgrade/UpgradeCallback;I)V
    .locals 5

    .line 1915
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 1918
    div-int/2addr p0, p2

    :cond_0
    const/16 p2, 0x3e8

    if-ge p0, p2, :cond_1

    const/16 p0, 0x3e8

    :cond_1
    const/16 p2, 0xbb8

    if-le p0, p2, :cond_2

    const/16 p0, 0xbb8

    .line 1928
    :cond_2
    sput-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    .line 1929
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1930
    sget-object p2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    .line 1931
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getClientInstance()Lgbase_okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1932
    invoke-virtual {v0, v1, v2, p0}, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1933
    invoke-virtual {p0, v1, v2, v0}, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1934
    invoke-virtual {p0, v1, v2, v0}, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 1935
    invoke-virtual {p0}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object p0

    .line 1936
    new-instance v0, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Request$Builder;-><init>()V

    .line 1937
    invoke-virtual {v0, p2}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    .line 1938
    invoke-virtual {v0}, Lgbase_okhttp3/Request$Builder;->get()Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    .line 1939
    invoke-virtual {v0}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v0

    .line 1940
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    const-string v2, "02"

    const-string v3, "12"

    const-string v4, "00"

    invoke-virtual {v1, v3, v2, v4, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpdateInfoAsync, url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1942
    invoke-virtual {p0, v0}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;

    invoke-direct {v0, p2, p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$9;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-interface {p0, v0}, Lgbase_okhttp3/Call;->enqueue(Lgbase_okhttp3/Callback;)V

    return-void
.end method

.method private static getUpdateInfoAsync(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 5

    .line 1541
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    .line 1542
    new-instance p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;

    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;-><init>()V

    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1544
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    const-string v3, "gameid"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    const-string v3, "versionName"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "versionCode"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    const-string v3, "channel"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1550
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "promoter_id"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    :cond_0
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1555
    invoke-static {v1}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1556
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uniqueId"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 1558
    :goto_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "platform"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->addBodyParameter(Ljava/util/List;)V

    .line 1561
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_2

    .line 1562
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1565
    :cond_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpdateInfoASync : url:[http://mobileupdate.sdo.com/update/query],gameid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],versionName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],versionCode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "],channel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],uniqueId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1572
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "02"

    const-string v2, "12"

    const-string v3, "00"

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->POST:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    new-instance v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility$6;

    invoke-direct {v2}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$6;-><init>()V

    const-string v3, "http://mobileupdate.sdo.com/update/query"

    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->send(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->anyscHttpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    return-void
.end method

.method private static getUpdateInfoAsync(Lcom/gbase/gameplus/upgrade/UpgradeCallback;I)V
    .locals 4

    .line 1664
    sget-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->sm_update:Lcom/gbase/gameplus/upgrade/UpgradeUtility;

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    .line 1665
    new-instance p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;

    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;-><init>()V

    .line 1666
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1667
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    const-string v2, "gameid"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    const-string v2, "versionName"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1669
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1670
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    const-string v2, "channel"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1671
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1673
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "promoter_id"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1678
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uniqueId"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 1681
    :goto_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "platform"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1682
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->addBodyParameter(Ljava/util/List;)V

    .line 1684
    sget-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez p1, :cond_2

    .line 1685
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {p1}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1688
    :cond_2
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoASync : url:[http://mobileupdate.sdo.com/update/query],gameid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],versionName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],versionCode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "],channel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],uniqueId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1695
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p1

    const-string v0, "02"

    const-string v1, "12"

    const-string v2, "00"

    invoke-virtual {p1, v1, v0, v2, v0}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    sget-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->POST:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    new-instance v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility$7;

    invoke-direct {v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$7;-><init>()V

    const-string v2, "http://mobileupdate.sdo.com/update/query"

    invoke-virtual {p1, v0, v2, p0, v1}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->send(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->anyscHttpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    return-void
.end method

.method private static getUpdateInfoSync(I)I
    .locals 17

    const-string v0, "00"

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "]"

    if-gtz p0, :cond_0

    const/16 v4, 0x7d0

    goto :goto_0

    :cond_0
    move/from16 v4, p0

    :goto_0
    const/16 v5, 0x2710

    if-le v4, v5, :cond_1

    const/16 v4, 0x2710

    .line 2505
    :cond_1
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2506
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    invoke-interface {v6, v8, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2507
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "http.connection.timeout"

    invoke-interface {v6, v7, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2508
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "http.connection-manager.timeout"

    invoke-interface {v4, v9, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2510
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "http://mobileupdate.sdo.com/update/query"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2513
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2514
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "gameid"

    sget-object v12, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appID:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2515
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "versionName"

    sget-object v12, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2516
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "versionCode"

    sget-object v12, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2517
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "channel"

    sget-object v12, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2518
    sget-object v10, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 2520
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "promoter_id"

    sget-object v12, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_promoterID:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2522
    :cond_2
    sget-object v10, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    if-eqz v10, :cond_3

    .line 2524
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "uniqueId"

    sget-object v12, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2526
    :cond_3
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "platform"

    const-string v12, "0"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2528
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v10, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2530
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v0, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 2534
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v8, 0xc8

    const/4 v10, 0x3

    if-ne v5, v8, :cond_7

    .line 2535
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 2537
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2539
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2540
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v8, "rcode"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setRetCode(Ljava/lang/Integer;)V

    .line 2541
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v8, "rdesc"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setRetDesc(Ljava/lang/String;)V

    .line 2543
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    sget-object v8, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v8}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrHttpResCode(Ljava/lang/String;)V

    .line 2545
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v4}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "03"

    if-nez v4, :cond_6

    :try_start_1
    const-string v4, "data"

    .line 2547
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2548
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v10, "needUpdate"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setNeedUpdate(Ljava/lang/Integer;)V

    .line 2549
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v10, "isForce"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setForceUpdate(Ljava/lang/Integer;)V

    .line 2550
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v10, "latestVersion"

    .line 2551
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2550
    invoke-virtual {v5, v10}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setLastVersion(Ljava/lang/String;)V

    .line 2552
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v10, "downloadUrl"

    .line 2553
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setDownloadUrl(Ljava/lang/String;)V

    .line 2554
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v10, "md5"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setMd5String(Ljava/lang/String;)V

    .line 2556
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v5

    sget-object v10, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v10}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getLastVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    .line 2558
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v5}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getNeedUpdate()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_4

    .line 2561
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v0, v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v0, v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setFileSize(J)V

    .line 2564
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "getUpdateInfoSync : return 0:[No Update]"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    .line 2567
    :cond_4
    sget-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/gbase/gameplus/upgrade/UpgradeData;->setFileSize(J)V

    .line 2569
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    const-string v5, "04"

    invoke-virtual {v4, v1, v2, v0, v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getForceUpdate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 2572
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "getUpdateInfoSync : return 2:[Not Force Update]"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2573
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Force Update: download url:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v2}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x2

    return v0

    .line 2576
    :cond_5
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "getUpdateInfoSync : return 1:[Force Update]"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2577
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force Update: download url:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v2}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    return v9

    .line 2583
    :cond_6
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v4, "99"

    invoke-virtual {v0, v1, v4, v2, v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoSync : return 3:[Upgrade Interface return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    .line 2586
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getRetCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2585
    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return v10

    .line 2591
    :cond_7
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v11

    const-string v12, "12"

    const-string v13, "99"

    const-string v14, "02"

    const-string v15, "01"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpStatusCodeError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v11 .. v16}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoSync : return 3:[Http Status Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2593
    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return v10

    :catch_0
    move-exception v0

    .line 2605
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v5, "12"

    const-string v6, "99"

    const-string v7, "02"

    const-string v8, "01"

    invoke-virtual/range {v4 .. v9}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateInfoSync : return 5:[Error Msg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 v0, 0x5

    return v0

    :catch_1
    move-exception v0

    .line 2599
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v5, "12"

    const-string v6, "99"

    const-string v7, "02"

    const-string v8, "01"

    invoke-virtual/range {v4 .. v9}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateInfoSync : return 4:[Error Msg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 v0, 0x4

    return v0
.end method

.method public static getUpdateRet()Lcom/gbase/gameplus/upgrade/UpgradeData;
    .locals 1

    .line 2807
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    return-object v0
.end method

.method private static getVerCtrlInfo(I)I
    .locals 9

    const-string v0, "12"

    const-string v1, "02"

    .line 2615
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_listVerCtrlUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2618
    div-int/2addr p0, v2

    :cond_0
    const/16 v2, 0x3e8

    if-ge p0, v2, :cond_1

    const/16 p0, 0x3e8

    :cond_1
    const/16 v2, 0xbb8

    if-le p0, v2, :cond_2

    const/16 p0, 0xbb8

    .line 2628
    :cond_2
    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_verCtrlUrlUse:Ljava/lang/String;

    .line 2631
    :try_start_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getClientInstance()Lgbase_okhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v3

    int-to-long v4, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2632
    invoke-virtual {v3, v4, v5, p0}, Lgbase_okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2633
    invoke-virtual {p0, v4, v5, v3}, Lgbase_okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2634
    invoke-virtual {p0, v4, v5, v3}, Lgbase_okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 2635
    invoke-virtual {p0}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object p0

    .line 2636
    new-instance v3, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v3}, Lgbase_okhttp3/Request$Builder;-><init>()V

    .line 2637
    invoke-virtual {v3, v2}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v3

    .line 2638
    invoke-virtual {v3}, Lgbase_okhttp3/Request$Builder;->get()Lgbase_okhttp3/Request$Builder;

    move-result-object v3

    .line 2639
    invoke-virtual {v3}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v3

    .line 2640
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    const-string v5, "00"

    invoke-virtual {v4, v0, v1, v5, v1}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUpdateInfoSync, url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2642
    invoke-virtual {p0, v3}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lgbase_okhttp3/Call;->execute()Lgbase_okhttp3/Response;

    move-result-object p0

    .line 2643
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->code()I

    move-result v3

    .line 2644
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2646
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lgbase_okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2647
    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->parseVerCtrl(Lorg/json/JSONObject;)I

    move-result p0

    return p0

    .line 2651
    :cond_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setServerIP(Ljava/lang/String;)V

    .line 2652
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setStrHttpResCode(Ljava/lang/String;)V

    .line 2653
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string v4, "99"

    const-string v5, "03"

    invoke-virtual {p0, v0, v4, v1, v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdateInfoSync response bad code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, -0x2

    return p0

    :catch_0
    move-exception p0

    .line 2666
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "99"

    const-string v3, "02"

    const-string v4, "01"

    const-string v5, "getUpdateInfoSync JSONException"

    invoke-virtual/range {v0 .. v5}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoSync JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 p0, -0x4

    return p0

    :catch_1
    move-exception p0

    .line 2659
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setServerIP(Ljava/lang/String;)V

    .line 2660
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "12"

    const-string v5, "99"

    const-string v6, "02"

    const-string v7, "02"

    invoke-virtual/range {v3 .. v8}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfoSync IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 p0, -0x3

    return p0
.end method

.method public static getVersionCode()Ljava/lang/Integer;
    .locals 1

    .line 2795
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 2791
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    return-object v0
.end method

.method private static isDigit(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]{1,}"

    .line 2076
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static jsonArrToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2042
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2046
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2047
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2051
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 0

    .line 194
    invoke-static {p0, p1, p2, p3}, Lcom/gbase/gameplus/upgrade/CommonUtility;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    return-void
.end method

.method private static parseVerCtrl(Lorg/json/JSONObject;)I
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "to_versions"

    const-string v2, "from_versions"

    :try_start_0
    const-string v3, "versions"

    .line 2243
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "packages"

    .line 2244
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v5, 0x0

    .line 2246
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "parseVerCtrl failed: [not found channelID "

    const-string v8, "channel_id"

    if-ge v5, v6, :cond_19

    .line 2248
    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2249
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2250
    sget-object v12, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    const-string v3, "base_url"

    .line 2252
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pacBaseUrl:Ljava/lang/String;

    const-string v3, "backup_base_url"

    .line 2253
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pacBaseUrlBak:Ljava/lang/String;

    const-string v3, "areas"

    .line 2254
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    .line 2255
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_19

    .line 2256
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v11, "ids"

    .line 2257
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2259
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "test_version"

    const-string v14, "open_version"

    if-nez v12, :cond_12

    :try_start_2
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 2261
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 2262
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 2263
    instance-of v4, v11, Ljava/lang/Integer;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, "strFromVersion :"

    const-string v10, "fromversion and toversion is array"

    move-object/from16 v16, v1

    const-string v1, "Specified version update is did not work"

    if-nez v4, :cond_9

    :try_start_3
    instance-of v4, v11, Ljava/lang/String;

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 2318
    :cond_0
    instance-of v4, v11, Lorg/json/JSONArray;

    if-eqz v4, :cond_15

    .line 2319
    check-cast v11, Lorg/json/JSONArray;

    invoke-static {v11}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->jsonArrToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 2320
    sget-object v11, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2321
    instance-of v2, v12, Ljava/lang/Integer;

    if-nez v2, :cond_1

    instance-of v2, v12, Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_1
    instance-of v2, v15, Ljava/lang/Integer;

    if-nez v2, :cond_7

    instance-of v2, v15, Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 2336
    :cond_2
    instance-of v2, v12, Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    instance-of v2, v15, Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    .line 2337
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2338
    check-cast v12, Lorg/json/JSONArray;

    invoke-static {v12}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->jsonArrToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 2339
    check-cast v15, Lorg/json/JSONArray;

    invoke-static {v15}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->jsonArrToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 2340
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2341
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2342
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2343
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2344
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2345
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2346
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2347
    sget-object v6, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2348
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2349
    sput-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2350
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mustVersion :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2354
    :cond_4
    :goto_3
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2357
    :cond_5
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2358
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2359
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2360
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2361
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2365
    :cond_6
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2366
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2367
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2368
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2369
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2322
    :cond_7
    :goto_4
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2323
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2324
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2325
    sput-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2326
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2329
    :cond_8
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2330
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2331
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2332
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2333
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2264
    :cond_9
    :goto_5
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2265
    sget-object v11, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2266
    instance-of v2, v12, Ljava/lang/Integer;

    if-nez v2, :cond_a

    instance-of v2, v12, Ljava/lang/String;

    if-eqz v2, :cond_b

    :cond_a
    instance-of v2, v15, Ljava/lang/Integer;

    if-nez v2, :cond_10

    instance-of v2, v15, Ljava/lang/String;

    if-eqz v2, :cond_b

    goto/16 :goto_8

    .line 2281
    :cond_b
    instance-of v2, v12, Lorg/json/JSONArray;

    if-eqz v2, :cond_f

    instance-of v2, v15, Lorg/json/JSONArray;

    if-eqz v2, :cond_f

    .line 2282
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2283
    check-cast v12, Lorg/json/JSONArray;

    invoke-static {v12}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->jsonArrToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 2284
    check-cast v15, Lorg/json/JSONArray;

    invoke-static {v15}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->jsonArrToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 2285
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_e

    .line 2286
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2287
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2288
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2289
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 2290
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2291
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2292
    sget-object v6, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2293
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2294
    sput-object v5, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2295
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mustVersion :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2299
    :cond_d
    :goto_7
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2302
    :cond_e
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2303
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2304
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2305
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2306
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2310
    :cond_f
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2311
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2312
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2313
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2314
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2267
    :cond_10
    :goto_8
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2268
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2269
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2270
    sput-object v3, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2271
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2274
    :cond_11
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2275
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2276
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2277
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2278
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_12
    move-object/from16 v16, v1

    .line 2377
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    const-string v4, "fromversion and toversion is not set"

    invoke-virtual {v1, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2378
    instance-of v1, v11, Ljava/lang/Integer;

    if-nez v1, :cond_14

    instance-of v1, v11, Ljava/lang/String;

    if-eqz v1, :cond_13

    goto :goto_9

    .line 2390
    :cond_13
    instance-of v1, v11, Lorg/json/JSONArray;

    if-eqz v1, :cond_15

    .line 2392
    check-cast v11, Lorg/json/JSONArray;

    invoke-static {v11}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->jsonArrToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 2393
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2395
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2396
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2397
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2398
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2380
    :cond_14
    :goto_9
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2381
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2383
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_openVersionName:Ljava/lang/String;

    .line 2384
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_testVersionName:Ljava/lang/String;

    .line 2385
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getMustVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    .line 2386
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setAPKTargetVersion(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2404
    :cond_15
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    if-ne v5, v1, :cond_16

    .line 2406
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v9

    const-string v10, "12"

    const-string v11, "99"

    const-string v12, "02"

    const-string v13, "01"

    const-string v14, "parseVerCtrl failed: not found areaID"

    invoke-virtual/range {v9 .. v14}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseVerCtrl failed: [not found areaID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in areas]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 v0, -0x5

    return v0

    :cond_16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_1

    :cond_17
    move-object/from16 v16, v1

    .line 2414
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    if-ne v5, v1, :cond_18

    .line 2416
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v8

    const-string v9, "12"

    const-string v10, "99"

    const-string v11, "02"

    const-string v12, "01"

    const-string v13, "parseVerCtrl failed: not found channelID in versions"

    invoke-virtual/range {v8 .. v13}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in versions]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_18
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_19
    :goto_a
    const/4 v1, 0x0

    .line 2423
    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 2425
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2426
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2427
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v0, "pack_info"

    .line 2429
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 2430
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 2432
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "version_name"

    .line 2433
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2434
    sget-object v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v0, "install_package_url"

    .line 2436
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakUrl:Ljava/lang/String;

    .line 2437
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->CheckDownloadUrl(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 2439
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "m_pacBaseUrl empty"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 v0, -0x5

    return v0

    :cond_1a
    const-string v0, "install_package_size"

    .line 2442
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    const-string v0, "install_package_md5"

    .line 2443
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakMd5:Ljava/lang/String;

    goto/16 :goto_d

    .line 2446
    :cond_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1c

    .line 2448
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v4

    const-string v5, "12"

    const-string v6, "99"

    const-string v7, "02"

    const-string v8, "01"

    const-string v9, "parseVerCtrl failed: not found versionName"

    invoke-virtual/range {v4 .. v9}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseVerCtrl failed: [not found versionName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in pack_info]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 v2, -0x5

    return v2

    :cond_1c
    const/4 v2, -0x5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :cond_1d
    const/4 v2, -0x5

    .line 2456
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1e

    .line 2458
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v9

    const-string v10, "12"

    const-string v11, "99"

    const-string v12, "02"

    const-string v13, "01"

    const-string v14, "parseVerCtrl failed: not found channelID in packages"

    invoke-virtual/range {v9 .. v14}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appChannelID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in packages]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x0

    return v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 2470
    :cond_1f
    :goto_d
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseVerCtrl : m_mustVersionName=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nm_pakUrl=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nm_pakSize=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nm_pakMd5=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\nm_areaID=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_areaID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 2477
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_versionName:Ljava/lang/String;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "00"

    const-string v2, "02"

    const-string v3, "12"

    if-eqz v0, :cond_22

    .line 2479
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSdcardWriteAuthority(Landroid/content/Context;)Z

    move-result v0

    .line 2480
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSDCardInfo()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_21

    if-nez v0, :cond_20

    goto :goto_e

    .line 2484
    :cond_20
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v4, "04"

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_21
    :goto_e
    const/4 v0, -0x7

    return v0

    .line 2489
    :cond_22
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v4, "03"

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 2466
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v1

    const-string v2, "12"

    const-string v3, "99"

    const-string v4, "02"

    const-string v5, "01"

    const-string v6, "parseVerCtrl JSONException"

    invoke-virtual/range {v1 .. v6}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseVerCtrl JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    const/4 v0, -0x6

    return v0
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 2167
    new-array v0, v0, [B

    .line 2169
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2170
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 2171
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2173
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2174
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .locals 0

    .line 162
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->setMainActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private static showNetworkDlg(Landroid/content/Context;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 2850
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    .line 2851
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u8bf7\u91cd\u65b0\u8fde\u63a5\u4f60\u7684\u7f51\u7edc"

    .line 2852
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 2853
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility$10;

    invoke-direct {p1}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$10;-><init>()V

    const-string v0, "\u786e\u5b9a"

    .line 2854
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2861
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static startAutoUpdate(Landroid/content/Context;)V
    .locals 1

    .line 2833
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 2835
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->isNetworkAvailable(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myNetworkStates:I

    .line 2837
    sget p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myNetworkStates:I

    if-nez p0, :cond_0

    .line 2839
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->showNetworkDlg(Landroid/content/Context;I)V

    goto :goto_0

    .line 2842
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->AutoUpdateOp(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static startAutoUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2815
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    .line 2817
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->isNetworkAvailable(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_networkStates:I

    .line 2819
    sget p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_networkStates:I

    if-nez p0, :cond_0

    .line 2821
    sget-object p1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->showNetworkDlg(Landroid/content/Context;I)V

    goto :goto_0

    .line 2824
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->AutoUpdateOp(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static startDownload()V
    .locals 2

    .line 1261
    sget v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1262
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startDownloadV1()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1264
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startDownloadV2()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static startDownloadV1()V
    .locals 5

    .line 1374
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->cancel()V

    const-wide/16 v0, 0xbb8

    .line 1379
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1381
    :catch_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "Restart Download wait"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 1383
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1384
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    .line 1387
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_1

    .line 1389
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1392
    :cond_1
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->configTimeout(I)Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1393
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 1394
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling download file, url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1396
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility$5;

    invoke-direct {v4}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$5;-><init>()V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;ZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    return-void
.end method

.method private static startDownloadV2()V
    .locals 5

    .line 1271
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_downloadUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1277
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    if-eqz v0, :cond_1

    .line 1279
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->cancel()V

    const-wide/16 v0, 0xbb8

    .line 1281
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1283
    :catch_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "Restart Download wait"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 1285
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1286
    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    .line 1289
    :cond_1
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-nez v0, :cond_2

    .line 1291
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1293
    :cond_2
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->configTimeout(I)Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1294
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_downloadUrl:Ljava/lang/String;

    .line 1295
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling download file, url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 1296
    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    sget-object v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v4, Lcom/gbase/gameplus/upgrade/UpgradeUtility$4;

    invoke-direct {v4, v0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;ZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    return-void

    .line 1273
    :cond_3
    :goto_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "failed to get m_downloadUrl !"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public static startUpdate(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 2

    .line 1195
    sget v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1196
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startUpdateV1(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1198
    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startUpdateV2(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static startUpdateV1(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 6

    .line 1232
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    .line 1233
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getStoreageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getLastVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    .line 1237
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getFileSize()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/gbase/gameplus/upgrade/CommonUtility;->checkFileExits(Ljava/lang/String;J)I

    move-result p0

    sput p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->resumeFile:I

    .line 1239
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSDCardInfo()J

    move-result-wide v0

    .line 1240
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->updateData:Lcom/gbase/gameplus/upgrade/UpgradeData;

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgrade/UpgradeData;->getFileSize()J

    move-result-wide v2

    sget p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->resumeFile:I

    int-to-long v4, p0

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1244
    invoke-static {v4}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->checkAndInstall(Z)V

    goto :goto_0

    .line 1246
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startDownload()V

    goto :goto_0

    .line 1250
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string v0, "12"

    const-string v1, "99"

    const-string v2, "03"

    const-string v3, "01"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const-string v0, "Insufficient space for SD card"

    invoke-interface {p0, v4, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadFinish(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static startUpdateV2(Lcom/gbase/gameplus/upgrade/UpgradeCallback;)V
    .locals 6

    .line 1205
    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    .line 1206
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getStoreageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_mustVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    .line 1210
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    sget-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    invoke-static {p0, v0, v1}, Lcom/gbase/gameplus/upgrade/CommonUtility;->checkFileExits(Ljava/lang/String;J)I

    move-result p0

    sput p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_nResumeFile:I

    .line 1213
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSDCardInfo()J

    move-result-wide v0

    .line 1215
    sget-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_pakSize:J

    sget p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_nResumeFile:I

    int-to-long v4, p0

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1219
    invoke-static {v4}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->checkAndInstall(Z)V

    goto :goto_0

    .line 1221
    :cond_0
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->startDownload()V

    goto :goto_0

    .line 1225
    :cond_1
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object p0

    const-string v0, "12"

    const-string v1, "99"

    const-string v2, "03"

    const-string v3, "01"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    sget-object p0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->myCallback:Lcom/gbase/gameplus/upgrade/UpgradeCallback;

    const-string v0, "Insufficient space for SD card"

    invoke-interface {p0, v4, v0}, Lcom/gbase/gameplus/upgrade/UpgradeCallback;->onDownloadFinish(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static stopUpdate()V
    .locals 2

    .line 1465
    sget v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->nUpdateModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1466
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->stopUpdateV1()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1468
    invoke-static {}, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->stopUpdateV2()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static stopUpdateV1()V
    .locals 5

    const/4 v0, 0x0

    .line 1507
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->downloadFlag:Z

    .line 1509
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1511
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getFileLen(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->totalBytes:J

    .line 1512
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    sget-wide v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setDownloadBytes(J)V

    .line 1513
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "00"

    const-string v4, "06"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->cancel()V

    .line 1523
    :cond_1
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->anyscHttpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    if-eqz v0, :cond_2

    .line 1525
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->cancel()V

    .line 1528
    :cond_2
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1530
    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1533
    :cond_3
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-eqz v0, :cond_4

    .line 1535
    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    :cond_4
    return-void
.end method

.method private static stopUpdateV2()V
    .locals 5

    const/4 v0, 0x0

    .line 1474
    sput-boolean v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_bDownloadFlag:Z

    .line 1476
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1478
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->m_apkFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getFileLen(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v2, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lStartBytes:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lEndBytes:J

    .line 1479
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    sget-wide v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->g_lEndBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgrade/EventSubmit;->setDownloadBytes(J)V

    .line 1480
    invoke-static {}, Lcom/gbase/gameplus/upgrade/EventSubmit;->getInstance()Lcom/gbase/gameplus/upgrade/EventSubmit;

    move-result-object v0

    const-string v1, "12"

    const-string v2, "02"

    const-string v3, "00"

    const-string v4, "06"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gbase/gameplus/upgrade/EventSubmit;->sendReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    :cond_0
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    if-eqz v0, :cond_1

    .line 1485
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->cancel()V

    .line 1489
    :cond_1
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->anyscHttpHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    if-eqz v0, :cond_2

    .line 1491
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->cancel()V

    .line 1494
    :cond_2
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1496
    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtils:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    .line 1499
    :cond_3
    sget-object v0, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    if-eqz v0, :cond_4

    .line 1501
    sput-object v1, Lcom/gbase/gameplus/upgrade/UpgradeUtility;->httpUtilGetUpgradeInfo:Lcom/gbase/gameplus/upgradeutil/HttpUtils;

    :cond_4
    return-void
.end method
