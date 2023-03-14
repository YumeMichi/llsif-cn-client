.class public Lklb/android/GameEngine/GLES20GameRenderer;
.super Ljava/lang/Object;
.source "GLES20GameRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static FILE_PATH:Ljava/lang/String;

.field private static mBInitialize:Z


# instance fields
.field private mContext:Lklb/android/GameEngine/GameEngineActivity;

.field private mPreTime:J

.field private m_Height:I

.field private m_Width:I

.field runCtrl:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    .line 35
    iput-object v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->runCtrl:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    .line 26
    sput-object p2, Lklb/android/GameEngine/GLES20GameRenderer;->FILE_PATH:Ljava/lang/String;

    .line 27
    new-instance p1, Lklb/android/GameEngine/GLES20GameRenderer$1;

    invoke-direct {p1, p0}, Lklb/android/GameEngine/GLES20GameRenderer$1;-><init>(Lklb/android/GameEngine/GLES20GameRenderer;)V

    iput-object p1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->runCtrl:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .line 20
    sget-boolean v0, Lklb/android/GameEngine/GLES20GameRenderer;->mBInitialize:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 41
    iget-wide v2, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    const/4 p1, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    long-to-int v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 42
    :goto_0
    iput-wide v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    .line 43
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    const/16 v1, 0x1b58

    if-le v3, v1, :cond_1

    const-string v1, "Cpp"

    const-string v2, "long time frame!!"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    iget-object v1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v1}, Lklb/android/GameEngine/GameEngineActivity;->IsInstallEnd()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 56
    :cond_2
    sget-boolean v1, Lklb/android/GameEngine/GLES20GameRenderer;->mBInitialize:Z

    if-nez v1, :cond_3

    .line 57
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    iget v2, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Width:I

    iget v4, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Height:I

    sget-object v5, Lklb/android/GameEngine/GLES20GameRenderer;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Lklb/android/GameEngine/PFInterface;->callInit(IILjava/lang/String;)Z

    .line 58
    sput-boolean p1, Lklb/android/GameEngine/GLES20GameRenderer;->mBInitialize:Z

    .line 61
    :cond_3
    iget-object v1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v1}, Lklb/android/GameEngine/GameEngineActivity;->IsUsePause()Z

    move-result v1

    if-ne v1, p1, :cond_4

    .line 63
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v1

    invoke-virtual {v1}, Lklb/android/GameEngine/PFInterface;->clientResumeGame()V

    .line 64
    iget-object v1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lklb/android/GameEngine/GameEngineActivity;->SetUsePause(Z)V

    .line 66
    :cond_4
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v1

    invoke-virtual {v1}, Lextension/ShengQu/GHomeExtension;->IsGhomeInited()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 70
    :cond_5
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object v1

    invoke-virtual {v1}, Lextension/ShengQu/GHomeExtension;->IsGhomeLoginCallBack()Z

    move-result v1

    if-ne v1, p1, :cond_6

    .line 71
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p1

    invoke-virtual {p1}, Lextension/ShengQu/GHomeExtension;->doGhomeLoginCallBack()V

    .line 72
    :cond_6
    invoke-virtual {v0, v3}, Lklb/android/GameEngine/PFInterface;->frameFlip(I)V

    .line 75
    iget-object p1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mContext:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->runCtrl:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lklb/android/GameEngine/GameEngineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    if-le p2, p3, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    .line 92
    :goto_0
    iput p1, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Width:I

    if-ge p3, p2, :cond_1

    move p2, p3

    .line 93
    :cond_1
    iput p2, p0, Lklb/android/GameEngine/GLES20GameRenderer;->m_Height:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public resetPreTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lklb/android/GameEngine/GLES20GameRenderer;->mPreTime:J

    return-void
.end method
