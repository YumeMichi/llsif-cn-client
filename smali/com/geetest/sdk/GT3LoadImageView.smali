.class public Lcom/geetest/sdk/GT3LoadImageView;
.super Landroid/view/View;
.source "GT3LoadImageView.java"


# instance fields
.field private iconRes:I

.field private loadViewHeight:I

.field private loadViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x2

    .line 2
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewWidth:I

    .line 3
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x2

    .line 5
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewWidth:I

    .line 6
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x2

    .line 8
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewWidth:I

    .line 9
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewHeight:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    return-void
.end method

.method public getIconRes()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gt3_new_bind_logo"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/geetest/sdk/GT3LoadImageView;->iconRes:I

    return v0
.end method

.method public getLoadViewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewHeight:I

    return v0
.end method

.method public getLoadViewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewWidth:I

    return v0
.end method

.method public isGif()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setIconRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->iconRes:I

    return-void
.end method

.method public setLoadViewHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewHeight:I

    return-void
.end method

.method public setLoadViewWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->loadViewWidth:I

    return-void
.end method
