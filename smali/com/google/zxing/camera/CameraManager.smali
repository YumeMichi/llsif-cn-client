.class public final Lcom/google/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x168

.field private static final MAX_FRAME_WIDTH:I = 0x1e0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static cameraManager:Lcom/google/zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/google/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    .line 57
    :goto_0
    sput v0, Lcom/google/zxing/camera/CameraManager;->SDK_INT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    .line 108
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 110
    new-instance p1, Lcom/google/zxing/camera/PreviewCallback;

    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/camera/PreviewCallback;-><init>(Lcom/google/zxing/camera/CameraConfigurationManager;Z)V

    iput-object p1, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    .line 111
    new-instance p1, Lcom/google/zxing/camera/AutoFocusCallback;

    invoke-direct {p1}, Lcom/google/zxing/camera/AutoFocusCallback;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    return-void
.end method

.method public static get()Lcom/google/zxing/camera/CameraManager;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/zxing/camera/CameraManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 84
    sget-object v0, Lcom/google/zxing/camera/CameraManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/google/zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/google/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/zxing/camera/CameraManager;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/camera/PlanarYUVLuminanceSource;
    .locals 11

    .line 326
    invoke-virtual {p0}, Lcom/google/zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    .line 327
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    const-string v2, "yuv420p"

    .line 340
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    new-instance v0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v9, p2

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v0

    .line 344
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported picture format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_1
    new-instance v8, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public closeDriver()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/google/zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 150
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    return-object v1

    .line 230
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0xa

    .line 231
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0xa

    if-lt v2, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 239
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 240
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    .line 241
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v2, v1

    add-int/2addr v1, v0

    invoke-direct {v3, v2, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 279
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/google/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 286
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 287
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 288
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 289
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 290
    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v0
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 122
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 123
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 128
    iget-boolean p1, p0, Lcom/google/zxing/camera/CameraManager;->initialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/google/zxing/camera/CameraManager;->initialized:Z

    .line 130
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/google/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 140
    invoke-static {}, Lcom/google/zxing/camera/FlashlightManager;->enableFlashlight()V

    goto :goto_0

    .line 124
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 209
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 191
    iget-boolean p1, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFlashLight(Z)Z
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 365
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 367
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    const-string p1, "torch"

    .line 373
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    .line 377
    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return v4

    :cond_4
    return v1

    :cond_5
    const-string p1, "off"

    .line 385
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v4

    .line 389
    :cond_6
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 390
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return v4

    :cond_7
    :goto_0
    return v1
.end method

.method public startPreview()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_1

    .line 170
    iget-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 174
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 175
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusCallback:Lcom/google/zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 176
    iput-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    :cond_1
    return-void
.end method
