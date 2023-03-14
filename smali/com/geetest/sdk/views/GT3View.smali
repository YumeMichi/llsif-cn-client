.class public Lcom/geetest/sdk/views/GT3View;
.super Landroid/view/View;
.source "GT3View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/views/GT3View$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Path;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:I

.field private i:Landroid/animation/ValueAnimator;

.field private j:Lcom/geetest/sdk/views/GT3View$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3View;->g:Z

    .line 22
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3View;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3View;->g:Z

    .line 39
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3View;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3View;->g:Z

    .line 51
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3View;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/views/GT3View;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/views/GT3View;->a:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/views/GT3View;->f:Landroid/content/Context;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x600

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const v3, -0x7f2955

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iput v2, p0, Lcom/geetest/sdk/views/GT3View;->a:I

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object p1, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/views/GT3View;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/geetest/sdk/views/GT3View$a;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3View$a;-><init>(Lcom/geetest/sdk/views/GT3View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->f:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geetest/sdk/views/GT3View;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0xd

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x16

    div-int/lit8 v2, v2, 0x16

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    new-instance v3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    neg-int v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v3, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    neg-int v0, v0

    int-to-float v5, v0

    iget-object v7, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x43960000    # 300.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    iget p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xc8

    if-le v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    .line 17
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geetest/sdk/views/GT3View;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0xd

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x16

    div-int/lit8 v2, v2, 0x16

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    new-instance v3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    neg-int v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v3, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 26
    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    neg-int v0, v0

    int-to-float v5, v0

    iget-object v7, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x43960000    # 300.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 27
    iget p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    goto/16 :goto_0

    .line 28
    :cond_1
    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    const/16 v1, 0x12c

    if-le v0, v2, :cond_2

    if-gt v0, v1, :cond_2

    .line 29
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geetest/sdk/views/GT3View;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 30
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0xd

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 31
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x16

    div-int/lit8 v2, v2, 0x16

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    new-instance v3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    neg-int v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v3, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 38
    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    neg-int v0, v0

    int-to-float v5, v0

    iget-object v7, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x43960000    # 300.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 39
    iget p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    goto/16 :goto_0

    .line 40
    :cond_2
    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    if-le v0, v1, :cond_3

    const/16 v1, 0x320

    if-ge v0, v1, :cond_3

    .line 41
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geetest/sdk/views/GT3View;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0xd

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x16

    div-int/lit8 v2, v2, 0x16

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    new-instance v3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    neg-int v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v3, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    iget-object v7, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, -0x3c6a0000    # -300.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    iget p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/geetest/sdk/views/GT3View;->h:I

    goto/16 :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0xd

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x16

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v2, v2, 0x16

    div-int/lit8 v2, v2, 0x16

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3View;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/views/GT3View;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    new-instance v3, Landroid/graphics/RectF;

    iget v0, p0, Lcom/geetest/sdk/views/GT3View;->e:I

    neg-int v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v3, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    iget-object v7, p0, Lcom/geetest/sdk/views/GT3View;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x43960000    # 300.0f

    const/high16 v5, -0x3c6a0000    # -300.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 59
    iget-object p1, p0, Lcom/geetest/sdk/views/GT3View;->j:Lcom/geetest/sdk/views/GT3View$b;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/geetest/sdk/views/GT3View;->g:Z

    if-nez v0, :cond_4

    .line 60
    invoke-interface {p1}, Lcom/geetest/sdk/views/GT3View$b;->a()V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/geetest/sdk/views/GT3View;->g:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setGtListener(Lcom/geetest/sdk/views/GT3View$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/views/GT3View;->j:Lcom/geetest/sdk/views/GT3View$b;

    return-void
.end method
