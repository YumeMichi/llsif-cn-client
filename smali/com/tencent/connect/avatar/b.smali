.class public Lcom/tencent/connect/avatar/b;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/tencent/connect/avatar/b;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/tencent/connect/avatar/b;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/b;->a:Landroid/graphics/Rect;

    .line 77
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/b;->getMeasuredWidth()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/b;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v2, v1, -0x3c

    add-int/lit8 v2, v2, -0x50

    .line 82
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x280

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 89
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    .line 91
    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v2

    add-int/2addr v2, v1

    .line 97
    iget-object v4, p0, Lcom/tencent/connect/avatar/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/avatar/b;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 38
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/b;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/b;->getMeasuredWidth()I

    move-result v1

    .line 42
    invoke-virtual {p0}, Lcom/tencent/connect/avatar/b;->getMeasuredHeight()I

    move-result v2

    .line 45
    iget-object v3, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v3, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    .line 50
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v3

    iget-object v12, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move v10, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v3

    int-to-float v11, v2

    iget-object v12, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v2

    iget-object v11, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 53
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v2

    iget-object v12, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    move-object v7, p1

    move v10, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 58
    iget-object v1, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v1, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/tencent/connect/avatar/b;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
