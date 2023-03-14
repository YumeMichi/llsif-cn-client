.class public Lcom/ghome/gshare/record/GRecordEngine;
.super Ljava/lang/Object;
.source "GRecordEngine.java"


# static fields
.field private static final AUDIO_REQUEST_CODE:I = 0xa9

.field private static final AUDIO_STORAGE_REQUEST_CODE:I = 0xab

.field private static final RECORD_REQUEST_CODE:I = 0xa5

.field private static final STORAGE_REQUEST_CODE:I = 0xa7

.field private static TAG:Ljava/lang/String; = "GRecordEngine"

.field public static dpiO:I

.field private static mActivity:Landroid/app/Activity;

.field private static mConnection:Landroid/content/ServiceConnection;

.field static mListener:Lcom/ghome/gshare/listener/GShareRecordListener;

.field private static mRecordService:Lcom/ghome/gshare/record/RecordService;

.field static mStatus:Lcom/ghome/gshare/record/RecordStatus;

.field private static outFilePath:Ljava/lang/String;

.field private static projectionManager:Landroid/media/projection/MediaProjectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ghome/gshare/record/RecordService;)Lcom/ghome/gshare/record/RecordService;
    .locals 0

    .line 31
    sput-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mRecordService:Lcom/ghome/gshare/record/RecordService;

    return-object p0
.end method

.method public static destroyRecordService()V
    .locals 2

    .line 181
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ghome/gshare/record/GRecordEngine;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public static doStart()V
    .locals 3

    .line 75
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    sput-object v0, Lcom/ghome/gshare/record/GRecordEngine;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 76
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xa5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static getRecordFilePath()Ljava/lang/String;
    .locals 1

    .line 206
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->outFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getRecordStatus()I
    .locals 1

    .line 210
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mStatus:Lcom/ghome/gshare/record/RecordStatus;

    invoke-virtual {v0}, Lcom/ghome/gshare/record/RecordStatus;->ordinal()I

    move-result v0

    return v0
.end method

