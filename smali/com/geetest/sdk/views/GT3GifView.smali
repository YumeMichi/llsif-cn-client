.class public Lcom/geetest/sdk/views/GT3GifView;
.super Landroid/view/View;
.source "GT3GifView.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Movie;

.field private c:J

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private volatile j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/geetest/sdk/views/GT3GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/geetest/sdk/views/GT3GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GifView;->k:Z

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/views/GT3GifView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/geetest/sdk/views/GT3GifView;->a:I

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GifView;->j:Z

    .line 16
    iget p2, p0, Lcom/geetest/sdk/views/GT3GifView;->a:I

    if-eq p2, p1, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/geetest/sdk/views/GT3GifView;->a:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    iget v1, p0, Lcom/geetest/sdk/views/GT3GifView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 32
    iget v0, p0, Lcom/geetest/sdk/views/GT3GifView;->g:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    iget v1, p0, Lcom/geetest/sdk/views/GT3GifView;->e:F

    iget v2, p0, Lcom/geetest/sdk/views/GT3GifView;->g:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/geetest/sdk/views/GT3GifView;->f:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/views/GT3GifView;->k:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/geetest/sdk/views/GT3GifView;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    iput-wide v0, p0, Lcom/geetest/sdk/views/GT3GifView;->c:J

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    .line 13
    :cond_1
    iget-wide v3, p0, Lcom/geetest/sdk/views/GT3GifView;->c:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/geetest/sdk/views/GT3GifView;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 18
    iget-boolean v0, p0, Lcom/geetest/sdk/views/GT3GifView;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GifView;->j:Z

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/geetest/sdk/views/GT3GifView;->d:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geetest/sdk/views/GT3GifView;->c:J

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getGifResource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/views/GT3GifView;->a:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/geetest/sdk/views/GT3GifView;->j:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/geetest/sdk/views/GT3GifView;->c()V

    .line 4
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3GifView;->a(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0}, Lcom/geetest/sdk/views/GT3GifView;->b()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3GifView;->a(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/geetest/sdk/views/GT3GifView;->h:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/geetest/sdk/views/GT3GifView;->e:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p3, p0, Lcom/geetest/sdk/views/GT3GifView;->i:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/geetest/sdk/views/GT3GifView;->f:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/geetest/sdk/views/GT3GifView;->k:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v0, p1, :cond_0

    int-to-float v2, v0

    int-to-float p1, p1

    div-float p1, v2, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-le v1, p2, :cond_1

    int-to-float v2, v1

    int-to-float p2, p2

    div-float p2, v2, p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 34
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    iput v3, p0, Lcom/geetest/sdk/views/GT3GifView;->g:F

    int-to-float p1, v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 36
    iput p1, p0, Lcom/geetest/sdk/views/GT3GifView;->h:I

    int-to-float p2, v1

    mul-float p2, p2, v3

    float-to-int p2, p2

    .line 37
    iput p2, p0, Lcom/geetest/sdk/views/GT3GifView;->i:I

    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GifView;->k:Z

    .line 3
    invoke-direct {p0}, Lcom/geetest/sdk/views/GT3GifView;->b()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/geetest/sdk/views/GT3GifView;->k:Z

    .line 3
    invoke-direct {p0}, Lcom/geetest/sdk/views/GT3GifView;->b()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/geetest/sdk/views/GT3GifView;->k:Z

    .line 3
    invoke-direct {p0}, Lcom/geetest/sdk/views/GT3GifView;->b()V

    return-void
.end method

.method public setGifResource(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/geetest/sdk/views/GT3GifView;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/geetest/sdk/views/GT3GifView;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/sdk/views/GT3GifView;->b:Landroid/graphics/Movie;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
