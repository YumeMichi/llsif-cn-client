.class public Lcom/geetest/sdk/dialog/views/FailedView;
.super Landroid/widget/RelativeLayout;
.source "FailedView.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/geetest/sdk/GT3ConfigBean;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Path;

.field private k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ErrorBean;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$d;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/geetest/sdk/dialog/views/FailedView;->a(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ErrorBean;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$d;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ErrorBean;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$d;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/geetest/sdk/dialog/views/FailedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ErrorBean;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$d;Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/dialog/views/FailedView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/FailedView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/FailedView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/FailedView;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ErrorBean;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$d;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 2

    .line 1
    iput-object p6, p0, Lcom/geetest/sdk/dialog/views/FailedView;->e:Lcom/geetest/sdk/GT3ConfigBean;

    .line 2
    invoke-direct {p0}, Lcom/geetest/sdk/dialog/views/FailedView;->a()V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    const-string v0, "gt3_overtime_progressdialog"

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p6, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const-string p6, "gt3_ot_view3"

    .line 7
    invoke-static {p1, p6}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p0, p6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    iput-object p6, p0, Lcom/geetest/sdk/dialog/views/FailedView;->b:Landroid/view/View;

    const-string p6, "gt3_ot_llll"

    .line 8
    invoke-static {p1, p6}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p0, p6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/geetest/sdk/dialog/views/FailedView;->a:Landroid/widget/RelativeLayout;

    const-string p6, "tv_test_geetest_cord"

    .line 10
    invoke-static {p1, p6}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p0, p6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    iput-object p6, p0, Lcom/geetest/sdk/dialog/views/FailedView;->c:Landroid/widget/TextView;

    const-string p6, "gt3_ot_tv1"

    .line 12
    invoke-static {p1, p6}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p0, p6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    iput-object p6, p0, Lcom/geetest/sdk/dialog/views/FailedView;->d:Landroid/widget/TextView;

    .line 14
    iget-object p6, p3, Lcom/geetest/sdk/GT3ErrorBean;->errorCode:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_0

    .line 15
    iget-object p6, p0, Lcom/geetest/sdk/dialog/views/FailedView;->c:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/geetest/sdk/GT3ErrorBean;->errorCode:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_0
    iget-object p6, p3, Lcom/geetest/sdk/GT3ErrorBean;->errorCode:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_1

    iget-object p6, p3, Lcom/geetest/sdk/GT3ErrorBean;->errorCode:Ljava/lang/String;

    const-string v0, "_"

    invoke-virtual {p6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_1

    iget-object p6, p3, Lcom/geetest/sdk/GT3ErrorBean;->errorDesc:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_1

    .line 18
    iget-object p6, p0, Lcom/geetest/sdk/dialog/views/FailedView;->d:Landroid/widget/TextView;

    iget-object p3, p3, Lcom/geetest/sdk/GT3ErrorBean;->errorDesc:Ljava/lang/String;

    invoke-virtual {p6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/FailedView;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->f()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p3, "gt3_ot_tvvv"

    .line 23
    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 25
    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->i()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {}, Lcom/geetest/sdk/model/beans/f;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 28
    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/FailedView;->a:Landroid/widget/RelativeLayout;

    const/4 p6, 0x0

    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 29
    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/FailedView;->b:Landroid/view/View;

    invoke-virtual {p3, p6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 31
    :cond_2
    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/FailedView;->a:Landroid/widget/RelativeLayout;

    const/4 p6, 0x4

    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/FailedView;->b:Landroid/view/View;

    invoke-virtual {p3, p6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz p4, :cond_3

    const-wide/16 p2, 0x7d0

    .line 36
    invoke-virtual {p4, p5, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 39
    invoke-virtual {p2}, Lcom/geetest/sdk/g;->d()V

    :cond_4
    :goto_2
    :try_start_0
    const-string p2, "gt3_dialog_shape"

    .line 47
    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/FailedView;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/FailedView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/geetest/sdk/dialog/views/FailedView;->f:I

    .line 3
    iput p2, p0, Lcom/geetest/sdk/dialog/views/FailedView;->g:I

    .line 4
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/FailedView;->e:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/FailedView;->e:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getCorners()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/geetest/sdk/dialog/views/FailedView;->h:I

    .line 7
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/geetest/sdk/dialog/views/FailedView;->f:I

    int-to-float p2, p2

    iget p3, p0, Lcom/geetest/sdk/dialog/views/FailedView;->g:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/FailedView;->k:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/FailedView;->j:Landroid/graphics/Path;

    .line 9
    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 10
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/FailedView;->j:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/FailedView;->k:Landroid/graphics/RectF;

    iget p3, p0, Lcom/geetest/sdk/dialog/views/FailedView;->h:I

    int-to-float p3, p3

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
