.class public Lklb/android/GameEngine/MovieTextureWrapper;
.super Ljava/lang/Object;
.source "MovieTextureWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public m_bottomUV:F

.field public m_finished:Z

.field public m_height:I

.field public m_isInited:Z

.field private m_isPlay:Z

.field public m_leftUV:F

.field public m_matrix:[F

.field private m_mediaPlayer:Landroid/media/MediaPlayer;

.field public m_movieAsset:Landroid/content/res/AssetFileDescriptor;

.field public m_renderSurface:Landroid/view/Surface;

.field public m_renderTexture:Landroid/graphics/SurfaceTexture;

.field public m_rightUV:F

.field public m_topUV:F

.field public m_width:I

.field public movieID:I

.field public next:Lklb/android/GameEngine/MovieTextureWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_height:I

    .line 24
    iput v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_width:I

    .line 25
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_finished:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isInited:Z

    .line 33
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 154
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_movieAsset:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 165
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :cond_1
    :goto_1
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 174
    :try_start_2
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :cond_2
    :goto_2
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 183
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    const/4 v0, -0x1

    .line 189
    iput v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->movieID:I

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->next:Lklb/android/GameEngine/MovieTextureWrapper;

    .line 191
    iput-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_movieAsset:Landroid/content/res/AssetFileDescriptor;

    .line 192
    iput-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 193
    iput-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderTexture:Landroid/graphics/SurfaceTexture;

    .line 194
    iput-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 196
    iput v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_height:I

    .line 197
    iput v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_width:I

    return-void
.end method

.method public createMovie(Ljava/lang/String;III)Z
    .locals 3

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_finished:Z

    const/4 v1, 0x0

    .line 42
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 44
    iget-object v2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 45
    iget-object v2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 46
    iget-object v2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 47
    iget-object v2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 53
    iget-object v2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 56
    new-instance p1, Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderTexture:Landroid/graphics/SurfaceTexture;

    .line 57
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderSurface:Landroid/view/Surface;

    .line 58
    iget-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 61
    iget-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iput p3, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_width:I

    .line 71
    iput p4, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_height:I

    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_height:I

    .line 66
    iget-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p1

    iput p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_width:I

    :goto_1
    const/16 p1, 0x10

    .line 74
    new-array p1, p1, [F

    iput-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_matrix:[F

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_leftUV:F

    .line 89
    iput p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_topUV:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 90
    iput p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_rightUV:F

    .line 91
    iput p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_bottomUV:F

    .line 93
    iget-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 94
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    .line 95
    iget-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 96
    iget-object p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 97
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_finished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getInfo(I)F
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    iget p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_bottomUV:F

    return p1

    .line 145
    :cond_1
    iget p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_rightUV:F

    return p1

    .line 144
    :cond_2
    iget p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_topUV:F

    return p1

    .line 143
    :cond_3
    iget p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_leftUV:F

    return p1

    .line 142
    :cond_4
    iget p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_height:I

    :goto_0
    int-to-float p1, p1

    return p1

    .line 141
    :cond_5
    iget p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_width:I

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_finished:Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "jni"

    const-string v1, "onSeekComplete"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isInited:Z

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isInited:Z

    :cond_0
    return-void
.end method

.method public resetLoop()V
    .locals 2

    .line 246
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 247
    iget-object v1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setPause()V
    .locals 1

    .line 239
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    return-void
.end method

.method public setPauseOnResign()V
    .locals 2

    .line 257
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public setPlay()V
    .locals 2

    .line 232
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 234
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    return-void
.end method

.method public setPlayOnResume()V
    .locals 2

    .line 252
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_isPlay:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public updateTexture()V
    .locals 5

    .line 114
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 115
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_renderTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_matrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 133
    iget-object v0, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_matrix:[F

    const/4 v1, 0x3

    aget v2, v0, v1

    iput v2, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_leftUV:F

    const/4 v2, 0x7

    .line 134
    aget v3, v0, v2

    iput v3, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_topUV:F

    const/4 v3, 0x0

    .line 135
    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    add-float/2addr v3, v4

    aget v1, v0, v1

    add-float/2addr v3, v1

    iput v3, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_rightUV:F

    const/4 v1, 0x4

    .line 136
    aget v1, v0, v1

    const/4 v3, 0x5

    aget v3, v0, v3

    add-float/2addr v1, v3

    aget v0, v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lklb/android/GameEngine/MovieTextureWrapper;->m_bottomUV:F

    return-void
.end method
