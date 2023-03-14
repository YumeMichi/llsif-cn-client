.class public Lcom/ghomesdk/gameplus/customized/AlphabetView;
.super Landroid/view/View;
.source "AlphabetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static alphabetList:[Ljava/lang/String;


# instance fields
.field private currentIndex:I

.field private defaultColor:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;

.field private selectColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    const-string p1, "#999999"

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->defaultColor:I

    const-string p1, "#3399ff"

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->selectColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    const-string p1, "#999999"

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->defaultColor:I

    const-string p1, "#3399ff"

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->selectColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    const-string p1, "#999999"

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->defaultColor:I

    const-string p1, "#3399ff"

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->selectColor:I

    return-void
.end method

.method public static initList([Ljava/lang/String;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 106
    iget v1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    .line 107
    iget-object v2, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->onTouchingLetterChangedListener:Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;

    .line 108
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sget-object v3, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    array-length v4, v3

    int-to-float v4, v4

    mul-float p1, p1, v4

    float-to-int p1, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, p1, :cond_5

    if-eqz v2, :cond_5

    if-ltz p1, :cond_5

    .line 132
    array-length v0, v3

    if-ge p1, v0, :cond_5

    .line 134
    aget-object v0, v3, p1

    invoke-interface {v2, v0}, Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 135
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    .line 136
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->mTextDialog:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 137
    sget-object v1, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->mTextDialog:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->invalidate()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 146
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->invalidate()V

    .line 149
    iget-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->mTextDialog:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eq v1, p1, :cond_5

    if-eqz v2, :cond_5

    if-ltz p1, :cond_5

    .line 115
    array-length v0, v3

    if-ge p1, v0, :cond_5

    .line 117
    aget-object v0, v3, p1

    invoke-interface {v2, v0}, Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 118
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    .line 119
    iget-object v0, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->mTextDialog:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 120
    sget-object v1, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->mTextDialog:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "alphabet_list_bg"

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->setBackgroundResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->invalidate()V

    :cond_5
    :goto_0
    return v5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->getHeight()I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/customized/AlphabetView;->getWidth()I

    move-result v1

    .line 63
    sget-object v2, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v0, v2

    const/4 v2, 0x0

    .line 65
    :goto_0
    sget-object v3, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->defaultColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v3, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v3, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    iget v3, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->currentIndex:I

    if-ne v2, v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->selectColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v3, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 76
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    sget-object v5, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-int v4, v0, v2

    add-int/2addr v4, v0

    int-to-float v4, v4

    .line 79
    sget-object v5, Lcom/ghomesdk/gameplus/customized/AlphabetView;->alphabetList:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    iget-object v3, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setDefaultColor(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->defaultColor:I

    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->onTouchingLetterChangedListener:Lcom/ghomesdk/gameplus/customized/AlphabetView$OnTouchingLetterChangedListener;

    return-void
.end method

.method protected setSelectColor(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->selectColor:I

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ghomesdk/gameplus/customized/AlphabetView;->mTextDialog:Landroid/widget/TextView;

    return-void
.end method
