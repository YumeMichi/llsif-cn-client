.class public Lcom/geetest/sdk/dialog/views/SuccessView;
.super Landroid/widget/RelativeLayout;
.source "SuccessView.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/view/View;

.field private c:Lcom/geetest/sdk/GT3ConfigBean;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/g;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/geetest/sdk/dialog/views/SuccessView;->a(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/geetest/sdk/dialog/views/SuccessView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/g;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 2

    .line 1
    iput-object p5, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->c:Lcom/geetest/sdk/GT3ConfigBean;

    .line 2
    invoke-direct {p0}, Lcom/geetest/sdk/dialog/views/SuccessView;->a()V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    const-string v0, "gt3_success_progressdialog"

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p5, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const-string p5, "gt3_success_view2"

    .line 6
    invoke-static {p1, p5}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->b:Landroid/view/View;

    const-string p5, "gt3_success_lll"

    .line 8
    invoke-static {p1, p5}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->a:Landroid/widget/RelativeLayout;

    const-string p5, "gt3_success_tv1"

    .line 18
    invoke-static {p1, p5}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    const-string v0, "gt3_success_tvvv"

    .line 20
    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->i()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-static {}, Lcom/geetest/sdk/model/beans/f;->a()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 26
    iget-object p5, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->a:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 27
    iget-object p5, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->b:Landroid/view/View;

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object p5, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->a:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object p5, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->b:Landroid/view/View;

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-string p5, "gt3_success_iv"

    .line 32
    invoke-static {p1, p5}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/geetest/sdk/views/GT3View;

    .line 34
    invoke-virtual {p5}, Lcom/geetest/sdk/views/GT3View;->a()V

    .line 36
    new-instance v0, Lcom/geetest/sdk/dialog/views/SuccessView$a;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/geetest/sdk/dialog/views/SuccessView$a;-><init>(Lcom/geetest/sdk/dialog/views/SuccessView;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/g;)V

    invoke-virtual {p5, v0}, Lcom/geetest/sdk/views/GT3View;->setGtListener(Lcom/geetest/sdk/views/GT3View$b;)V

    :try_start_0
    const-string p2, "gt3_dialog_shape"

    .line 63
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->d:I

    .line 3
    iput p2, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->e:I

    .line 4
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->c:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->c:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getCorners()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->f:I

    .line 7
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->d:I

    int-to-float p2, p2

    iget p3, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->e:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->i:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->h:Landroid/graphics/Path;

    .line 9
    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 10
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->h:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->i:Landroid/graphics/RectF;

    iget p3, p0, Lcom/geetest/sdk/dialog/views/SuccessView;->f:I

    int-to-float p3, p3

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
