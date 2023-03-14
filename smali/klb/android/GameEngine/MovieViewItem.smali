.class Lklb/android/GameEngine/MovieViewItem;
.super Ljava/lang/Object;
.source "MovieViewItem.java"


# instance fields
.field private cmd_count:I

.field private cmdqueue:[I

.field public m_background:Z

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field public m_enabled:Z

.field private m_height:I

.field private m_index:I

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_params:Landroid/widget/FrameLayout$LayoutParams;

.field public m_reload:Z

.field public m_remove:Z

.field public m_update:Z

.field private m_url:Ljava/lang/String;

.field private m_video:Lklb/android/GameEngine/MovieView;

.field public m_visible:Z

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method public constructor <init>(ILklb/android/GameEngine/GameEngineActivity;Ljava/lang/String;IIIIZ)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    .line 14
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    .line 22
    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_visible:Z

    .line 28
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_enabled:Z

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    const/16 v2, 0x32

    .line 30
    new-array v2, v2, [I

    iput-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->cmdqueue:[I

    .line 31
    iput v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    .line 37
    iput p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_index:I

    .line 38
    iput-object p3, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    .line 39
    iput p4, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    .line 40
    iput p5, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    .line 41
    iput p6, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    .line 42
    iput p7, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    .line 43
    iput-object p2, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 44
    iput-boolean p8, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    .line 45
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_created:Z

    .line 46
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 47
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_remove:Z

    .line 48
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    return-void
.end method

.method private setStatus()V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-boolean v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_enabled:Z

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/MovieView;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieView;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/MovieView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cmd(I)V
    .locals 3

    .line 139
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->cmdqueue:[I

    iget v1, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    aput p1, v0, v1

    return-void
.end method

.method public cmdProc(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->resume()Z

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->pause()Z

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->start()Z

    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->stop()Z

    :goto_0
    return-void
.end method

.method public cmdQueue()V
    .locals 3

    .line 142
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_2

    iget v0, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    :goto_0
    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    if-ge v1, v2, :cond_1

    .line 144
    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->cmdqueue:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lklb/android/GameEngine/MovieViewItem;->cmdProc(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iput v0, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    :cond_2
    :goto_1
    return-void
.end method

.method public create()V
    .locals 10

    .line 81
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_created:Z

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Lklb/android/GameEngine/MovieView;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_index:I

    invoke-direct {v0, v1, v2}, Lklb/android/GameEngine/MovieView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    .line 84
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v4, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v5, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget v6, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v7, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    iget v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    add-int v8, v6, v0

    iget v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    add-int v9, v7, v0

    invoke-virtual/range {v4 .. v9}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    .line 96
    :goto_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/MovieView;->setMoviePath(Ljava/lang/String;)Z

    .line 97
    invoke-direct {p0}, Lklb/android/GameEngine/MovieViewItem;->setStatus()V

    .line 98
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_created:Z

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method public isFinish()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    invoke-virtual {v0}, Lklb/android/GameEngine/MovieView;->isFinish()Z

    move-result v0

    return v0
.end method

.method public move(IIII)V
    .locals 0

    .line 53
    iput p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    .line 54
    iput p2, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    .line 55
    iput p3, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    .line 56
    iput p4, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    return-void
.end method

.method public remove()Z
    .locals 2

    .line 125
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_remove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_2

    .line 128
    iget-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    if-eqz v1, :cond_1

    .line 129
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_MovieLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setEnable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 179
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_enabled:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    .line 174
    iput-boolean p1, p0, Lklb/android/GameEngine/MovieViewItem;->m_visible:Z

    return-void
.end method

.method public update()V
    .locals 10

    .line 103
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_1

    .line 104
    iget-boolean v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_background:Z

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 107
    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 108
    iget v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    iget-object v3, p0, Lklb/android/GameEngine/MovieViewItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v4, p0, Lklb/android/GameEngine/MovieViewItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v5, p0, Lklb/android/GameEngine/MovieViewItem;->m_layout:Landroid/widget/FrameLayout;

    iget v6, p0, Lklb/android/GameEngine/MovieViewItem;->m_x:I

    iget v7, p0, Lklb/android/GameEngine/MovieViewItem;->m_y:I

    iget v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_width:I

    add-int v8, v6, v0

    iget v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_height:I

    add-int v9, v7, v0

    invoke-virtual/range {v4 .. v9}, Lklb/android/GameEngine/GameEngineActivity;->replaceView(Landroid/view/View;IIII)Z

    .line 112
    :cond_0
    invoke-direct {p0}, Lklb/android/GameEngine/MovieViewItem;->setStatus()V

    .line 113
    iget-boolean v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_1

    .line 115
    iget-object v2, p0, Lklb/android/GameEngine/MovieViewItem;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lklb/android/GameEngine/MovieView;->setMoviePath(Ljava/lang/String;)Z

    .line 116
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_reload:Z

    .line 120
    :cond_1
    iget v0, p0, Lklb/android/GameEngine/MovieViewItem;->cmd_count:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lklb/android/GameEngine/MovieViewItem;->m_video:Lklb/android/GameEngine/MovieView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lklb/android/GameEngine/MovieViewItem;->cmdQueue()V

    .line 121
    :cond_2
    iput-boolean v1, p0, Lklb/android/GameEngine/MovieViewItem;->m_update:Z

    return-void
.end method
