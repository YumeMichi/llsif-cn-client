.class public Lklb/android/GameEngine/GameEngineActivity;
.super Landroid/app/Activity;
.source "GameEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;,
        Lklb/android/GameEngine/GameEngineActivity$CInstall;
    }
.end annotation


# static fields
.field static final MSG_UNZIP_FINISH:I = 0x2

.field static final MSG_UNZIP_PROGRESS:I = 0x1

.field private static final REQUEST_ACCESS_FINE_LOCATION_PERMISSION:I = 0x1

.field private static final REQUEST_WAKE_LOCK_PERMISSION:I = 0x2

.field private static final REQUEST_WRITE_PHOTO_PERMISSION:I = 0x3

.field private static final SHARE_COMPAT_RESULT:I = 0x2ebbb

.field private static final USE_SD_CARD:Z

.field private static mAssetMgr:Landroid/content/res/AssetManager;


# instance fields
.field final DEFAULT_VOLUME:I

.field private final VERSION_KEY:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private activityCreatedAt:J

.field private c_path_base:Ljava/lang/String;

.field private c_path_external:Ljava/lang/String;

.field private c_path_install:Ljava/lang/String;

.field private c_verLine:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private headsetEquipped:Z

.field private headsetReceiver:Landroid/content/BroadcastReceiver;

.field private installThread:Ljava/lang/Thread;

.field isMannerModeOn:Z

.field isSystemUiDirty:Z

.field isWearingHeadset:Z

.field isWindowFocused:Z

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRegisterTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lklb/android/GameEngine/GameGLSurfaceView;

.field public m_IndicatorLayout:Landroid/widget/FrameLayout;

.field public m_MovieLayout:Landroid/widget/FrameLayout;

.field private m_UsePause:Z

.field private m_alertMessage:Ljava/lang/String;

.field private m_alertTitle:Ljava/lang/String;

.field private m_appliInfo:Landroid/content/pm/ApplicationInfo;

.field private m_initialized:Z

.field private m_installEnd:Z

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_mediaVolume:I

.field private m_prev_orientation:I

.field private m_progressDialog:Landroid/app/ProgressDialog;

.field resumeRequested:Z

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shouldGPSCallbackLua:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_initialized:Z

    .line 110
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    .line 111
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    .line 112
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    .line 113
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_appliInfo:Landroid/content/pm/ApplicationInfo;

    .line 114
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "[assets]version"

    .line 115
    iput-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->VERSION_KEY:Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_installEnd:Z

    .line 117
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    .line 118
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    .line 119
    iput v1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    .line 120
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x0

    .line 122
    iput-wide v2, p0, Lklb/android/GameEngine/GameEngineActivity;->activityCreatedAt:J

    const/4 v2, 0x5

    .line 125
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->DEFAULT_VOLUME:I

    .line 131
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 132
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 134
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertTitle:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertMessage:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->shouldGPSCallbackLua:Z

    .line 144
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->activity:Landroid/app/Activity;

    .line 146
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isWindowFocused:Z

    .line 391
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    .line 402
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    .line 861
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/GameEngineActivity$InstallationPostProcessHandler;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->handler:Landroid/os/Handler;

    .line 867
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    .line 868
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    return-void
.end method

