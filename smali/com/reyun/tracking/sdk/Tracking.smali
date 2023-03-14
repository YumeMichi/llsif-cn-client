.class public Lcom/reyun/tracking/sdk/Tracking;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static ENABLE_APP_LIST:Z = true

.field private static final HEART_BEAT_TIME:I

.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_INTERVAL:Ljava/lang/String; = "interval"

.field public static final KEY_TIME_TRACK:Ljava/lang/String; = "time_track"

.field public static SEND_DATA_WITH_HEARTBEAT:Z = false

.field private static final STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "TrackingIO"

.field private static final VALUE_FROM:Ljava/lang/String; = "tkio"

.field public static final XML_INSTALL:Ljava/lang/String; = "tracking_install"

.field public static final XML_INTERVAL:Ljava/lang/String; = "tracking_interval"

.field public static final XML_LOGIN:Ljava/lang/String; = "tracking_login"

.field public static final XML_PKG_INFO:Ljava/lang/String; = "tracking_pkgInfo"

.field private static attributionQueryListener:Lcom/reyun/tracking/utils/IAttributionQueryListener;

.field private static deepLinkListener:Lcom/reyun/tracking/utils/IDeepLinkListener;

.field private static isCallbackRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isInstallSent:Z

.field private static isSDKInited:Z

.field private static volatile isSdkExit:Z

.field private static mApplication:Landroid/app/Application;

.field private static m_appKey:Ljava/lang/String;

.field private static m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/t;

.field private static m_channelid:Ljava/lang/String;

.field private static m_context:Landroid/content/Context;

.field private static m_heartBeatTimer1:Ljava/util/Timer;

.field private static myTimehandler:Landroid/os/Handler;

.field private static my_homeBtnReceiver:Lcom/reyun/tracking/sdk/u;

.field private static my_timerTask1:Ljava/util/TimerTask;

.field private static mydbhandler:Landroid/os/Handler;

.field private static myhandler:Landroid/os/Handler;

.field private static sCyid:Ljava/lang/String;

.field private static uploadMac:Z

