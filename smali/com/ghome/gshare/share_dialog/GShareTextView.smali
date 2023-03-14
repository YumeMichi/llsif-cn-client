.class public Lcom/ghome/gshare/share_dialog/GShareTextView;
.super Landroid/widget/TextView;
.source "GShareTextView.java"


# instance fields
.field private mBottom:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mLeft:Landroid/graphics/drawable/Drawable;

.field private mRight:Landroid/graphics/drawable/Drawable;

.field private mTop:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/ghome/gshare/share_dialog/GShareTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1e

    .line 9
    iput p2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    .line 10
    iput p2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    .line 21
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/ghome/gshare/share_dialog/GShareTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 28
    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    .line 29
    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    .line 31
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mRight:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setBounds(II)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    .line 67
    iput p2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    .line 68
    invoke-direct {p0}, Lcom/ghome/gshare/share_dialog/GShareTextView;->init()V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 43
    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    iget v2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mLeft:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p3, :cond_1

    .line 47
    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    iget v2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    iput-object p3, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mRight:Landroid/graphics/drawable/Drawable;

    :cond_1
    if-eqz p2, :cond_2

    .line 51
    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    iget v2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    iput-object p2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mTop:Landroid/graphics/drawable/Drawable;

    :cond_2
    if-eqz p4, :cond_3

    .line 55
    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mWidth:I

    iget v2, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mHeight:I

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    iput-object p4, p0, Lcom/ghome/gshare/share_dialog/GShareTextView;->mBottom:Landroid/graphics/drawable/Drawable;

    .line 58
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
