.class public Lcom/ghome/gshare/record/RecordService;
.super Landroid/app/Service;
.source "RecordService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghome/gshare/record/RecordService$RecordBinder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private height:I

.field private isRunning:Z

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private recordFilePath:Ljava/lang/String;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    const-class v0, Lcom/ghome/gshare/record/RecordService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ghome/gshare/record/RecordService;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/ghome/gshare/record/RecordService;->recordFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ghome/gshare/record/RecordService;->isRunning:Z

    return-void
.end method

.method private createMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .locals 1

    const-string v0, "media_projection"

    .line 112
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/record/RecordService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    return-object p1
.end method

.method private createMediaRecorder()Landroid/media/MediaRecorder;
    .locals 5

    .line 93
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v1, 0x2

    .line 95
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    const/4 v2, 0x3

    .line 97
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 99
    iget v1, p0, Lcom/ghome/gshare/record/RecordService;->width:I

    iget v2, p0, Lcom/ghome/gshare/record/RecordService;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    const/16 v1, 0x1e

    .line 100
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 101
    iget v2, p0, Lcom/ghome/gshare/record/RecordService;->width:I

    iget v3, p0, Lcom/ghome/gshare/record/RecordService;->height:I

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x1e

    int-to-double v1, v2

    const-wide v3, 0x3fc999999999999aL    # 0.2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 102
    iget-object v1, p0, Lcom/ghome/gshare/record/RecordService;->recordFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private createNotificationChannel()V
    .locals 6

    .line 48
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/ghome/gshare/record/RecordService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 51
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/ghome/gshare/record/RecordService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ic_launcher"

    invoke-static {p0, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 53
    invoke-static {p0, v3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "RecordService is running......"

    .line 54
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "notification_id"

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const-string v2, "notification"

    .line 63
    invoke-virtual {p0, v2}, Lcom/ghome/gshare/record/RecordService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 64
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    const-string v5, "notification_name"

    invoke-direct {v3, v1, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 65
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 69
    iput v1, v0, Landroid/app/Notification;->defaults:I

    const/16 v1, 0x6e

    .line 70
    invoke-virtual {p0, v1, v0}, Lcom/ghome/gshare/record/RecordService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lcom/ghome/gshare/record/RecordService;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/ghome/gshare/record/RecordService;->width:I

    iget v3, p0, Lcom/ghome/gshare/record/RecordService;->height:I

    sget v4, Lcom/ghome/gshare/record/GRecordEngine;->dpiO:I

    iget-object v5, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 44
    new-instance p1, Lcom/ghome/gshare/record/RecordService$RecordBinder;

    invoke-direct {p1, p0}, Lcom/ghome/gshare/record/RecordService$RecordBinder;-><init>(Lcom/ghome/gshare/record/RecordService;)V

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/ghome/gshare/record/RecordService;->createNotificationChannel()V

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p3, "path"

    .line 77
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ghome/gshare/record/RecordService;->recordFilePath:Ljava/lang/String;

    const/16 p3, 0x2d0

    const-string v0, "width"

    .line 78
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/ghome/gshare/record/RecordService;->width:I

    const/16 p3, 0x438

    const-string v0, "height"

    .line 79
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/ghome/gshare/record/RecordService;->height:I

    const/4 p3, -0x1

    const-string v0, "code"

    .line 80
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "data"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 82
    invoke-direct {p0, p3, p1}, Lcom/ghome/gshare/record/RecordService;->createMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/ghome/gshare/record/RecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 83
    invoke-direct {p0}, Lcom/ghome/gshare/record/RecordService;->createMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object p1

    iput-object p1, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 85
    invoke-direct {p0}, Lcom/ghome/gshare/record/RecordService;->createVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/ghome/gshare/record/RecordService;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 86
    iget-object p1, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 87
    iput-boolean p2, p0, Lcom/ghome/gshare/record/RecordService;->isRunning:Z

    :cond_0
    return p2
.end method

.method public release()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 138
    iput-object v1, p0, Lcom/ghome/gshare/record/RecordService;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 142
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 143
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 144
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 145
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 146
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 150
    iput-object v1, p0, Lcom/ghome/gshare/record/RecordService;->mediaProjection:Landroid/media/projection/MediaProjection;

    :cond_2
    return-void
.end method

.method public stopRecord()Z
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/ghome/gshare/record/RecordService;->isRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    iput-boolean v1, p0, Lcom/ghome/gshare/record/RecordService;->isRunning:Z

    .line 124
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 126
    invoke-virtual {p0}, Lcom/ghome/gshare/record/RecordService;->release()V

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/ghome/gshare/record/RecordService;->stopForeground(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/ghome/gshare/record/RecordService;->stopSelf()V

    return v0

    :cond_1
    return v1
.end method
