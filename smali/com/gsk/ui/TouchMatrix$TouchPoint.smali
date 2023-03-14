.class Lcom/gsk/ui/TouchMatrix$TouchPoint;
.super Ljava/lang/Object;
.source "TouchMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsk/ui/TouchMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchPoint"
.end annotation


# instance fields
.field height:I

.field id:Ljava/lang/String;

.field isSelected:Z

.field margin:I

.field final synthetic this$0:Lcom/gsk/ui/TouchMatrix;

.field touchMargin:I

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/gsk/ui/TouchMatrix;Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->this$0:Lcom/gsk/ui/TouchMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 259
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->margin:I

    .line 260
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->touchMargin:I

    .line 264
    iput-object p2, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gsk/ui/TouchMatrix;Ljava/lang/String;II)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->this$0:Lcom/gsk/ui/TouchMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 259
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->margin:I

    .line 260
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->touchMargin:I

    .line 268
    iput-object p2, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->id:Ljava/lang/String;

    .line 269
    iput p3, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->margin:I

    .line 270
    iput p4, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->touchMargin:I

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public getCenterPos()Landroid/graphics/Point;
    .locals 4

    .line 345
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->x:I

    iget v2, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->y:I

    iget v3, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDrawRect(II)Landroid/graphics/Rect;
    .locals 3

    .line 332
    invoke-virtual {p0}, Lcom/gsk/ui/TouchMatrix$TouchPoint;->getCenterPos()Landroid/graphics/Point;

    move-result-object v0

    .line 333
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    .line 334
    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v0, v2

    .line 336
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public getHeight()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchMargin()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->touchMargin:I

    return v0
.end method

.method public getTouchRect()Landroid/graphics/Rect;
    .locals 7

    .line 326
    iget v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->touchMargin:I

    iget v1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->margin:I

    add-int/2addr v0, v1

    .line 328
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->x:I

    add-int v3, v2, v0

    iget v4, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->y:I

    add-int v5, v4, v0

    iget v6, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->width:I

    add-int/2addr v2, v6

    sub-int/2addr v2, v0

    iget v6, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->height:I

    add-int/2addr v4, v6

    sub-int/2addr v4, v0

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getWidth()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->y:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->isSelected:Z

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->height:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->isSelected:Z

    return-void
.end method

.method public setTouchMargin(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->touchMargin:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/gsk/ui/TouchMatrix$TouchPoint;->y:I

    return-void
.end method
