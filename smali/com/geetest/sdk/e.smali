.class public abstract Lcom/geetest/sdk/e;
.super Lcom/geetest/sdk/d;
.source "BaseScreenDialog.java"


# instance fields
.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/geetest/sdk/d;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/e;->d:Landroid/content/Context;

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/e;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "BaseScreenDialog"

    const-string v1, "The context is unexpectedly empty !"

    .line 2
    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x500

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8
    sget-boolean v2, Lcom/geetest/sdk/utils/d;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x2

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/geetest/sdk/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/g;->b(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 14
    iget-object v2, p0, Lcom/geetest/sdk/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    const/16 v2, 0x11

    .line 16
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 17
    iget-object v2, p0, Lcom/geetest/sdk/e;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/geetest/sdk/e;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/geetest/sdk/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/e;->c()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/geetest/sdk/e;->e:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/e;->e:I

    return v0
.end method
