.class public Lcom/geetest/sdk/views/CoverFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CoverFrameLayout.java"


# static fields
.field private static final b:Ljava/lang/String; = "CoverFrameLayout"


# instance fields
.field private a:Lcom/geetest/sdk/as;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/geetest/sdk/as;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p3, p0, Lcom/geetest/sdk/views/CoverFrameLayout;->a:Lcom/geetest/sdk/as;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 12
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    .line 18
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_0
    sget-object p3, Lcom/geetest/sdk/views/CoverFrameLayout;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "has parent"

    goto :goto_0

    :cond_1
    const-string v1, " not parent"

    :goto_0
    invoke-static {p3, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/views/CoverFrameLayout;->a:Lcom/geetest/sdk/as;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/geetest/sdk/as;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/views/CoverFrameLayout;->a:Lcom/geetest/sdk/as;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/geetest/sdk/as;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 13
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