.field private static useMsa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->isCallbackRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->uploadMac:Z

    sput-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->useMsa:Z

    sput-boolean v1, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    const-string v3, "_default_"

    sput-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    sput-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/t;

    sput-boolean v1, Lcom/reyun/tracking/sdk/Tracking;->isSdkExit:Z

    sput-object v2, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/u;

    sput-object v2, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v0}, Ljava/util/Timer;-><init>(Z)V

    sput-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    sget-boolean v0, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a98

    :goto_0
    sput v0, Lcom/reyun/tracking/sdk/Tracking;->HEART_BEAT_TIME:I

    sput-boolean v1, Lcom/reyun/tracking/sdk/Tracking;->isSDKInited:Z

    new-instance v0, Lcom/reyun/tracking/sdk/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/reyun/tracking/sdk/d;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->myTimehandler:Landroid/os/Handler;

    new-instance v0, Lcom/reyun/tracking/sdk/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/reyun/tracking/sdk/e;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->myhandler:Landroid/os/Handler;

    new-instance v0, Lcom/reyun/tracking/sdk/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/reyun/tracking/sdk/g;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reyun/tracking/sdk/Tracking;->mydbhandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/reyun/tracking/sdk/u;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/u;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/reyun/tracking/sdk/u;)Lcom/reyun/tracking/sdk/u;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/u;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/reyun/tracking/sdk/t;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/t;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/reyun/tracking/sdk/t;)Lcom/reyun/tracking/sdk/t;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/t;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1302(Landroid/app/Application;)Landroid/app/Application;
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$1500(I)V
    .locals 0

    invoke-static {p0}, Lcom/reyun/tracking/sdk/Tracking;->sendFailureRecord(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->isInstallSent:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->isCallbackRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/Map;)V
    .locals 0

    invoke-static {p0}, Lcom/reyun/tracking/sdk/Tracking;->afterInit(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->myTimehandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->isSdkExit:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->isSdkExit:Z

    return p0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->myhandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J
    .locals 2

    new-instance v0, Lcom/reyun/tracking/sdk/s;

    invoke-direct {v0}, Lcom/reyun/tracking/sdk/s;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/reyun/tracking/sdk/Tracking;->jsonObjToByteArray(Lorg/json/JSONObject;)[B

    move-result-object p1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "what"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p0, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object p1, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {p0, p1}, Lcom/reyun/tracking/utils/h;->a(Landroid/content/Context;Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/reyun/tracking/utils/h;->a(Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception in addRecordToDbase:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrackingIO"

    invoke-static {p1, p0}, Lcom/reyun/tracking/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static afterInit(Ljava/util/Map;)V
    .locals 3

    const-string v0, "TrackingIO"

    const-string v1, "afterInit"

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/reyun/tracking/sdk/p;

    invoke-direct {v0, p0}, Lcom/reyun/tracking/sdk/p;-><init>(Ljava/util/Map;)V

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    const-string v2, "receive/gettime"

    invoke-static {p0, v2, v0, v1}, Lcom/reyun/tracking/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V

    new-instance p0, Lcom/reyun/tracking/sdk/q;

    invoke-direct {p0}, Lcom/reyun/tracking/sdk/q;-><init>()V

    invoke-static {p0}, Lcom/reyun/tracking/utils/k;->a(Lcom/reyun/tracking/utils/l;)V

    sget-object p0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/reyun/tracking/a/a;->a(Lcom/reyun/tracking/a/j;Landroid/content/Context;)V

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->n(Landroid/content/Context;)V

    return-void
.end method

.method public static deleteRecordFromDatabase(J)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0, v1}, Lcom/reyun/tracking/utils/h;->a(Landroid/content/Context;Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/h;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/reyun/tracking/utils/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in deleteRecordFromDatabase:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrackingIO"

    invoke-static {p1, p0}, Lcom/reyun/tracking/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static exitSdk()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->isSDKInited:Z

    invoke-static {}, Lcom/reyun/tracking/a/a;->i()V

    invoke-static {}, Lcom/reyun/tracking/a/a;->h()V

    invoke-static {}, Lcom/reyun/tracking/utils/w;->b()V

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->myTimehandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/reyun/tracking/sdk/f;

    invoke-direct {v1}, Lcom/reyun/tracking/sdk/f;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method private static getApplistData()Lorg/json/JSONObject;
    .locals 5

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v1, "tracking_login"

    const-string v2, "account"

    const-string v3, "unknown"

    invoke-static {v0, v1, v2, v3}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    const-string v4, "pkgInfo"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getAttributionQueryListener()Lcom/reyun/tracking/utils/IAttributionQueryListener;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->attributionQueryListener:Lcom/reyun/tracking/utils/IAttributionQueryListener;

    return-object v0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeepLinkListener()Lcom/reyun/tracking/utils/IDeepLinkListener;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->deepLinkListener:Lcom/reyun/tracking/utils/IDeepLinkListener;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/reyun/tracking/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImei2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/reyun/tracking/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMeid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/reyun/tracking/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadMac()Z
    .locals 1

    sget-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->uploadMac:Z

    return v0
.end method

.method public static getsCyid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->sCyid:Ljava/lang/String;

    return-object v0
.end method

.method public static initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/reyun/tracking/sdk/Tracking;->initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/reyun/tracking/sdk/Tracking;->initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/reyun/tracking/sdk/Tracking;->initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static initWithKeyAndChannelId(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 10

    sput-object p1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object p1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "TrackingIO"

    if-nez p1, :cond_0

    const-string p0, "Your appKey is incorrect! init failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "unknown"

    const-string v1, "initWithKeyAndChannelId : channelid is NULL"

    invoke-static {p2, p1, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    const-string p2, "appContext can not be null!"

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez p0, :cond_2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sput-object p4, Lcom/reyun/tracking/sdk/Tracking;->sCyid:Ljava/lang/String;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p4

    invoke-static {p2, p4}, Lcom/reyun/tracking/a/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p0, "processName is null! init FAILED!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p0, "pkgName is unknown! init FAILED!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "Initial sdk successful!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->isSDKInited:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const/4 p0, 0x1

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->isSDKInited:Z

    sget-boolean p2, Lcom/reyun/tracking/sdk/Tracking;->useMsa:Z

    if-eqz p2, :cond_f

    invoke-static {}, Lcom/reyun/tracking/a/a;->j()Z

    move-result p2

    if-nez p2, :cond_7

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1d

    if-lt p2, p4, :cond_6

    goto :goto_1

    :cond_6
    const-string p0, "is not emui and android int < 29"

    invoke-static {v0, p0}, Lcom/reyun/tracking/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lcom/reyun/tracking/sdk/Tracking;->afterInit(Ljava/util/Map;)V

    goto/16 :goto_6

    :cond_7
    :goto_1
    const/4 p2, 0x0

    const/4 p4, 0x0

    :try_start_0
    const-string v1, "com.bun.miitmdid.interfaces.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string v1, "com.bun.supplier.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_3

    :catch_1
    move-object v1, p2

    goto :goto_2

    :goto_3
    if-nez v1, :cond_8

    invoke-static {p3}, Lcom/reyun/tracking/sdk/Tracking;->afterInit(Ljava/util/Map;)V

    return-void

    :cond_8
    if-eqz v2, :cond_9

    :try_start_2
    const-string v2, "com.bun.miitmdid.core.JLibrary"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "InitEntry"

    new-array v4, p0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, p0, [Ljava/lang/Object;

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    aput-object v4, v3, p4

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v3, p0, [Ljava/lang/Class;

    aput-object v1, v3, p4

    new-instance v4, Lcom/reyun/tracking/sdk/m;

    invoke-direct {v4, p3}, Lcom/reyun/tracking/sdk/m;-><init>(Ljava/util/Map;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "com.bun.miitmdid.core.MdidSdkHelper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "InitSdk"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, p4

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, p0

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    aput-object v6, v5, p4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, p0

    aput-object v2, v5, v9

    invoke-virtual {v1, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    const-string v3, "com.bun.miitmdid.core.ErrorCode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "INIT_ERROR_DEVICE_NOSUPPORT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p0, v4, :cond_a

    const-string p2, "\u4e0d\u652f\u6301\u7684\u8bbe\u5907"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p4}, Lcom/reyun/tracking/a/h;->a(Ljava/lang/String;Z)V

    :goto_4
    invoke-static {p3}, Lcom/reyun/tracking/sdk/Tracking;->afterInit(Ljava/util/Map;)V

    goto/16 :goto_5

    :cond_a
    const-string v4, "INIT_ERROR_LOAD_CONFIGFILE"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p0, v4, :cond_b

    const-string p2, "\u52a0\u8f7d\u914d\u7f6e\u6587\u4ef6\u51fa\u9519"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p4}, Lcom/reyun/tracking/a/h;->a(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_b
    const-string v4, "INIT_ERROR_MANUFACTURER_NOSUPPORT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p0, v4, :cond_c

    const-string p2, "\u4e0d\u652f\u6301\u7684\u8bbe\u5907\u5382\u5546"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p4}, Lcom/reyun/tracking/a/h;->a(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_c
    const-string v4, "INIT_ERROR_RESULT_DELAY"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p0, v4, :cond_d

    const-string p2, "\u83b7\u53d6\u63a5\u53e3\u662f\u5f02\u6b65\u7684\uff0c\u7ed3\u679c\u4f1a\u5728\u56de\u8c03\u4e2d\u8fd4\u56de\uff0c\u56de\u8c03\u6267\u884c\u7684\u56de\u8c03\u53ef\u80fd\u5728\u5de5\u4f5c\u7ebf\u7a0b!!!"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {p2}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object p2

    new-instance v3, Lcom/reyun/tracking/sdk/n;

    invoke-direct {v3, p3}, Lcom/reyun/tracking/sdk/n;-><init>(Ljava/util/Map;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {p2, v3, v4, v5}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;J)V

    goto :goto_5

    :cond_d
    const-string v4, "INIT_HELPER_CALL_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p0, p2, :cond_e

    const-string p2, "\u53cd\u5c04\u8c03\u7528\u51fa\u9519"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p4}, Lcom/reyun/tracking/a/h;->a(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_e
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume time:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/reyun/tracking/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1, p4}, Lcom/reyun/tracking/a/h;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    new-instance p0, Lcom/reyun/tracking/b/a;

    new-instance p1, Lcom/reyun/tracking/sdk/o;

    invoke-direct {p1, p3}, Lcom/reyun/tracking/sdk/o;-><init>(Ljava/util/Map;)V

    sget-object p2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/reyun/tracking/b/a;-><init>(Lcom/reyun/tracking/b/c;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/reyun/tracking/b/a;->a()V

    :goto_6
    return-void

    :cond_10
    const-string p0, "Only main process can init sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    :goto_7
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAppOnForeground()Z
    .locals 7

    const-string v0, "TrackingIO"

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v4, :cond_5

    sget-boolean v1, Lcom/reyun/tracking/a/i;->a:Z

    if-ne v1, v5, :cond_4

    const-string v1, "appProcess.processName is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v4, :cond_7

    sget-boolean v1, Lcom/reyun/tracking/a/i;->a:Z

    if-ne v1, v5, :cond_6

    const-string v1, "=====m_context is null!===="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    :cond_7
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sget-object v6, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppOnForeground!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v2
.end method

.method public static isUseMsa()Z
    .locals 1

    sget-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->useMsa:Z

    return v0
.end method

.method private static jsonObjToByteArray(Lorg/json/JSONObject;)[B
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static mapApi2Byte(Ljava/lang/String;)B
    .locals 1

    const-string v0, "receive/batch"

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "receive/tkio/startup"

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string v0, "receive/tkio/register"

    if-ne p0, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "receive/tkio/install"

    if-ne p0, v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string v0, "receive/tkio/loggedin"

    if-ne p0, v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-string v0, "receive/tkio/payment"

    if-ne p0, v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-string v0, "receive/tkio/event"

    if-ne p0, v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-string v0, "receive/gettime"

    if-ne p0, v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    const-string v0, "receive/pkginfo"

    if-ne p0, v0, :cond_8

    const/16 p0, 0x11

    return p0

    :cond_8
    const-string v0, "dpquery"

    if-ne p0, v0, :cond_9

    const/16 p0, 0xd

    return p0

    :cond_9
    const-string v0, "receive/tkio/appduration"

    if-ne p0, v0, :cond_a

    const/16 p0, 0x10

    return p0

    :cond_a
    const-string v0, "receive/tkio/pageduration"

    if-ne p0, v0, :cond_b

    const/16 p0, 0xe

    return p0

    :cond_b
    const-string v0, "receive/tkio/adshow"

    if-ne p0, v0, :cond_c

    const/16 p0, 0xa

    return p0

    :cond_c
    const-string v0, "receive/tkio/adclick"

    if-ne p0, v0, :cond_d

    const/16 p0, 0xb

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private static queryRecordFromDatabase(I)Lcom/reyun/tracking/utils/j;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0, v1}, Lcom/reyun/tracking/utils/h;->a(Landroid/content/Context;Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/reyun/tracking/utils/h;->a(I)Lcom/reyun/tracking/utils/j;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static sdkListenerHomeBtn()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/reyun/tracking/sdk/u;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/reyun/tracking/sdk/u;-><init>(Lcom/reyun/tracking/sdk/d;)V

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/u;

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->my_homeBtnReceiver:Lcom/reyun/tracking/sdk/u;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static sendFailureRecord(I)V
    .locals 6

    const-string v0, "TrackingIO"

    const-string v1, "TAG"

    const-string v2, "\u53d1\u9001\u5931\u8d25\u7684\u6570\u636e"

    invoke-static {v1, v2}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/reyun/tracking/sdk/Tracking;->queryRecordFromDatabase(I)Lcom/reyun/tracking/utils/j;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/reyun/tracking/utils/j;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/reyun/tracking/utils/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->mydbhandler:Landroid/os/Handler;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->mydbhandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "There is no more data need to resend."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFailureRecord!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method private static sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method private static sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/Map;)V
    .locals 10

    const-string v0, "install"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/reyun/tracking/sdk/Tracking;->isInstallSent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {v4}, Lcom/reyun/tracking/utils/b;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/reyun/tracking/sdk/Tracking;->SEND_DATA_WITH_HEARTBEAT:Z

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v0

    new-instance v9, Lcom/reyun/tracking/sdk/j;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p1

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/reyun/tracking/sdk/j;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAdClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "adclick"

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "TrackingIO"

    if-nez v1, :cond_0

    const-string p0, "setAdClick Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "setAdClick Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "setAdClick Error: adPlatform cannot be NULL"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "setAdClick Error: adId cannot be NULL"

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v4, "tracking_login"

    const-string v5, "account"

    const-string v6, "unknown"

    invoke-static {v3, v4, v5, v6}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "_adPlatform"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "_adId"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "receive/tkio/adclick"

    invoke-static {v0, v0, v1, p0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setAdShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "adshow"

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "TrackingIO"

    if-nez v1, :cond_0

    const-string p0, "setAdShow Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "setAdShow Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "setAdShow Error: adPlatform cannot be NULL"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "setAdShow Error: adId cannot be NULL"

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v4, "tracking_login"

    const-string v5, "account"

    const-string v6, "unknown"

    invoke-static {v3, v4, v5, v6}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "_adPlatform"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "_adId"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "_fill"

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "receive/tkio/adshow"

    invoke-static {v0, v0, v1, p0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setAppDuration(J)V
    .locals 7

    const-string v0, "unknown"

    const-string v1, "appduration"

    :try_start_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v5, "tracking_login"

    const-string v6, "account"

    invoke-static {v4, v5, v6, v0}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "context"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_deviceid"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_create_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_appduration"

    const-wide/16 v5, 0x3e8

    div-long/2addr p0, v5

    invoke-virtual {v3, v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "_sessionid"

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "receive/tkio/appduration"

    invoke-static {v1, v1, v2, p0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static setApplist()V
    .locals 7

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "TrackingIO"

    const-string v1, "setNLoginWithAccountID Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, -0x1

    const-string v3, "time_track"

    const-string v4, "tracking_pkgInfo"

    invoke-static {v0, v4, v3, v1, v2}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getApplistData()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v1, v4, v3, v5, v6}, Lcom/reyun/tracking/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v1, Lcom/reyun/tracking/sdk/k;

    invoke-direct {v1}, Lcom/reyun/tracking/sdk/k;-><init>()V

    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    const-string v4, "receive/pkginfo"

    invoke-static {v2, v4, v0, v1, v3}, Lcom/reyun/tracking/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V

    return-void
.end method

.method public static setAttributionQueryListener(Lcom/reyun/tracking/utils/IAttributionQueryListener;)V
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->attributionQueryListener:Lcom/reyun/tracking/utils/IAttributionQueryListener;

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/a/i;->a:Z

    return-void
.end method

.method public static setDeepLinkListener(Lcom/reyun/tracking/utils/IDeepLinkListener;)V
    .locals 0

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->deepLinkListener:Lcom/reyun/tracking/utils/IDeepLinkListener;

    return-void
.end method

.method public static setEnableAppList(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->ENABLE_APP_LIST:Z

    return-void
.end method

.method public static setEncrypt(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/a/i;->f:Z

    return-void
.end method

.method public static setEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    const-string v0, "userEvent"

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TrackingIO"

    if-nez v1, :cond_1

    const-string p0, "setEvent Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Lcom/reyun/tracking/a/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setEvent Error: Invalid key of map "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v1, "unknown"

    const-string v3, "\u8c03\u7528setEvent\u65f6 eventName \u4e3a\u7a7a"

    invoke-static {p0, v1, v3}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "setEvent Error: param eventName cannot be NULL"

    goto :goto_0

    :cond_3
    const-string v3, "electricityDataEvent"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "gyroDataEvent"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "paymentStart"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "exception"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "order"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "invoke"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "^event_([1-9]|1[0-2])$"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string p0, "setEvent Error: only supported eventName: event_1 - event_12 or invoke"

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_6
    const-string v2, "_isReyunDefaultEvent"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    :try_start_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v5, "tracking_login"

    const-string v6, "account"

    invoke-static {v4, v5, v6, v1}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v2, v3, p0, v1, v4}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/reyun/tracking/a/a;->a(Ljava/util/Map;Lorg/json/JSONObject;)V

    const-string p1, "receive/tkio/event"

    invoke-static {v0, v0, p0, p1}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setEventJsonString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setIsInstallSent(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->isInstallSent:Z

    return-void
.end method

.method public static setLoginSuccessBusiness(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/reyun/tracking/sdk/Tracking;->setLoginSuccessBusiness(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setLoginSuccessBusiness(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    const-string v0, "loggedin"

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "TrackingIO"

    if-nez v1, :cond_0

    const-string p0, "setLoginSuccessBusiness Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "setLoginSuccessBusiness Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "unknown"

    const-string v2, "setRegisterWithAccountID Warning: param account is NULL"

    invoke-static {p0, v1, v2}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "tracking_login"

    const-string v3, "account"

    invoke-static {v1, v2, v3, p0}, Lcom/reyun/tracking/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v2, v3, v0, p0, v4}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p1, :cond_2

    const-string p0, "context"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "serverid"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/util/Map;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    const-string p0, "login"

    const-string p1, "receive/tkio/loggedin"

    invoke-static {v0, p0, v1, p1}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xe

    if-lt p0, p1, :cond_5

    new-instance p0, Lcom/reyun/tracking/sdk/t;

    invoke-direct {p0}, Lcom/reyun/tracking/sdk/t;-><init>()V

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/t;

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/t;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/reyun/tracking/sdk/t;->setDaemon(Z)V

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_catchHomeBtnThread:Lcom/reyun/tracking/sdk/t;

    invoke-virtual {p0}, Lcom/reyun/tracking/sdk/t;->start()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->sdkListenerHomeBtn()V

    :goto_1
    sget-object p0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {p0}, Lcom/reyun/tracking/utils/s;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/s;

    move-result-object p0

    sget-object p1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    new-instance p2, Lcom/reyun/tracking/sdk/r;

    invoke-direct {p2}, Lcom/reyun/tracking/sdk/r;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/reyun/tracking/utils/s;->a(Landroid/content/Context;Lcom/reyun/tracking/utils/v;)V

    return-void
.end method

.method public static setLoginSuccessBusiness(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/reyun/tracking/sdk/Tracking;->setLoginSuccessBusiness(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setOrder(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 3

    const-string v0, "unknown"

    const-string v1, "\u8c03\u7528 setOrder\u65f6 transactionId \u4e3a\u7a7a"

    invoke-static {p0, v0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "TrackingIO"

    if-eqz v1, :cond_0

    const-string p0, "setOrder Error: param transactionId cannot be NULL"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "\u8c03\u7528 setPayment\u65f6 paymentType \u4e3a\u7a7a"

    invoke-static {p1, v0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "setOrder Error: param currencyType cannot be NULL"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const-string p0, "setOrder Error: param currencyAmount cannot <= 0"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_transactionId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_currencytype"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "_currencyAmount"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "order"

    invoke-static {p0, v0}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setPageDuration(Ljava/lang/String;J)V
    .locals 7

    const-string v0, "unknown"

    const-string v1, "pageduration"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v5, "tracking_login"

    const-string v6, "account"

    invoke-static {v4, v5, v6, v0}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "context"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_deviceid"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_create_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_sessionid"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "_pageid"

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "_pageduration"

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    invoke-virtual {v3, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "receive/tkio/pageduration"

    invoke-static {v1, v1, v2, p0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8

    const-string v0, "payment"

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "TrackingIO"

    if-nez v1, :cond_0

    const-string p0, "setPayment Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "setPayment Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    goto :goto_0

    :cond_1
    const-string v1, "unknown"

    const-string v3, "\u8c03\u7528 setPayment\u65f6 transactionId \u4e3a\u7a7a"

    invoke-static {p0, v1, v3}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "setPayment Error: param transactionId cannot be NULL"

    goto :goto_0

    :cond_2
    const-string v3, "\u8c03\u7528 setPayment\u65f6 paymentType \u4e3a\u7a7a"

    invoke-static {p1, v1, v3}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "setPayment Error: param paymentType cannot be NULL"

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_4

    const-string p0, "setPayment Error:param  currencyType\'s length cannot bigger than 3"

    goto :goto_0

    :cond_4
    const-string v3, "\u8c03\u7528 setPayment\u65f6 currencyType \u4e3a\u7a7a"

    invoke-static {p2, v1, v3}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p0, "setPayment Error:param  currencyType cannot be NULL"

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    cmpg-float v3, p3, v3

    if-gtz v3, :cond_6

    const-string p0, "setPayment Error: param currencyAmount cannot <= 0"

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v5, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v6, "tracking_login"

    const-string v7, "account"

    invoke-static {v5, v6, v7, v1}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1, v5}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    :try_start_1
    const-string v1, "context"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v3, "_transactionId"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "_paymentType"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "_currencytype"

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "_currencyAmount"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    if-eqz v2, :cond_8

    const-string p0, "receive/tkio/payment"

    invoke-static {v0, v0, v2, p0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static setPaymentStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v1, "TrackingIO"

    if-nez v0, :cond_0

    const-string p0, "setPaymentStart Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "setPaymentStart Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "unknown"

    const-string v2, "\u8c03\u7528 setPaymentStart\u65f6 transactionId \u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "setPaymentStart Error: param transactionId cannot be NULL"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v2, "\u8c03\u7528 setPaymentStart\u65f6 paymentType \u4e3a\u7a7a"

    invoke-static {p1, v0, v2}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "setPaymentStart Error: param paymentType cannot be NULL"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    const-string p0, "setPayment Error:param  currencyType\'s length cannot bigger than 3"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v2, "\u8c03\u7528 setPaymentStart\u65f6 currencyType \u4e3a\u7a7a"

    invoke-static {p2, v0, v2}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "setPaymentStart Error: param currencyType cannot be NULL"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_6

    const-string p0, "setPaymentStart Error: param currencyamount cannot <= 0"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_transactionId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_paymentType"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_currencytype"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "_currencyAmount"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "paymentStart"

    invoke-static {p0, v0}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setRegisterWithAccountID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/reyun/tracking/sdk/Tracking;->setRegisterWithAccountID(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setRegisterWithAccountID(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    const-string v0, "register"

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "TrackingIO"

    if-nez v1, :cond_0

    const-string p0, "setRegisterWithAccountID Error: Null context! Did you call the method \'initWithKeyAndChannelId\'?"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "setRegisterWithAccountID Error: Invalid appKey! Did you call the method \'initWithKeyAndChannelId\'?"

    goto :goto_0

    :cond_1
    const-string v1, "unknown"

    const-string v3, "setRegisterWithAccountID Warning: param account is NULL"

    invoke-static {p0, v1, v3}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "setRegisterWithAccountID Error: param account cannot be NULL! Upload register data failed"

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    const-string v2, "tracking_login"

    const-string v3, "account"

    invoke-static {v1, v2, v3, p0}, Lcom/reyun/tracking/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    sget-object v4, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v2, v3, v0, p0, v4}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-static {p1, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/util/Map;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    const-string p0, "receive/tkio/register"

    invoke-static {v0, v0, v1, p0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static setStartupInternal(Ljava/util/Map;)V
    .locals 6

    const-string v0, "startup"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/reyun/tracking/sdk/Tracking;->m_appKey:Ljava/lang/String;

    const-string v4, "unknown"

    sget-object v5, Lcom/reyun/tracking/sdk/Tracking;->m_channelid:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-static {p0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/util/Map;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string p0, "receive/tkio/startup"

    invoke-static {v0, v0, v1, p0}, Lcom/reyun/tracking/sdk/Tracking;->sendOrSava(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    sget-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->ENABLE_APP_LIST:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {p0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object p0

    new-instance v0, Lcom/reyun/tracking/sdk/l;

    invoke-direct {v0}, Lcom/reyun/tracking/sdk/l;-><init>()V

    invoke-virtual {p0, v0}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;)V

    :cond_2
    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    invoke-static {p0}, Lcom/reyun/tracking/sdk/Tracking;->startHeartBeat(Landroid/content/Context;)V

    return-void
.end method

.method public static setUploadMac(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->uploadMac:Z

    return-void
.end method

.method public static setUseMsa(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/sdk/Tracking;->useMsa:Z

    return-void
.end method

.method public static setUseTcp(Z)V
    .locals 0

    sput-boolean p0, Lcom/reyun/tracking/a/i;->d:Z

    return-void
.end method

.method public static startHeartBeat(Landroid/content/Context;)V
    .locals 6

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_context:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->stopHeartBeat()V

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    const/4 v0, 0x1

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    :goto_0
    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    sget-object p0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    if-nez p0, :cond_2

    new-instance p0, Lcom/reyun/tracking/sdk/i;

    invoke-direct {p0}, Lcom/reyun/tracking/sdk/i;-><init>()V

    sput-object p0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    :cond_2
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    if-eqz v1, :cond_3

    const-wide/16 v2, 0x3e8

    :try_start_0
    sget p0, Lcom/reyun/tracking/sdk/Tracking;->HEART_BEAT_TIME:I

    int-to-long v4, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static stopHeartBeat()V
    .locals 2

    const-string v0, "TrackingIO"

    const-string v1, "=============\u505c\u4e0b\u6765\u4e86==========="

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->m_heartBeatTimer1:Ljava/util/Timer;

    :cond_0
    sget-object v0, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sput-object v1, Lcom/reyun/tracking/sdk/Tracking;->my_timerTask1:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method
