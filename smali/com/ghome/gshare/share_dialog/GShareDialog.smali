.class public Lcom/ghome/gshare/share_dialog/GShareDialog;
.super Lcom/ghome/gshare/share_dialog/GShareBaseDialog;
.source "GShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;,
        Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;,
        Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;
    }
.end annotation


# instance fields
.field private mImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;

.field private mTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_dialogCancelListener:Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mTexts:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mImgs:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mTexts:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mImgs:Ljava/util/List;

    .line 31
    invoke-direct {p0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->initView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mCreateView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/ghome/gshare/share_dialog/GShareDialog;)Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->m_dialogCancelListener:Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghome/gshare/share_dialog/GShareDialog;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mTexts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghome/gshare/share_dialog/GShareDialog;)Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mListener:Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;

    return-object p0
.end method

.method private initView()Landroid/view/View;
    .locals 15

    .line 47
    iget-object v0, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x1000000

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v4, 0x1

    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    new-instance v5, Lcom/ghome/gshare/share_dialog/GShareTextView;

    iget-object v6, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/ghome/gshare/share_dialog/GShareTextView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mDensity:I

    const/16 v8, 0x32

    mul-int/lit8 v7, v7, 0x32

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 63
    invoke-virtual {v5, v6}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "\u5206\u4eab"

    .line 64
    invoke-virtual {v5, v6}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v5, v2}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 66
    invoke-virtual {v5, v6}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setTextSize(F)V

    const/16 v7, 0x11

    .line 67
    invoke-virtual {v5, v7}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setGravity(I)V

    .line 68
    invoke-virtual {v5, v3}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    if-ge v9, v0, :cond_1

    add-int/2addr v10, v4

    .line 73
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v3, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 77
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 79
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    mul-int/lit8 v12, v10, 0x3

    if-ge v9, v12, :cond_0

    if-ge v9, v0, :cond_0

    .line 83
    new-instance v12, Lcom/ghome/gshare/share_dialog/GShareTextView;

    iget-object v13, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/ghome/gshare/share_dialog/GShareTextView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    iget v14, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mScreenWidth:I

    div-int/lit8 v14, v14, 0x3

    invoke-direct {v13, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    iget v14, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mDensity:I

    mul-int/lit8 v14, v14, 0xa

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    iget v14, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mDensity:I

    mul-int/lit8 v14, v14, 0xa

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 90
    invoke-virtual {v12, v13}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {v12, v8, v8}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setBounds(II)V

    .line 92
    iget-object v13, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-object v14, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mImgs:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v14, 0x0

    .line 93
    invoke-virtual {v12, v14, v13, v14, v14}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v13, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mTexts:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v12, v7}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setGravity(I)V

    .line 96
    new-instance v13, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;

    invoke-direct {v13, p0, v9}, Lcom/ghome/gshare/share_dialog/GShareDialog$MyOnClickListener;-><init>(Lcom/ghome/gshare/share_dialog/GShareDialog;I)V

    .line 97
    invoke-virtual {v12, v13}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/ghome/gshare/share_dialog/GShareTextView;

    iget-object v5, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/ghome/gshare/share_dialog/GShareTextView;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mDensity:I

    mul-int/lit8 v9, v9, 0x32

    invoke-direct {v5, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 107
    invoke-virtual {v0, v5}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "\u53d6\u6d88"

    .line 108
    invoke-virtual {v0, v4}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v0, v2}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setTextColor(I)V

    .line 110
    invoke-virtual {v0, v6}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setTextSize(F)V

    .line 111
    invoke-virtual {v0, v7}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setGravity(I)V

    .line 112
    invoke-virtual {v0, v3}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setBackgroundColor(I)V

    .line 113
    new-instance v2, Lcom/ghome/gshare/share_dialog/GShareDialog$1;

    invoke-direct {v2, p0}, Lcom/ghome/gshare/share_dialog/GShareDialog$1;-><init>(Lcom/ghome/gshare/share_dialog/GShareDialog;)V

    invoke-virtual {v0, v2}, Lcom/ghome/gshare/share_dialog/GShareTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private setLayout()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 164
    iget v1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mScreenWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x51

    .line 165
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    invoke-virtual {p0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public SetDialogCancelListener(Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->m_dialogCancelListener:Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/ghome/gshare/share_dialog/GShareBaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ghome/gshare/share_dialog/GShareDialog;->setCanceledOnTouchOutside(Z)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/ghome/gshare/share_dialog/GShareDialog;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 41
    iget-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mCreateView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ghome/gshare/share_dialog/GShareDialog;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->setLayout()V

    return-void
.end method

.method public setOnClickListener(Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ghome/gshare/share_dialog/GShareDialog;->mListener:Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;

    return-void
.end method
