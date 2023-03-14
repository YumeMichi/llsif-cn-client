.class Lklb/android/GameEngine/MovieView;
.super Landroid/view/SurfaceView;
.source "MovieView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private finished:Z

.field private mPath:Ljava/lang/String;

.field private m_bWaitPlayerCreated:Z

.field private m_current:I

.field private m_index:I

.field private mp:Landroid/media/MediaPlayer;

.field private pause:Z

.field private playing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    .line 15
    iput-object p1, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 17
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    .line 18
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    .line 19
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    .line 20
    iput p1, p0, Lklb/android/GameEngine/MovieView;->m_current:I

    .line 24
    iput p2, p0, Lklb/android/GameEngine/MovieView;->m_index:I

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lklb/android/GameEngine/MovieView;->setZOrderOnTop(Z)V

    .line 26
    invoke-virtual {p0}, Lklb/android/GameEngine/MovieView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 27
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x3

    .line 28
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public isFinish()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 147
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    .line 151
    invoke-static {}, Lklb/android/GameEngine/PFInterface;->getInstance()Lklb/android/GameEngine/PFInterface;

    move-result-object p1

    sget v0, Lklb/android/GameEngine/PFInterface;->MOVIE_FINISHED:I

    iget v1, p0, Lklb/android/GameEngine/MovieView;->m_index:I

    invoke-virtual {p1, v0, v1}, Lklb/android/GameEngine/PFInterface;->toNativeSignal(II)V

    return-void
.end method

.method public pause()Z
    .locals 2

    .line 91
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 94
    :cond_0
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public resume()Z
    .locals 4

    .line 101
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    if-ne v2, v3, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 104
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    return v3

    :cond_0
    return v1
.end method

.method public setMoviePath(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 44
    iget-object v1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 48
    :cond_0
    iput-object p1, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0
.end method

.method public start()Z
    .locals 4

    .line 60
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 63
    iget-boolean v3, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    if-eqz v3, :cond_0

    .line 64
    iget v3, p0, Lklb/android/GameEngine/MovieView;->m_current:I

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 67
    iput-boolean v2, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 68
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->finished:Z

    return v2

    .line 74
    :cond_1
    iput-boolean v2, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    return v1
.end method

.method public stop()Z
    .locals 4

    .line 80
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 83
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->playing:Z

    .line 84
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    return v3

    :cond_0
    return v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 115
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    .line 116
    iget-object v0, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 117
    iget-object p1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    iget-object p1, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lklb/android/GameEngine/MovieView;->mPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lklb/android/GameEngine/MovieView;->setMoviePath(Ljava/lang/String;)Z

    .line 121
    :cond_0
    iget-boolean p1, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lklb/android/GameEngine/MovieView;->start()Z

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieView;->m_bWaitPlayerCreated:Z

    .line 126
    iget-boolean p1, p0, Lklb/android/GameEngine/MovieView;->pause:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lklb/android/GameEngine/MovieView;->start()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lklb/android/GameEngine/MovieView;->m_current:I

    .line 158
    iget-object p1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lklb/android/GameEngine/MovieView;->mp:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
