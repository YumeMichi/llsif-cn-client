.class public Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;
.super Lcom/ghome/sdk/common/BaseActivity;
.source "QRCodeScanActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "QRCodeScanActivity"

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

.field private mCodeKey:Ljava/lang/String;

.field private mPromote:Ljava/lang/String;

.field private mScanType:Ljava/lang/String;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private viewfinderView:Lcom/google/zxing/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/ghome/sdk/common/BaseActivity;-><init>()V

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mScanType:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mCodeKey:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mPromote:Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$12;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$12;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mCodeKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->reportCancelLogin()V

    return-void
.end method

.method static synthetic access$202(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Lcom/google/zxing/decoding/CaptureActivityHandler;)Lcom/google/zxing/decoding/CaptureActivityHandler;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/util/Vector;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->decodeFormats:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->characterSet:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mPromote:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mPromote:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mScanType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initBeepSound()V
    .locals 7

    .line 409
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 413
    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->setVolumeControlStream(I)V

    .line 414
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 415
    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 416
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 418
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "zxbeep"

    invoke-static {p0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getRawId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 421
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 422
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 423
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 368
    :try_start_0
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    iget-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 373
    new-instance p1, Lcom/google/zxing/decoding/CaptureActivityHandler;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->decodeFormats:Ljava/util/Vector;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->characterSet:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    :catch_0
    :cond_0
    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .line 433
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 436
    :cond_0
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->vibrate:Z

    if-eqz v0, :cond_1

    const-string v0, "vibrator"

    .line 437
    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0xc8

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method private reportCancelLogin()V
    .locals 2

    .line 65
    sget-object v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->TAG:Ljava/lang/String;

    const-string v1, "call reportCancelLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mCodeKey:Ljava/lang/String;

    new-instance v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$1;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$1;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-static {p0, p0, v0, v1}, Lcom/ghomesdk/gameplus/impl/ServerApi;->cancelScanLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method private scanInit()V
    .locals 3

    const-string v0, "scanner_view"

    .line 131
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 132
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 133
    iget-boolean v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->decodeFormats:Ljava/util/Vector;

    .line 140
    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->characterSet:Ljava/lang/String;

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->playBeep:Z

    const-string v1, "audio"

    .line 143
    invoke-virtual {p0, v1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->playBeep:Z

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->initBeepSound()V

    .line 148
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->vibrate:Z

    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/view/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/google/zxing/view/ViewfinderView;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;)V
    .locals 9

    .line 173
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/InactivityTimer;->onActivity()V

    .line 174
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->playBeepSoundAndVibrate()V

    .line 177
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[?]"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    array-length v1, v0

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 184
    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$4;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$4;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$5;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$5;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 202
    aget-object v3, v0, v1

    const/4 v3, 0x1

    .line 203
    aget-object v0, v0, v3

    const-string v4, "[&]"

    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    array-length v4, v0

    const-string v5, "="

    if-lt v4, v2, :cond_3

    .line 208
    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    aget-object v4, v0, v1

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 209
    aget-object v4, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lt v4, v2, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    goto :goto_0

    :cond_1
    const-string v4, "unknown"

    :goto_0
    iput-object v4, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mScanType:Ljava/lang/String;

    .line 211
    :cond_2
    aget-object v0, v0, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 216
    :goto_1
    iget-object v4, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mScanType:Ljava/lang/String;

    const-string v8, "login"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "pay"

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mScanType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 217
    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$6;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$6;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$7;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$7;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 236
    :cond_4
    new-array v4, v1, [Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 238
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 240
    :cond_5
    array-length v0, v4

    if-ne v0, v2, :cond_7

    aget-object v0, v4, v1

    const-string v2, "codeKey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    aget-object v0, v4, v3

    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mCodeKey:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mScanType:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "codeKey="

    if-eqz v0, :cond_6

    .line 258
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mCodeKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&qrcodeExtend="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeExtend:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/ghomesdk/gameplus/utils/SignUtil;->sign(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-static {}, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->getConfirmPayQRCodeUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mCodeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeExtend:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$9;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    move-object v0, p0

    move-object v1, p0

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/GamePlus;->my_doPostRequest(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 311
    :cond_6
    invoke-static {}, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->getQrCodeScanResultUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->mCodeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&extend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeStaticField;->qrcodeExtend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;

    invoke-direct {v5, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$10;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    const-string v8, ""

    move-object v0, p0

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/GamePlus;->my_doPostRequest(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$11;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$11;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 243
    :cond_7
    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$8;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$8;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/ghome/sdk/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "gl_qrcodescan_activity"

    .line 97
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    const-string p1, "viewfinder_content"

    .line 100
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/view/ViewfinderView;

    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->viewfinderView:Lcom/google/zxing/view/ViewfinderView;

    const-string p1, "btn_close"

    .line 101
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 102
    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$3;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->hasSurface:Z

    .line 121
    new-instance p1, Lcom/google/zxing/decoding/InactivityTimer;

    invoke-direct {p1, p0}, Lcom/google/zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->inactivityTimer:Lcom/google/zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/decoding/InactivityTimer;->shutdown()V

    .line 164
    invoke-super {p0}, Lcom/ghome/sdk/common/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 78
    new-instance v0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity$2;-><init>(Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;)V

    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ghome/sdk/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/ghome/sdk/common/BaseActivity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/google/zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->handler:Lcom/google/zxing/decoding/CaptureActivityHandler;

    .line 158
    :cond_0
    invoke-static {}, Lcom/google/zxing/camera/CameraManager;->get()Lcom/google/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->closeDriver()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/ghome/sdk/common/BaseActivity;->onResume()V

    .line 127
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->scanInit()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->hasSurface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->hasSurface:Z

    .line 386
    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/qrcode/QRCodeScanActivity;->hasSurface:Z

    return-void
.end method
