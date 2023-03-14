.class public Lcom/gsk/ui/TouchMatrix;
.super Landroid/view/View;
.source "TouchMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;,
        Lcom/gsk/ui/TouchMatrix$TouchPoint;
    }
.end annotation


# instance fields
.field final MATRIX_COLUMN:I

.field final MATRIX_ROW:I

.field imageTouchPoint:Landroid/graphics/Bitmap;

.field imageTouchPointErrorMark:Landroid/graphics/Bitmap;

.field imageTouchPointSelected:Landroid/graphics/Bitmap;

.field oldPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gsk/ui/TouchMatrix$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field paintLine:Landroid/graphics/Paint;

.field pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gsk/ui/TouchMatrix$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field showPasswordErrorMark:Z

.field touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

.field touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 20
    iput p1, p0, Lcom/gsk/ui/TouchMatrix;->MATRIX_ROW:I

    .line 21
    iput p1, p0, Lcom/gsk/ui/TouchMatrix;->MATRIX_COLUMN:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark:Z

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->initial()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 20
    iput p1, p0, Lcom/gsk/ui/TouchMatrix;->MATRIX_ROW:I

    .line 21
    iput p1, p0, Lcom/gsk/ui/TouchMatrix;->MATRIX_COLUMN:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark:Z

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->initial()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 20
    iput p1, p0, Lcom/gsk/ui/TouchMatrix;->MATRIX_ROW:I

    .line 21
    iput p1, p0, Lcom/gsk/ui/TouchMatrix;->MATRIX_COLUMN:I

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark:Z

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->initial()V

    return-void
.end method


# virtual methods
.method public getTouchMatrixEventListener()Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    return-object v0
.end method

.method hitTest(II)Lcom/gsk/ui/TouchMatrix$TouchPoint;
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 199
    invoke-virtual {v3, p1, p2}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initial()V
    .locals 5

    .line 151
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "R.drawable.youyun_point"

    invoke-static {v1, v2}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gsk/ui/TouchMatrix;->imageTouchPoint:Landroid/graphics/Bitmap;

    .line 152
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "R.drawable.youyun_point_selected"

    invoke-static {v1, v2}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 152
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gsk/ui/TouchMatrix;->imageTouchPointSelected:Landroid/graphics/Bitmap;

    .line 154
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "R.drawable.youyun_point_error_mark"

    invoke-static {v1, v2}, Lcom/gsk/utils/ResourceHelper;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 154
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gsk/ui/TouchMatrix;->imageTouchPointErrorMark:Landroid/graphics/Bitmap;

    const/16 v0, 0x9

    .line 157
    new-array v0, v0, [Lcom/gsk/ui/TouchMatrix$TouchPoint;

    iput-object v0, p0, Lcom/gsk/ui/TouchMatrix;->touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;

    const/4 v0, 0x0

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/gsk/ui/TouchMatrix;->touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 159
    new-instance v2, Lcom/gsk/ui/TouchMatrix$TouchPoint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/gsk/ui/TouchMatrix$TouchPoint;-><init>(Lcom/gsk/ui/TouchMatrix;Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/gsk/ui/TouchMatrix$1;

    invoke-direct {v1, p0}, Lcom/gsk/ui/TouchMatrix$1;-><init>(Lcom/gsk/ui/TouchMatrix;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method layoutPoints()V
    .locals 10

    .line 173
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getWidth()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    div-int/lit8 v2, v0, 0x3

    .line 182
    div-int/lit8 v1, v1, 0x3

    .line 183
    iget-object v3, p0, Lcom/gsk/ui/TouchMatrix;->touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v9, v3, v6

    .line 184
    invoke-virtual {v9, v7}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->setX(I)V

    .line 185
    invoke-virtual {v9, v8}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->setY(I)V

    .line 186
    invoke-virtual {v9, v2}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->setWidth(I)V

    .line 187
    invoke-virtual {v9, v1}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->setHeight(I)V

    add-int/2addr v7, v2

    if-lt v7, v0, :cond_1

    add-int/2addr v8, v1

    const/4 v7, 0x0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->paintLine:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gsk/ui/TouchMatrix;->paintLine:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->paintLine:Landroid/graphics/Paint;

    const v1, -0x361d0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->paintLine:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v3, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsk/ui/TouchMatrix$TouchPoint;

    invoke-virtual {v3}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getCenterPos()Landroid/graphics/Point;

    move-result-object v3

    .line 89
    iget-object v4, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsk/ui/TouchMatrix$TouchPoint;

    invoke-virtual {v4}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getCenterPos()Landroid/graphics/Point;

    move-result-object v4

    .line 90
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v3

    iget v3, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v3

    iget v3, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v3

    iget-object v11, p0, Lcom/gsk/ui/TouchMatrix;->paintLine:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 94
    iget-object v5, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/gsk/ui/TouchMatrix;->imageTouchPointErrorMark:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/gsk/ui/TouchMatrix;->imageTouchPoint:Landroid/graphics/Bitmap;

    .line 96
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 97
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 98
    invoke-virtual {v4, v6, v7}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getDrawRect(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 99
    invoke-virtual {p1, v5, v1, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    .line 104
    :goto_3
    iget-object v3, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsk/ui/TouchMatrix$TouchPoint;

    invoke-virtual {v3}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getCenterPos()Landroid/graphics/Point;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsk/ui/TouchMatrix$TouchPoint;

    invoke-virtual {v4}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getCenterPos()Landroid/graphics/Point;

    move-result-object v4

    .line 107
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v3

    iget v3, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v3

    iget v3, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v3

    iget-object v11, p0, Lcom/gsk/ui/TouchMatrix;->paintLine:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_8

    aget-object v4, v0, v2

    .line 111
    invoke-virtual {v4}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/gsk/ui/TouchMatrix;->imageTouchPointSelected:Landroid/graphics/Bitmap;

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/gsk/ui/TouchMatrix;->imageTouchPoint:Landroid/graphics/Bitmap;

    .line 113
    :goto_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 114
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 115
    invoke-virtual {v4, v6, v7}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getDrawRect(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 116
    invoke-virtual {p1, v5, v1, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 207
    iget-boolean p1, p0, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark:Z

    .line 210
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->invalidate()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gsk/ui/TouchMatrix;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gsk/ui/TouchMatrix;->onTouchUp(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 131
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gsk/ui/TouchMatrix;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method onTouchMove(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/gsk/ui/TouchMatrix;->hitTest(II)Lcom/gsk/ui/TouchMatrix$TouchPoint;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 224
    invoke-virtual {p1, v0}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->setSelected(Z)V

    .line 225
    iget-object v1, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->invalidate()V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 233
    iget-object p1, p0, Lcom/gsk/ui/TouchMatrix;->touchPoints:[Lcom/gsk/ui/TouchMatrix$TouchPoint;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 234
    invoke-virtual {v3, v1}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/gsk/ui/TouchMatrix;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    if-eqz p1, :cond_2

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsk/ui/TouchMatrix$TouchPoint;

    .line 240
    invoke-virtual {v2}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;->onTouchFinished(ILjava/lang/String;)V

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object p1, p0, Lcom/gsk/ui/TouchMatrix;->oldPointList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object p1, p0, Lcom/gsk/ui/TouchMatrix;->pointList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 248
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public setTouchMatrixEventListener(Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    return-void
.end method

.method public showPasswordErrorMark()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/gsk/ui/TouchMatrix;->showPasswordErrorMark:Z

    .line 62
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix;->invalidate()V

    return-void
.end method