.method private static getSaveDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/ScreenRecord/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 173
    :cond_0
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record video save path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getScreenHeight()I
    .locals 3

    .line 146
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 147
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 150
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static getScreenWidth()I
    .locals 3

    .line 131
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 132
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 135
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static initRecordService(Landroid/app/Activity;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0xa5

    if-ne p0, v0, :cond_2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_2

    .line 83
    sget-object p1, Lcom/ghome/gshare/record/GRecordEngine;->mListener:Lcom/ghome/gshare/listener/GShareRecordListener;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Lcom/ghome/gshare/listener/GShareRecordListener;->onStartRecordSuccess()V

    .line 86
    :cond_0
    sget-object p1, Lcom/ghome/gshare/record/RecordStatus;->RECORDING:Lcom/ghome/gshare/record/RecordStatus;

    sput-object p1, Lcom/ghome/gshare/record/GRecordEngine;->mStatus:Lcom/ghome/gshare/record/RecordStatus;

    .line 88
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p1, Lcom/ghome/gshare/record/GRecordEngine;->dpiO:I

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 93
    invoke-static {p1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    .line 94
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/ghome/gshare/record/RecordService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "code"

    .line 95
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "data"

    .line 96
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/ghome/gshare/record/GRecordEngine;->getSaveDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".mp4"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ghome/gshare/record/GRecordEngine;->outFilePath:Ljava/lang/String;

    .line 98
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record video outFilePath: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/record/GRecordEngine;->outFilePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v1}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->outFilePath:Ljava/lang/String;

    const-string p2, "path"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->getScreenWidth()I

    move-result p0

    const-string p2, "width"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->getScreenHeight()I

    move-result p0

    const-string p2, "height"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p0, p2, :cond_1

    .line 103
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 105
    :cond_1
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    :goto_0
    new-instance p0, Lcom/ghome/gshare/record/GRecordEngine$1;

    invoke-direct {p0}, Lcom/ghome/gshare/record/GRecordEngine$1;-><init>()V

    sput-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mConnection:Landroid/content/ServiceConnection;

    .line 118
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    sget-object p2, Lcom/ghome/gshare/record/GRecordEngine;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    .line 121
    :cond_2
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mListener:Lcom/ghome/gshare/listener/GShareRecordListener;

    if-eqz p0, :cond_3

    const-string p1, "\u5f55\u5c4f\u6743\u9650\u8bf7\u6c42\u5931\u8d25\uff0c\u5f55\u5c4f\u7ed3\u675f"

    .line 122
    invoke-interface {p0, p1}, Lcom/ghome/gshare/listener/GShareRecordListener;->onStartRecordFailed(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xab

    if-ne p0, v0, :cond_7

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 217
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_5

    .line 219
    aget v3, p2, v1

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 223
    :cond_1
    aget-object v4, p1, v1

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 224
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_4

    const-string v3, "\u5b58\u50a8\u6743\u9650"

    .line 226
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, "android.permission.RECORD_AUDIO"

    .line 228
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 231
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "\u3001"

    .line 233
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, "\u5f55\u97f3\u6743\u9650"

    .line 235
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 240
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->doStart()V

    goto :goto_2

    .line 242
    :cond_6
    sget-object p1, Lcom/ghome/gshare/record/GRecordEngine;->mListener:Lcom/ghome/gshare/listener/GShareRecordListener;

    if-eqz p1, :cond_7

    .line 243
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u5f55\u5c4f\u7ed3\u675f"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/ghome/gshare/listener/GShareRecordListener;->onStartRecordFailed(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static startRecord(Lcom/ghome/gshare/listener/GShareRecordListener;)V
    .locals 5

    .line 58
    sput-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mListener:Lcom/ghome/gshare/listener/GShareRecordListener;

    .line 59
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 60
    :goto_0
    sget-object v3, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    .line 62
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->doStart()V

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    if-nez v3, :cond_3

    .line 65
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    const/16 v0, 0xab

    invoke-static {p0, v3, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    if-nez p0, :cond_4

    .line 67
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    const/16 v0, 0xa7

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 69
    :cond_4
    sget-object p0, Lcom/ghome/gshare/record/GRecordEngine;->mActivity:Landroid/app/Activity;

    new-array v0, v1, [Ljava/lang/String;

    aput-object v4, v0, v2

    const/16 v1, 0xa9

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public static stopRecord()Z
    .locals 3

    .line 188
    sget-object v0, Lcom/ghome/gshare/record/RecordStatus;->STOPRECORDING:Lcom/ghome/gshare/record/RecordStatus;

    sput-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mStatus:Lcom/ghome/gshare/record/RecordStatus;

    .line 189
    sget-object v0, Lcom/ghome/gshare/record/GRecordEngine;->mRecordService:Lcom/ghome/gshare/record/RecordService;

    invoke-virtual {v0}, Lcom/ghome/gshare/record/RecordService;->stopRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v1, Lcom/ghome/gshare/record/GRecordEngine;->mListener:Lcom/ghome/gshare/listener/GShareRecordListener;

    if-eqz v1, :cond_1

    .line 193
    sget-object v2, Lcom/ghome/gshare/record/GRecordEngine;->outFilePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ghome/gshare/listener/GShareRecordListener;->onEndRecordSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    sget-object v1, Lcom/ghome/gshare/record/GRecordEngine;->mListener:Lcom/ghome/gshare/listener/GShareRecordListener;

    if-eqz v1, :cond_1

    const-string v2, "\u5f55\u5c4f\u7ed3\u675f\u5931\u8d25"

    .line 198
    invoke-interface {v1, v2}, Lcom/ghome/gshare/listener/GShareRecordListener;->onEndRecordFailed(Ljava/lang/String;)V

    .line 201
    :cond_1
    :goto_0
    sget-object v1, Lcom/ghome/gshare/record/RecordStatus;->IDLE:Lcom/ghome/gshare/record/RecordStatus;

    sput-object v1, Lcom/ghome/gshare/record/GRecordEngine;->mStatus:Lcom/ghome/gshare/record/RecordStatus;

    return v0
.end method
