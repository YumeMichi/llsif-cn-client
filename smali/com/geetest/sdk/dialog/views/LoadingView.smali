.class public Lcom/geetest/sdk/dialog/views/LoadingView;
.super Landroid/widget/RelativeLayout;
.source "LoadingView.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/view/View;

.field c:Lcom/geetest/sdk/GT3ConfigBean;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-direct {p0, p1, p4, p5}, Lcom/geetest/sdk/dialog/views/LoadingView;->a(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/geetest/sdk/dialog/views/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 4

    .line 1
    iput-object p3, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->c:Lcom/geetest/sdk/GT3ConfigBean;

    .line 2
    invoke-direct {p0}, Lcom/geetest/sdk/dialog/views/LoadingView;->a()V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const-string v0, "gt3_wait_progressdialog"

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const-string p3, "gt3_wait_ll"

    .line 6
    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->a:Landroid/widget/RelativeLayout;

    const-string p3, "gt3_wait_iv"

    .line 12
    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const-string v0, "LoadingView"

    if-nez p2, :cond_1

    .line 16
    new-instance p2, Lcom/geetest/sdk/views/GT3GifView;

    invoke-direct {p2, p1}, Lcom/geetest/sdk/views/GT3GifView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v1, Lcom/geetest/sdk/model/beans/e;

    invoke-direct {v1}, Lcom/geetest/sdk/model/beans/e;-><init>()V

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/e;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p2, v1}, Lcom/geetest/sdk/views/GT3GifView;->setGifResource(I)V

    goto :goto_0

    :cond_0
    const-string v1, "gt3_new_bind_logo"

    .line 21
    invoke-static {p1, v1}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/geetest/sdk/views/GT3GifView;->setGifResource(I)V

    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/geetest/sdk/views/GT3GifView;->a()V

    .line 24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p1, v2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {p3, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "custom view is null"

    .line 26
    invoke-static {v0, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->isGif()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    new-instance v1, Lcom/geetest/sdk/views/GT3GifView;

    invoke-direct {v1, p1}, Lcom/geetest/sdk/views/GT3GifView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getIconRes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/views/GT3GifView;->setGifResource(I)V

    .line 32
    invoke-virtual {v1}, Lcom/geetest/sdk/views/GT3GifView;->a()V

    .line 33
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewHeight()I

    move-result p2

    invoke-direct {v2, v3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {p3, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "custom gif res"

    .line 35
    invoke-static {v0, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->execute()V

    .line 39
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3LoadImageView;->getLoadViewHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    :cond_3
    invoke-virtual {p3, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "custom view"

    .line 45
    invoke-static {v0, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p2, "gt3_wait_tv2"

    .line 49
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "gt3_wait_tvvv"

    .line 51
    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 54
    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "gt3_wait_view1"

    .line 56
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/view/View;

    .line 58
    invoke-static {}, Lcom/geetest/sdk/model/beans/f;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 59
    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->a:Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 62
    :cond_4
    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->a:Landroid/widget/RelativeLayout;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->b:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    :try_start_0
    const-string p2, "gt3_dialog_shape"

    .line 70
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->d:I

    .line 3
    iput p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->e:I

    .line 4
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->c:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->c:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getCorners()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->f:I

    .line 7
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->d:I

    int-to-float p2, p2

    iget p3, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->e:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->i:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->h:Landroid/graphics/Path;

    .line 9
    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 10
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->h:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->i:Landroid/graphics/RectF;

    iget p3, p0, Lcom/geetest/sdk/dialog/views/LoadingView;->f:I

    int-to-float p3, p3

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
