.class public Lcom/geetest/sdk/views/GT3GeetestView;
.super Landroid/view/View;
.source "GT3GeetestView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/views/GT3GeetestView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private aa:Z

.field private ab:D

.field private ac:D

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Landroid/animation/ValueAnimator;

.field private ah:Landroid/animation/ValueAnimator;

.field private ai:I

.field private aj:Landroid/animation/AnimatorSet;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:F

.field private n:Landroid/graphics/Path;

.field private o:Lcom/geetest/sdk/views/GT3GeetestView$c;

.field private p:I

.field private q:I

.field private s:Landroid/content/Context;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    .line 214
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3GeetestView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 422
    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    .line 423
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3GeetestView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 626
    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    iput-boolean p2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    .line 627
    invoke-direct {p0, p1}, Lcom/geetest/sdk/views/GT3GeetestView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/views/GT3GeetestView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ae:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    return-void
.end method

.method static synthetic b(Lcom/geetest/sdk/views/GT3GeetestView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ai:I

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    .line 5
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    .line 6
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    .line 8
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 9
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 10
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    .line 3
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 5
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    .line 6
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    .line 9
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    .line 3
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 5
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 6
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    .line 8
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    .line 3
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 5
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    .line 6
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    .line 8
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    return-void
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ab:D

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 5
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 6
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    .line 8
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    .line 9
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    .line 3
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 6
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    .line 8
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    .line 9
    iget v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    iput v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    return-void
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ac:D

    .line 2
    iget v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    iput v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ad:I

    .line 3
    iget v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    iput v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    .line 5
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    .line 8
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 9
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    .line 10
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    .line 11
    iput-boolean v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    return-void
.end method

.method public h()V
    .locals 5

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ag:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2bc

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ag:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/geetest/sdk/views/GT3GeetestView$a;

    invoke-direct {v4, p0}, Lcom/geetest/sdk/views/GT3GeetestView$a;-><init>(Lcom/geetest/sdk/views/GT3GeetestView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ah:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ah:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/geetest/sdk/views/GT3GeetestView$b;

    invoke-direct {v2, p0}, Lcom/geetest/sdk/views/GT3GeetestView$b;-><init>(Lcom/geetest/sdk/views/GT3GeetestView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aj:Landroid/animation/AnimatorSet;

    .line 18
    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ag:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/geetest/sdk/views/GT3GeetestView;->ah:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 19
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 21
    iput-boolean v3, p0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    .line 22
    iput-boolean v3, p0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    .line 23
    iput-boolean v3, p0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    .line 24
    iput-boolean v3, p0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    .line 25
    iput-boolean v3, p0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    .line 26
    iput-boolean v3, p0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    .line 27
    iput-boolean v3, p0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    .line 28
    iput-boolean v4, p0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x12c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    new-instance v2, Lcom/geetest/sdk/model/beans/d;

    invoke-direct {v2}, Lcom/geetest/sdk/model/beans/d;-><init>()V

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/d;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    .line 2
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    new-instance v2, Lcom/geetest/sdk/model/beans/d;

    invoke-direct {v2}, Lcom/geetest/sdk/model/beans/d;-><init>()V

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/d;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    .line 3
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    new-instance v2, Lcom/geetest/sdk/model/beans/d;

    invoke-direct {v2}, Lcom/geetest/sdk/model/beans/d;-><init>()V

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/d;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    new-instance v3, Lcom/geetest/sdk/model/beans/d;

    invoke-direct {v3}, Lcom/geetest/sdk/model/beans/d;-><init>()V

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/d;->h()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v8

    .line 5
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    new-instance v3, Lcom/geetest/sdk/model/beans/d;

    invoke-direct {v3}, Lcom/geetest/sdk/model/beans/d;-><init>()V

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/d;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v9

    .line 6
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    new-instance v3, Lcom/geetest/sdk/model/beans/d;

    invoke-direct {v3}, Lcom/geetest/sdk/model/beans/d;-><init>()V

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/d;->e()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v10

    .line 7
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    new-instance v3, Lcom/geetest/sdk/model/beans/d;

    invoke-direct {v3}, Lcom/geetest/sdk/model/beans/d;-><init>()V

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/d;->d()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v11

    .line 8
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->n:Landroid/graphics/Path;

    .line 9
    new-instance v2, Landroid/graphics/Paint;

    const/16 v3, 0x600

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    new-instance v5, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getNormalColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->k:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->k:Landroid/graphics/Paint;

    new-instance v6, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getFaliColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->k:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    new-instance v6, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getAddColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->c:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->c:Landroid/graphics/Paint;

    new-instance v6, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getAddColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->c:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v6, v12}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    .line 34
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    new-instance v6, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getAddColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->e:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->e:Landroid/graphics/Paint;

    new-instance v6, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getAddColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->e:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->e:Landroid/graphics/Paint;

    const/16 v6, 0x19

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->h:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->h:Landroid/graphics/Paint;

    new-instance v6, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getScanningColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->h:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->h:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->f:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->f:Landroid/graphics/Paint;

    new-instance v6, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v6}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getAddColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->f:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->f:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->f:Landroid/graphics/Paint;

    const/16 v5, 0x32

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    new-instance v5, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getWaitColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->l:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->l:Landroid/graphics/Paint;

    new-instance v5, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getWaitColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->l:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    invoke-static {v5, v12}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->l:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->i:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->i:Landroid/graphics/Paint;

    new-instance v5, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v5}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getSuccessColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->i:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    invoke-static {v5, v12}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->i:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->j:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->j:Landroid/graphics/Paint;

    new-instance v3, Lcom/geetest/sdk/model/beans/GT3ViewColor;

    invoke-direct {v3}, Lcom/geetest/sdk/model/beans/GT3ViewColor;-><init>()V

    invoke-virtual {v3}, Lcom/geetest/sdk/model/beans/GT3ViewColor;->getGogoColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->j:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->s:Landroid/content/Context;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 85
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->o:Lcom/geetest/sdk/views/GT3GeetestView$c;

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v2}, Lcom/geetest/sdk/views/GT3GeetestView$c;->a()F

    move-result v2

    iput v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->m:F

    .line 90
    :cond_0
    iget-boolean v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->z:Z

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    :cond_1
    iget-boolean v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->y:Z

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 99
    :cond_2
    iget-boolean v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->t:Z

    if-eqz v2, :cond_3

    int-to-double v2, v1

    .line 100
    iget v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    sub-int/2addr v4, v1

    int-to-double v4, v4

    iget-wide v12, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ab:D

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v12

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    double-to-float v2, v2

    iget-object v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    iget-wide v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ab:D

    const-wide v3, 0x3fa999999999999aL    # 0.05

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ab:D

    .line 107
    :cond_3
    iget-boolean v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->u:Z

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    new-instance v2, Landroid/graphics/RectF;

    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    neg-int v3, v1

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 113
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->m:F

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float v3, v1, v3

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->f:Landroid/graphics/Paint;

    const/high16 v4, 0x42340000    # 45.0f

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 116
    :cond_4
    iget-boolean v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->v:Z

    if-eqz v1, :cond_8

    .line 118
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    if-lez v1, :cond_5

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    move/from16 v16, v10

    move/from16 v17, v11

    goto/16 :goto_2

    .line 122
    :cond_5
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ad:I

    iget v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    if-lt v1, v2, :cond_6

    iget v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    if-gt v1, v2, :cond_6

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ad:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ad:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ad:I

    goto :goto_0

    .line 127
    :cond_6
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget-wide v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ac:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide/16 v3, 0x0

    add-double/2addr v1, v3

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v5, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 134
    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpg-double v12, v1, v3

    if-gtz v12, :cond_7

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    iget v12, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v12, v12

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v14, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v1

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v12

    double-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v12, v4

    iget v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v1

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v14

    double-to-float v4, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-double v12, v12

    iget v14, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v14, v14

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v1

    move/from16 v16, v10

    move/from16 v17, v11

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v5

    double-to-float v5, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v10, v6

    iget v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v12

    double-to-float v6, v10

    iget-object v10, v0, Lcom/geetest/sdk/views/GT3GeetestView;->h:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_7
    move/from16 v16, v10

    move/from16 v17, v11

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    iget v5, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v5, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v12, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v12, v1, v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget v10, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget v14, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v1, v14

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v10, v6

    iget v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->p:I

    int-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v12

    double-to-float v6, v10

    iget-object v10, v0, Lcom/geetest/sdk/views/GT3GeetestView;->h:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    :goto_1
    iget-wide v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ac:D

    const-wide v3, 0x3fa999999999999aL    # 0.05

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ac:D

    .line 141
    :goto_2
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    goto :goto_3

    :cond_8
    move/from16 v16, v10

    move/from16 v17, v11

    .line 145
    :goto_3
    iget-boolean v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->w:Z

    if-eqz v1, :cond_a

    .line 146
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    if-ltz v1, :cond_9

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 150
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v8

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->q:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    :goto_4
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->af:I

    .line 157
    :cond_a
    iget-boolean v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->x:Z

    if-eqz v1, :cond_b

    .line 158
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->j:Landroid/graphics/Paint;

    iget v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ai:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->n:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v9, 0xd

    div-int/lit8 v3, v3, 0x16

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v9, 0x2

    div-int/lit8 v4, v4, 0x16

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->n:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v9, 0xa

    div-int/lit8 v4, v4, 0x16

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->n:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v9, 0x16

    div-int/lit8 v3, v3, 0x16

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v9, 0x10

    div-int/lit8 v4, v4, 0x16

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    iget-object v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->n:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/geetest/sdk/views/GT3GeetestView;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    new-instance v2, Landroid/graphics/RectF;

    neg-int v1, v9

    int-to-float v1, v1

    int-to-float v3, v9

    invoke-direct {v2, v1, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    iget v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->ae:I

    neg-int v1, v1

    int-to-float v4, v1

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->i:Landroid/graphics/Paint;

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    :cond_b
    iget-boolean v1, v0, Lcom/geetest/sdk/views/GT3GeetestView;->aa:Z

    if-eqz v1, :cond_c

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move/from16 v3, v16

    int-to-float v3, v3

    iget-object v4, v0, Lcom/geetest/sdk/views/GT3GeetestView;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v1, v17

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v17

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget-object v6, v0, Lcom/geetest/sdk/views/GT3GeetestView;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method public setGtListener(Lcom/geetest/sdk/views/GT3GeetestView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/views/GT3GeetestView;->o:Lcom/geetest/sdk/views/GT3GeetestView$c;

    return-void
.end method
