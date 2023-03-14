.class Lklb/android/GameEngine/IndicatorItem;
.super Ljava/lang/Object;
.source "IndicaterItem.java"


# instance fields
.field private cmd_count:I

.field private cmdqueue:[I

.field private m_IndicatorView:Landroid/view/View;

.field public m_background:Z

.field private m_context:Lklb/android/GameEngine/GameEngineActivity;

.field public m_created:Z

.field public m_enabled:Z

.field private m_height:I

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_params:Landroid/widget/FrameLayout$LayoutParams;

.field public m_reload:Z

.field public m_remove:Z

.field public m_update:Z

.field public m_visible:Z

.field private m_width:I

.field private m_x:I

.field private m_y:I


# direct methods
.method public constructor <init>(Lklb/android/GameEngine/GameEngineActivity;IIIIZ)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    .line 11
    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_visible:Z

    .line 22
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_enabled:Z

    const/4 v2, 0x0

    .line 23
    iput-boolean v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    const/16 v3, 0x32

    .line 24
    new-array v3, v3, [I

    iput-object v3, p0, Lklb/android/GameEngine/IndicatorItem;->cmdqueue:[I

    .line 25
    iput v2, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    .line 27
    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    .line 32
    iput p2, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    .line 33
    iput p3, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    .line 34
    iput p4, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    .line 35
    iput p5, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    .line 36
    iput-object p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    .line 37
    iput-boolean p6, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    .line 38
    iput-boolean v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_created:Z

    .line 39
    iput-boolean v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    .line 40
    iput-boolean v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_remove:Z

    .line 41
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_reload:Z

    const/16 p1, 0x50

    .line 48
    iput p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    iput p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    return-void
.end method

.method private setStatus()V
    .locals 2

    .line 62
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_visible:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cmd(I)V
    .locals 3

    .line 143
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->cmdqueue:[I

    iget v1, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    aput p1, v0, v1

    return-void
.end method

.method public cmdProc(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return-void
.end method

.method public cmdQueue()V
    .locals 3

    .line 147
    iget v0, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    :goto_0
    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    if-ge v1, v2, :cond_1

    .line 150
    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->cmdqueue:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lklb/android/GameEngine/IndicatorItem;->cmdProc(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iput v0, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    return-void
.end method

.method public create()V
    .locals 10

    .line 74
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_created:Z

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-virtual {v0}, Lklb/android/GameEngine/GameEngineActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lklb/android/GameEngine/RClassReference;->getIndicator()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    .line 78
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v4, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    add-int/2addr v4, v2

    iget v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    iget-object v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    .line 88
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    iget-object v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v4, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget v6, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v7, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    add-int v8, v6, v0

    iget v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    add-int v9, v7, v0

    invoke-virtual/range {v4 .. v9}, Lklb/android/GameEngine/GameEngineActivity;->putControl(Landroid/view/View;IIII)Z

    :goto_0
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lklb/android/GameEngine/IndicatorItem;->setVisible(Z)V

    .line 96
    invoke-direct {p0}, Lklb/android/GameEngine/IndicatorItem;->setStatus()V

    .line 97
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_reload:Z

    .line 98
    iput-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_created:Z

    return-void
.end method

.method public move(IIII)V
    .locals 0

    .line 53
    iput p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    .line 54
    iput p2, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    .line 55
    iput p3, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    .line 56
    iput p4, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    return-void
.end method

.method public remove()Z
    .locals 2

    .line 128
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_remove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 131
    iget-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lklb/android/GameEngine/GameEngineActivity;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setEnable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    .line 185
    iput-boolean p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_enabled:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    .line 179
    iput-boolean p1, p0, Lklb/android/GameEngine/IndicatorItem;->m_visible:Z

    return-void
.end method

.method public update()V
    .locals 10

    .line 103
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, v0, Lklb/android/GameEngine/GameEngineActivity;->m_IndicatorLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 108
    iget-boolean v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_background:Z

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 112
    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 114
    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 115
    iget v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    iget-object v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lklb/android/GameEngine/IndicatorItem;->m_IndicatorView:Landroid/view/View;

    iget-object v3, p0, Lklb/android/GameEngine/IndicatorItem;->m_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v4, p0, Lklb/android/GameEngine/IndicatorItem;->m_context:Lklb/android/GameEngine/GameEngineActivity;

    iget-object v5, p0, Lklb/android/GameEngine/IndicatorItem;->m_layout:Landroid/widget/FrameLayout;

    iget v6, p0, Lklb/android/GameEngine/IndicatorItem;->m_x:I

    iget v7, p0, Lklb/android/GameEngine/IndicatorItem;->m_y:I

    iget v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_width:I

    add-int v8, v6, v0

    iget v0, p0, Lklb/android/GameEngine/IndicatorItem;->m_height:I

    add-int v9, v7, v0

    invoke-virtual/range {v4 .. v9}, Lklb/android/GameEngine/GameEngineActivity;->replaceView(Landroid/view/View;IIII)Z

    .line 120
    :cond_2
    invoke-direct {p0}, Lklb/android/GameEngine/IndicatorItem;->setStatus()V

    .line 122
    :cond_3
    iget v0, p0, Lklb/android/GameEngine/IndicatorItem;->cmd_count:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lklb/android/GameEngine/IndicatorItem;->cmdQueue()V

    .line 123
    :cond_4
    iput-boolean v1, p0, Lklb/android/GameEngine/IndicatorItem;->m_update:Z

    return-void
.end method
