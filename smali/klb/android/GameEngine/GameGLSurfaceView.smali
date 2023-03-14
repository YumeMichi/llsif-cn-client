.class public Lklb/android/GameEngine/GameGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GameGLSurfaceView.java"


# static fields
.field static final TOUCH_MAX:I = 0xa


# instance fields
.field private context:Lklb/android/GameEngine/GameEngineActivity;

.field mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

.field private touch_alloc_cursor:I

.field private touch_id:[I

.field private touch_x:[I

.field private touch_y:[I


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V
    .locals 4

    .line 16
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 9
    new-array v1, v0, [I

    iput-object v1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    .line 10
    new-array v1, v0, [I

    iput-object v1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    .line 11
    new-array v1, v0, [I

    iput-object v1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    .line 17
    iput-object p1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->context:Lklb/android/GameEngine/GameEngineActivity;

    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->getGLVersion()I

    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 22
    invoke-static {}, Lklb/android/GameEngine/KLBExtensionRuntime;->getInstance()Lklb/android/GameEngine/KLBExtensionRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Lklb/android/GameEngine/KLBExtensionRuntime;->afterGlesVerDetermined(I)V

    .line 25
    new-instance v0, Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-direct {v0, p1, p2}, Lklb/android/GameEngine/GLES20GameRenderer;-><init>(Lklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    .line 26
    iget-object p1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {p0, p1}, Lklb/android/GameEngine/GameGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method private TouchClear()V
    .locals 4

    .line 214
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 217
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 218
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    iget-object v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    aput v0, v3, v1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lklb/android/GameEngine/GameGLSurfaceView;->TouchClear()V

    .line 40
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->onActivityPause()V

    .line 43
    iget-object v0, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v0}, Lklb/android/GameEngine/GLES20GameRenderer;->resetPreTime()V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameGLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lklb/android/GameEngine/GameGLSurfaceView;->TouchClear()V

    .line 33
    iget-object v0, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v0}, Lklb/android/GameEngine/GLES20GameRenderer;->resetPreTime()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lklb/android/GameEngine/GameGLSurfaceView;->TouchClear()V

    .line 51
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lklb/android/GameEngine/PFInterface;->onActivityResume()V

    .line 54
    iget-object v0, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v0}, Lklb/android/GameEngine/GLES20GameRenderer;->resetPreTime()V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/GameGLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 60
    iget-object v0, p0, Lklb/android/GameEngine/GameGLSurfaceView;->mRenderer:Lklb/android/GameEngine/GLES20GameRenderer;

    invoke-virtual {v0}, Lklb/android/GameEngine/GLES20GameRenderer;->isInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v2, :cond_17

    const/4 v6, 0x2

    if-eq v2, v1, :cond_13

    if-eq v2, v6, :cond_d

    const/4 v7, 0x3

    if-eq v2, v7, :cond_9

    const/4 v7, 0x5

    if-eq v2, v7, :cond_5

    const/4 v7, 0x6

    if-eq v2, v7, :cond_1

    goto/16 :goto_10

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 152
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    :goto_0
    if-ge v5, v4, :cond_3

    .line 155
    iget-object v8, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v8, v8, v5

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    :goto_1
    if-gez v5, :cond_4

    goto/16 :goto_10

    .line 161
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 163
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aput v3, v2, v5

    float-to-int v2, v4

    float-to-int p1, p1

    .line 164
    invoke-virtual {v0, v5, v6, v2, p1}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    goto/16 :goto_10

    .line 104
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_7

    .line 108
    iget v8, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    add-int/2addr v8, v7

    rem-int/2addr v8, v4

    .line 109
    iget-object v9, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v9, v9, v8

    if-gez v9, :cond_6

    add-int/lit8 v3, v8, 0x1

    .line 111
    rem-int/2addr v3, v4

    iput v3, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    move v3, v8

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-gez v3, :cond_8

    goto/16 :goto_10

    .line 116
    :cond_8
    iget-object v4, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aput v6, v4, v3

    .line 117
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 118
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 119
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    float-to-int v4, v4

    aput v4, v2, v3

    .line 120
    iget-object v2, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    float-to-int p1, p1

    aput p1, v2, v3

    .line 121
    invoke-virtual {v0, v3, v5, v4, p1}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    goto/16 :goto_10

    .line 189
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_1b

    .line 191
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v4, :cond_b

    .line 194
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v9

    if-ne v8, v10, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    const/4 v9, -0x1

    :goto_6
    if-gez v9, :cond_c

    goto/16 :goto_10

    .line 200
    :cond_c
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 201
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 202
    iget-object v11, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aput v3, v11, v9

    float-to-int v8, v8

    float-to-int v10, v10

    .line 203
    invoke-virtual {v0, v9, v6, v8, v10}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 127
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_1b

    .line 129
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_f

    .line 132
    iget-object v9, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v9, v9, v8

    if-ne v7, v9, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    const/4 v8, -0x1

    :goto_9
    if-gez v8, :cond_10

    goto/16 :goto_10

    .line 138
    :cond_10
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 139
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v7, v7

    .line 140
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    aget v10, v10, v8

    if-ne v7, v10, :cond_11

    float-to-int v10, v9

    iget-object v11, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    aget v11, v11, v8

    if-eq v10, v11, :cond_12

    .line 142
    :cond_11
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    aput v7, v10, v8

    .line 143
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    float-to-int v9, v9

    aput v9, v10, v8

    .line 144
    invoke-virtual {v0, v8, v1, v7, v9}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 169
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v2, :cond_1b

    .line 171
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v4, :cond_15

    .line 174
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v10, v10, v9

    if-ne v8, v10, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_15
    const/4 v9, -0x1

    :goto_c
    if-gez v9, :cond_16

    goto :goto_10

    .line 180
    :cond_16
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 181
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 182
    iget-object v11, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aput v3, v11, v9

    float-to-int v8, v8

    float-to-int v10, v10

    .line 183
    invoke-virtual {v0, v9, v6, v8, v10}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 80
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v2, :cond_1b

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v4, :cond_19

    .line 84
    iget v8, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    add-int/2addr v8, v7

    rem-int/2addr v8, v4

    .line 85
    iget-object v9, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    aget v9, v9, v8

    if-gez v9, :cond_18

    add-int/lit8 v7, v8, 0x1

    .line 87
    rem-int/2addr v7, v4

    iput v7, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_alloc_cursor:I

    goto :goto_f

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_19
    const/4 v8, -0x1

    :goto_f
    if-gez v8, :cond_1a

    goto :goto_10

    .line 92
    :cond_1a
    iget-object v7, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_id:[I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    aput v9, v7, v8

    .line 93
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 94
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 95
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_x:[I

    float-to-int v7, v7

    aput v7, v10, v8

    .line 96
    iget-object v10, p0, Lklb/android/GameEngine/GameGLSurfaceView;->touch_y:[I

    float-to-int v9, v9

    aput v9, v10, v8

    .line 97
    invoke-virtual {v0, v8, v5, v7, v9}, Lklb/android/GameEngine/PFInterface;->inputPoint(IIII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 208
    :cond_1b
    :goto_10
    iget-object p1, p0, Lklb/android/GameEngine/GameGLSurfaceView;->context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {p1}, Lklb/android/GameEngine/GameEngineActivity;->refreshSystemUi()V

    return v1
.end method
