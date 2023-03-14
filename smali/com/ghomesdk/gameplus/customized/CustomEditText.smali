.class public Lcom/ghomesdk/gameplus/customized/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


# instance fields
.field private dRight:Landroid/graphics/drawable/Drawable;

.field private lastTextLength:I

.field private rBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->lastTextLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->lastTextLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->lastTextLength:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->dRight:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v0, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->rBounds:Landroid/graphics/Rect;

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 80
    iget v1, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->lastTextLength:I

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->dRight:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0, v0, v1, v0}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 69
    :cond_0
    iget v1, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->lastTextLength:I

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->dRight:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0, v0, v1, v0}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->lastTextLength:I

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->dRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->rBounds:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 45
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/CustomEditText;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->rBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/CustomEditText;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/CustomEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/CustomEditText;->getPaddingTop()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/CustomEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/CustomEditText;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    const-string v0, ""

    .line 48
    invoke-virtual {p0, v0}, Lcom/ghomesdk/gameplus/customized/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    iput-object p3, p0, Lcom/ghomesdk/gameplus/customized/CustomEditText;->dRight:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