.method public static GetAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 810
    sget-object v0, Lklb/android/GameEngine/GameEngineActivity;->mAssetMgr:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static synthetic access$000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/Thread;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$100(Lklb/android/GameEngine/GameEngineActivity;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lklb/android/GameEngine/GameEngineActivity;->activityCreatedAt:J

    return-wide v0
.end method

.method static synthetic access$1000(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationListener;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static synthetic access$1200(Lklb/android/GameEngine/GameEngineActivity;)Landroid/location/LocationManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$200(Lklb/android/GameEngine/GameEngineActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I

    return p0
.end method

.method static synthetic access$202(Lklb/android/GameEngine/GameEngineActivity;I)I
    .locals 0

    .line 99
    iput p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I

    return p1
.end method

.method static synthetic access$400(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lklb/android/GameEngine/GameEngineActivity;->unzipAssets(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lklb/android/GameEngine/GameEngineActivity;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lklb/android/GameEngine/GameEngineActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    return p0
.end method

.method static synthetic access$802(Lklb/android/GameEngine/GameEngineActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    return p1
.end method

.method static synthetic access$900(Lklb/android/GameEngine/GameEngineActivity;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertTitle:Ljava/lang/String;

    return-object p0
.end method

.method private cancelGCMNotification()V
    .locals 0

    return-void
.end method

.method private initNotificationChannel()V
    .locals 4

    .line 485
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-static {}, Lklb/android/GameEngine/RClassReference;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-static {}, Lklb/android/GameEngine/RClassReference;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 488
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 490
    invoke-virtual {p0, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 491
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private invalidateSystemUi()V
    .locals 1

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    return-void
.end method

.method private isInappropriateEnvSuspected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isSuBinaryPresent()Z
    .locals 7

    const/16 v0, 0x9

    .line 152
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/local"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "/data/local/bin"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "/data/local/xbin"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "/sbin"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "/system/bin"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "/system/sd/xbin"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "/system/xbin"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "/system/bin/failsafe"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "/vendor/bin"

    aput-object v4, v0, v3

    .line 155
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/su"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    return v2

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/app/Superuser.apk"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2

    return v2

    :catch_1
    :cond_2
    return v1
.end method

.method private isVersionUpdated()Z
    .locals 5

    const/4 v0, 0x0

    .line 577
    :try_start_0
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "version"

    .line 578
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 579
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 580
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 581
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    .line 583
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 584
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 585
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "GameEngineActivity"

    .line 588
    invoke-virtual {p0, v1, v0}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "[assets]version"

    const-string v3, ""

    .line 589
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private registerHeadsetReceiver()V
    .locals 2

    .line 990
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 992
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 993
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lklb/android/GameEngine/GameEngineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private resumeView()V
    .locals 3

    .line 496
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->isInappropriateEnvSuspected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bootup_stopped"

    .line 498
    invoke-static {v0}, Lklb/android/GameEngine/RClassReference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 500
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->finish()V

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->refreshSystemUi()V

    .line 504
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameGLSurfaceView;->onResume()V

    :goto_0
    return-void
.end method

.method private startLocation()V
    .locals 9

    .line 1223
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "location"

    .line 1224
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 1225
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 1227
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-string v8, "FAILED to get LocationManager"

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    return-void

    .line 1230
    :cond_1
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$7;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/GameEngineActivity$7;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 1266
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1267
    new-instance v1, Lklb/android/GameEngine/GameEngineActivity$8;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/GameEngineActivity$8;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopLocation()V
    .locals 2

    .line 1216
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 1217
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 1218
    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method private unregisterHeadsetReceiver()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unzipAssets(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "GameEngineActivity"

    .line 638
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, v4}, Lklb/android/GameEngine/GameEngineActivity;->eraseFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    :try_start_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 652
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 657
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "ziplist"

    .line 663
    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 664
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 665
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 668
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 669
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 670
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 673
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 674
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 676
    :catch_0
    :try_start_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "AppAssets.zip"

    .line 677
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 v5, 0x1000

    .line 691
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 692
    invoke-virtual {v4, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-wide/16 v9, 0x0

    .line 694
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v11

    int-to-long v11, v11

    .line 695
    new-instance v13, Ljava/util/zip/ZipInputStream;

    invoke-direct {v13, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 696
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 697
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    :goto_3
    if-eqz v7, :cond_9

    .line 700
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 702
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 704
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 705
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 707
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 711
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 712
    :cond_3
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 713
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    goto :goto_3

    .line 709
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 717
    :cond_5
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 725
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 726
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_6

    .line 727
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 730
    :cond_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 731
    new-array v8, v5, [B

    :goto_4
    const/4 v15, 0x0

    .line 732
    invoke-virtual {v13, v8, v15, v5}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-le v1, v5, :cond_7

    .line 733
    invoke-virtual {v3, v8, v15, v1}, Ljava/io/FileOutputStream;->write([BII)V

    const/16 v5, 0x1000

    goto :goto_4

    .line 735
    :cond_7
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    add-long/2addr v9, v7

    .line 736
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v5, 0x1

    .line 737
    iput v5, v1, Landroid/os/Message;->what:I

    long-to-int v5, v11

    .line 738
    div-int/lit16 v5, v5, 0x400

    iput v5, v1, Landroid/os/Message;->arg2:I

    long-to-int v5, v9

    .line 739
    div-int/lit16 v5, v5, 0x400

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 740
    iget-object v5, v0, Lklb/android/GameEngine/GameEngineActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 741
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 742
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 743
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    move-object/from16 v1, p1

    const/16 v5, 0x1000

    goto/16 :goto_3

    .line 722
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 745
    :cond_9
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v1, p1

    const/16 v5, 0x1000

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    .line 749
    :try_start_4
    invoke-virtual {v0, v2, v1}, Lklb/android/GameEngine/GameEngineActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 750
    :try_start_5
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "[assets]version"

    .line 751
    iget-object v3, v0, Lklb/android/GameEngine/GameEngineActivity;->c_verLine:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 752
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v1, 0x1

    return v1

    :catch_1
    const/4 v1, 0x0

    goto :goto_5

    :catch_2
    const-string v1, "failed to eraseFiles"

    .line 643
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v1, 0x0

    :catch_3
    :goto_5
    return v1
.end method


# virtual methods
.method public IsInstallEnd()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_installEnd:Z

    return v0
.end method

.method public IsUsePause()Z
    .locals 1

    .line 1131
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    return v0
.end method

.method public SetUsePause(Z)V
    .locals 0

    .line 1135
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    return-void
.end method

.method public bakeDeviceToken()Ljava/lang/String;
    .locals 8

    .line 779
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lklb/android/GameEngine/PFInterface;->sha512(Ljava/lang/String;)[B

    move-result-object v0

    .line 780
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 783
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    add-int/lit8 v5, v4, -0x2

    if-ge v0, v5, :cond_0

    .line 787
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_0

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 1011
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1012
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    .line 1014
    new-array p2, p2, [B

    .line 1016
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 1018
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1020
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1021
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 553
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 554
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 556
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lklb/android/GameEngine/PFInterface;->inputDeviceKey(IC)V

    :cond_1
    return v2

    .line 569
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public eraseFiles(Ljava/io/File;)V
    .locals 3

    .line 603
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 609
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 613
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 615
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lklb/android/GameEngine/GameEngineActivity;->eraseFiles(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_1
    return-void
.end method

.method public forbidSleep(Z)V
    .locals 1

    .line 1139
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$6;

    invoke-direct {v0, p0, p1}, Lklb/android/GameEngine/GameEngineActivity$6;-><init>(Lklb/android/GameEngine/GameEngineActivity;Z)V

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLocation()V
    .locals 9

    .line 1363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1365
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-string v8, "Failed to get permission"

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    return-void

    .line 1372
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->startLocation()V

    return-void
.end method

.method public getPermissionStatus()I
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1280
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1285
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .line 824
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .line 1384
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    .line 1386
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 1388
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public instanciateEarphoneChecker()V
    .locals 1

    .line 956
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$4;

    invoke-direct {v0, p0}, Lklb/android/GameEngine/GameEngineActivity$4;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public isLowLatencyAudioOptimisationEnabled()Z
    .locals 2

    .line 1158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 517
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    const v0, 0x2ebbb

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 524
    :goto_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lklb/android/GameEngine/PFInterface;->onShareResult(ILandroid/os/Bundle;)V

    .line 539
    :goto_1
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 544
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0xb

    .line 215
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->setRequestedOrientation(I)V

    .line 218
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lklb/android/GameEngine/PFInterface;->setContext(Lklb/android/GameEngine/GameEngineActivity;)V

    .line 219
    iput-object p0, p0, Lklb/android/GameEngine/GameEngineActivity;->activity:Landroid/app/Activity;

    .line 221
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->nanotime()J

    move-result-wide v0

    iput-wide v0, p0, Lklb/android/GameEngine/GameEngineActivity;->activityCreatedAt:J

    .line 222
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->isInappropriateEnvSuspected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    const-string v0, "bootup_stopped"

    const-string v2, "\u6211\u4eec\u68c0\u6d4b\u5230\u4e00\u4e2a\u65e0\u6548\u7684\u8bbf\u95ee\u3002\u60a8\u65e0\u6cd5\u542f\u52a8\u5e94\u7528\u7a0b\u5e8f\u3002"

    invoke-virtual {p1, v0, v2}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 224
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->finish()V

    return-void

    .line 228
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 230
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->initNotificationChannel()V

    .line 233
    :cond_2
    invoke-static {p0}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onCreate(Landroid/app/Activity;)V

    .line 236
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 239
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, -0x7fcfcfd0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 240
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 242
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 246
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->instanciateEarphoneChecker()V

    .line 255
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_initialized:Z

    if-nez v0, :cond_7

    .line 257
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lklb/android/GameEngine/GameEngineActivity;->mAssetMgr:Landroid/content/res/AssetManager;

    .line 292
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    .line 296
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_prev_orientation:I

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/install/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/external/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    .line 299
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/PFInterface;->setLoadAppPath(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    iget-object v3, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lklb/android/GameEngine/PFInterface;->setBasePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_install:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 309
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_external:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 315
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    .line 316
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    .line 318
    new-instance v0, Lklb/android/GameEngine/GameGLSurfaceView;

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->c_path_base:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lklb/android/GameEngine/GameGLSurfaceView;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    .line 320
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    .line 321
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->setContentView(Landroid/view/View;)V

    .line 327
    new-instance v0, Lklb/android/GameEngine/GameEngineActivity$2;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p0, v2}, Lklb/android/GameEngine/GameEngineActivity$2;-><init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 344
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 346
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_initialized:Z

    .line 348
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->isVersionUpdated()Z

    move-result v0

    if-nez v0, :cond_6

    .line 350
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    const-string v0, "install_dialog_title"

    .line 351
    invoke-static {v0}, Lklb/android/GameEngine/RClassReference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "install_dialog_message"

    .line 352
    invoke-static {v2}, Lklb/android/GameEngine/RClassReference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 356
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 357
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 358
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lklb/android/GameEngine/GameEngineActivity$CInstall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lklb/android/GameEngine/GameEngineActivity$CInstall;-><init>(Lklb/android/GameEngine/GameEngineActivity;Lklb/android/GameEngine/GameEngineActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    .line 359
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->installThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 361
    :cond_6
    invoke-virtual {p0, v1}, Lklb/android/GameEngine/GameEngineActivity;->setInstallStatus(Z)V

    .line 364
    :cond_7
    :goto_0
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 510
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 511
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 443
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 444
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/GameEngineActivity;->setIntent(Landroid/content/Intent;)V

    .line 445
    invoke-static {p1}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 379
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnPause()V

    .line 381
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->unregisterHeadsetReceiver()V

    .line 383
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameGLSurfaceView;->onPause()V

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    .line 385
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->onPause()V

    .line 387
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 18

    move/from16 v0, p1

    move-object/from16 v1, p3

    .line 1393
    invoke-static/range {p0 .. p3}, Lextension/ShengQu/PermissionCheck;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    .line 1433
    :cond_0
    array-length v0, v1

    if-lez v0, :cond_1

    aget v0, v1, v3

    if-nez v0, :cond_1

    .line 1435
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->savePhotoToAlbum()V

    :cond_1
    return-void

    .line 1417
    :cond_2
    array-length v0, v1

    if-lez v0, :cond_3

    aget v0, v1, v3

    if-nez v0, :cond_3

    .line 1421
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-string v8, "permission gained"

    invoke-virtual/range {v1 .. v8}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_0

    .line 1427
    :cond_3
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const-string v16, "Failed to get permission"

    invoke-virtual/range {v9 .. v16}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p0

    .line 1400
    iput-boolean v3, v0, Lklb/android/GameEngine/GameEngineActivity;->shouldGPSCallbackLua:Z

    .line 1401
    array-length v2, v1

    if-lez v2, :cond_5

    aget v1, v1, v3

    if-nez v1, :cond_5

    .line 1405
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-string v9, "permission gained"

    invoke-virtual/range {v2 .. v9}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    goto :goto_1

    .line 1411
    :cond_5
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    const-string v17, "Failed to get permission"

    invoke-virtual/range {v10 .. v17}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 370
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnRestart()V

    .line 371
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mView:Lklb/android/GameEngine/GameGLSurfaceView;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameGLSurfaceView;->onRestart()V

    .line 372
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 457
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->beforeOnResume()V

    const/4 v0, 0x3

    .line 458
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->setVolumeControlStream(I)V

    const-string v0, "notification"

    .line 460
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 461
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 463
    invoke-static {p0}, Lklb/android/GameEngine/sdkwrapper/SDKWrapper;->onResume(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_UsePause:Z

    .line 465
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->onResume()V

    .line 466
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->invalidateSystemUi()V

    .line 468
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->setMannerMode()V

    .line 470
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->registerHeadsetReceiver()V

    .line 472
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isWindowFocused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    goto :goto_0

    .line 476
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->resumeView()V

    .line 479
    :goto_0
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 1163
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1164
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnStart()V

    .line 1165
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "nid"

    .line 1171
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1175
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nid,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseOnExtensionEventRequest"

    const-string v3, "NotificationOpened"

    invoke-virtual {v0, v2, v3, v1}, Lklb/android/GameEngine/KLBExtensionRuntime;->onExtensionEventRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1181
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    .line 1182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1184
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1187
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth"

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1192
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 1193
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " port : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " query : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEST_SCHEME"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const-string v2, "error="

    .line 1196
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v2, "code="

    .line 1198
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    const/4 v1, 0x0

    .line 1203
    :cond_2
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lklb/android/GameEngine/PFInterface;->onKLabIdResult(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1210
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1211
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterOnStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 394
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->invalidateSystemUi()V

    .line 395
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->isWindowFocused:Z

    .line 396
    iget-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    if-eqz p1, :cond_0

    .line 397
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->resumeView()V

    const/4 p1, 0x0

    .line 398
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->resumeRequested:Z

    :cond_0
    return-void
.end method

.method public putControl(Landroid/view/View;IIII)Z
    .locals 0

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p4, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 763
    iget-object p3, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public refreshSystemUi()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 410
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->setImmersiveMode(I)V

    .line 413
    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isSystemUiDirty:Z

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public replaceView(Landroid/view/View;IIII)Z
    .locals 1

    .line 768
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 769
    invoke-virtual/range {p0 .. p5}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public requireLocationPermission()V
    .locals 12

    .line 1294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1296
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-string v9, "permission gained"

    invoke-virtual/range {v2 .. v9}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1306
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1307
    iput-boolean v1, p0, Lklb/android/GameEngine/GameEngineActivity;->shouldGPSCallbackLua:Z

    goto :goto_0

    .line 1314
    :cond_1
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-string v11, "permission gained"

    invoke-virtual/range {v4 .. v11}, Lklb/android/GameEngine/PFInterface;->OnLocationCallback(IIDDLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requireNotificationPermission()V
    .locals 3

    .line 1322
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "permission gained"

    invoke-virtual {v0, v1, v1, v2}, Lklb/android/GameEngine/PFInterface;->OnNotificationCallback(IILjava/lang/String;)V

    return-void
.end method

.method public requireWritePhotoPermission()V
    .locals 3

    .line 1349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1351
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1354
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    invoke-static {}, Lklb/android/GameEngine/PFInterface;->savePhotoToAlbum()V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1357
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setImmersiveMode(I)V
    .locals 4

    .line 419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 421
    new-instance v1, Lklb/android/GameEngine/GameEngineActivity$3;

    invoke-direct {v1, p0}, Lklb/android/GameEngine/GameEngineActivity$3;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setInstallStatus(Z)V
    .locals 0

    .line 828
    iput-boolean p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_installEnd:Z

    return-void
.end method

.method public setMannerMode()V
    .locals 7

    const-string v0, "audio"

    .line 875
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 876
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 877
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 880
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v3, v6, :cond_2

    return-void

    .line 884
    :cond_2
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    const/4 v6, 0x5

    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 886
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v3, :cond_3

    .line 888
    iput v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto/16 :goto_1

    .line 890
    :cond_3
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v3, :cond_4

    .line 892
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto/16 :goto_1

    .line 894
    :cond_4
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-nez v3, :cond_10

    .line 896
    :cond_6
    iput v5, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 899
    :cond_7
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 901
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v3, :cond_8

    .line 903
    iput v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 905
    :cond_8
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v3, v6, :cond_9

    .line 907
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 912
    :cond_9
    iput v5, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 916
    :cond_a
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    if-eqz v3, :cond_d

    .line 918
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v3, :cond_b

    .line 920
    iput v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 922
    :cond_b
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v3, v6, :cond_c

    .line 924
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 928
    :cond_c
    iput v5, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    :cond_d
    if-nez v3, :cond_10

    .line 933
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-eqz v3, :cond_e

    .line 935
    iput v6, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 937
    :cond_e
    iget-boolean v3, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    iget-boolean v6, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    if-ne v3, v6, :cond_f

    .line 939
    iput v2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    goto :goto_1

    .line 943
    :cond_f
    iput v5, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    .line 947
    :cond_10
    :goto_1
    iget v3, p0, Lklb/android/GameEngine/GameEngineActivity;->m_mediaVolume:I

    if-eq v3, v2, :cond_11

    .line 948
    invoke-virtual {v0, v1, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 950
    :cond_11
    iput-boolean v4, p0, Lklb/android/GameEngine/GameEngineActivity;->isMannerModeOn:Z

    .line 951
    iget-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->headsetEquipped:Z

    iput-boolean v0, p0, Lklb/android/GameEngine/GameEngineActivity;->isWearingHeadset:Z

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 186
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lklb/android/GameEngine/GameEngineActivity$1;

    invoke-direct {v2, p0, v0, p1}, Lklb/android/GameEngine/GameEngineActivity$1;-><init>(Lklb/android/GameEngine/GameEngineActivity;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertTitle:Ljava/lang/String;

    .line 1062
    iput-object p2, p0, Lklb/android/GameEngine/GameEngineActivity;->m_alertMessage:Ljava/lang/String;

    .line 1063
    new-instance p1, Lklb/android/GameEngine/GameEngineActivity$5;

    invoke-direct {p1, p0}, Lklb/android/GameEngine/GameEngineActivity$5;-><init>(Lklb/android/GameEngine/GameEngineActivity;)V

    invoke-virtual {p0, p1}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1116
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1118
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1120
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 1125
    :cond_1
    invoke-virtual {p0, p2}, Lklb/android/GameEngine/GameEngineActivity;->startBrowser(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startBrowser(Ljava/lang/String;)V
    .locals 2

    .line 1092
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1093
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1094
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startExternalApplicationMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1028
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1030
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    .line 1031
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 1032
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string p1, "text/plain"

    .line 1044
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    invoke-super {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1054
    :catch_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    const-string p2, "ENG_AND_ALERT_TITLE"

    const-string p3, "Alert"

    invoke-virtual {p1, p2, p3}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1055
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p2

    const-string p3, "ENG_AND_PLEASE_ENABLE_MAILER"

    const-string v0, "\u30e1\u30fc\u30e9\u30fc\u3092\u6709\u52b9\u306b\u3057\u3066\u4e0b\u3055\u3044"

    invoke-virtual {p2, p3, v0}, Lklb/android/GameEngine/PFInterface;->getLocalizedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1053
    invoke-virtual {p0, p1, p2}, Lklb/android/GameEngine/GameEngineActivity;->startAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startMap(DD)V
    .locals 2

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geo:?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "(\u73fe\u5728\u5730)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1100
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.google.android.apps.maps"

    .line 1101
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1104
    invoke-virtual {p0, p2}, Lklb/android/GameEngine/GameEngineActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public startSettings()V
    .locals 3

    .line 1110
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lklb/android/GameEngine/GameEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1111
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameEngineActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startShare(Landroid/content/Intent;)V
    .locals 1

    const v0, 0x2ebbb

    .line 1444
    invoke-virtual {p0, p1, v0}, Lklb/android/GameEngine/GameEngineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopGetLocation()Z
    .locals 1

    .line 1377
    iget-object v0, p0, Lklb/android/GameEngine/GameEngineActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1378
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/GameEngineActivity;->stopLocation()V

    const/4 v0, 0x1

    return v0
.end method
