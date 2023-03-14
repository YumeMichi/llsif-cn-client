.class public Lcom/ghome/gshare/share_dialog/GShareBaseDialog;
.super Landroid/app/Dialog;
.source "GShareBaseDialog.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCreateView:Landroid/view/View;

.field public mDensity:I

.field public mEnterAnim:Landroid/view/animation/Animation;

.field public mExitAnim:Landroid/view/animation/Animation;

.field public mScreenHeight:I

.field public mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ghome/gshare/share_dialog/GShareBaseDialog;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private enterAnimation()V
    .locals 10

    .line 42
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mEnterAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mEnterAnim:Landroid/view/animation/Animation;

    .line 44
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mEnterAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mCreateView:Landroid/view/View;

    iget-object v1, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private exitAnimation()V
    .locals 10

    .line 52
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mExitAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mExitAnim:Landroid/view/animation/Animation;

    .line 54
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mExitAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 55
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/ghome/gshare/share_dialog/GShareBaseDialog$1;

    invoke-direct {v1, p0}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog$1;-><init>(Lcom/ghome/gshare/share_dialog/GShareBaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mCreateView:Landroid/view/View;

    iget-object v1, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 26
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mContext:Landroid/content/Context;

    .line 28
    iget-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 29
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mScreenHeight:I

    .line 30
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mScreenWidth:I

    .line 31
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    iput p1, p0, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->mDensity:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->exitAnimation()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->dismiss()V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 36
    invoke-direct {p0}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->enterAnimation()V

    return-void
.end method
