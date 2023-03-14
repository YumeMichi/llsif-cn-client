.class public Lcom/geetest/sdk/g;
.super Ljava/lang/Object;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/g$f;,
        Lcom/geetest/sdk/g$d;,
        Lcom/geetest/sdk/g$c;,
        Lcom/geetest/sdk/g$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/GT3ConfigBean;

.field private c:Lcom/geetest/sdk/f;

.field private d:Lcom/geetest/sdk/f;

.field private e:Lcom/geetest/sdk/dialog/views/LoadingView;

.field private f:Lcom/geetest/sdk/dialog/views/GtWebView;

.field private g:Lcom/geetest/sdk/g$c;

.field private h:Lcom/geetest/sdk/g$d;

.field private i:Lcom/geetest/sdk/g$f;

.field private j:Lcom/geetest/sdk/GT3ErrorBean;

.field private k:Lcom/geetest/sdk/dialog/views/a;

.field private l:Lcom/geetest/sdk/a$d;

.field private m:I

.field private n:Z

.field public o:Lcom/geetest/sdk/g$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/geetest/sdk/g$c;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/g$c;-><init>(Lcom/geetest/sdk/g;)V

    iput-object v0, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/geetest/sdk/g;->m:I

    .line 20
    sget-object v0, Lcom/geetest/sdk/g$e;->INIT:Lcom/geetest/sdk/g$e;

    iput-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    .line 81
    iput-object p1, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    .line 83
    new-instance v0, Lcom/geetest/sdk/f;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    .line 84
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getDialogOffsetY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/e;->a(I)V

    .line 85
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->isCanceledOnTouchOutside()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    new-instance v0, Lcom/geetest/sdk/f;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    .line 87
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getDialogOffsetY()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/e;->a(I)V

    .line 88
    iget-object p1, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->isCanceledOnTouchOutside()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 89
    iget-object p1, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    new-instance v0, Lcom/geetest/sdk/g$a;

    invoke-direct {v0, p0, p2}, Lcom/geetest/sdk/g$a;-><init>(Lcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ConfigBean;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 102
    iget-object p1, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    new-instance v0, Lcom/geetest/sdk/g$b;

    invoke-direct {v0, p0, p2}, Lcom/geetest/sdk/g$b;-><init>(Lcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ConfigBean;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ConfigBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    return-object p0
.end method

.method static synthetic b(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ErrorBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/g;->j:Lcom/geetest/sdk/GT3ErrorBean;

    return-object p0
.end method

.method static synthetic c(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/g$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    return-object p0
.end method

.method static synthetic d(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/g;->l:Lcom/geetest/sdk/a$d;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/geetest/sdk/g;->k:Lcom/geetest/sdk/dialog/views/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/a;->d()V

    .line 50
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    iget-object v1, p0, Lcom/geetest/sdk/g;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/f;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/geetest/sdk/g;->m:I

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ErrorBean;)V
    .locals 8

    .line 10
    sget-object v0, Lcom/geetest/sdk/g$e;->DISMISS:Lcom/geetest/sdk/g$e;

    iput-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    .line 12
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/geetest/sdk/g;->n()V

    .line 31
    iput-object p1, p0, Lcom/geetest/sdk/g;->j:Lcom/geetest/sdk/GT3ErrorBean;

    .line 32
    new-instance v0, Lcom/geetest/sdk/g$d;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/g$d;-><init>(Lcom/geetest/sdk/g;)V

    iput-object v0, p0, Lcom/geetest/sdk/g;->h:Lcom/geetest/sdk/g$d;

    .line 33
    new-instance v0, Lcom/geetest/sdk/dialog/views/FailedView;

    iget-object v2, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    iget-object v6, p0, Lcom/geetest/sdk/g;->h:Lcom/geetest/sdk/g$d;

    iget-object v7, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/geetest/sdk/dialog/views/FailedView;-><init>(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ErrorBean;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$d;Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 34
    iget-object p1, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/f;->c(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {p1}, Lcom/geetest/sdk/d;->show()V

    .line 38
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    .line 40
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/geetest/sdk/GT3BaseListener;->onFailed(Lcom/geetest/sdk/GT3ErrorBean;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    .line 43
    iget-object v0, p0, Lcom/geetest/sdk/g;->l:Lcom/geetest/sdk/a$d;

    if-eqz v0, :cond_2

    .line 44
    iget-object v1, p1, Lcom/geetest/sdk/GT3ErrorBean;->errorDesc:Ljava/lang/String;

    iget-object v2, p1, Lcom/geetest/sdk/GT3ErrorBean;->errorCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/geetest/sdk/a$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/geetest/sdk/GT3BaseListener;->onFailed(Lcom/geetest/sdk/GT3ErrorBean;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/geetest/sdk/g$e;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/b;Lcom/geetest/sdk/av;)V
    .locals 3

    .line 5
    new-instance v0, Lcom/geetest/sdk/dialog/views/a;

    iget-object v1, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    invoke-direct {v0, v1, v2}, Lcom/geetest/sdk/dialog/views/a;-><init>(Landroid/content/Context;Lcom/geetest/sdk/f;)V

    iput-object v0, p0, Lcom/geetest/sdk/g;->k:Lcom/geetest/sdk/dialog/views/a;

    .line 6
    invoke-virtual {v0, p1}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/model/beans/b;)V

    .line 7
    iget-object p1, p0, Lcom/geetest/sdk/g;->k:Lcom/geetest/sdk/dialog/views/a;

    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 8
    iget-object p1, p0, Lcom/geetest/sdk/g;->k:Lcom/geetest/sdk/dialog/views/a;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/av;)V

    .line 9
    iget-object p1, p0, Lcom/geetest/sdk/g;->k:Lcom/geetest/sdk/dialog/views/a;

    invoke-virtual {p1}, Lcom/geetest/sdk/dialog/views/a;->a()Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/sdk/g;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/geetest/sdk/g;->n:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    sget-object v0, Lcom/geetest/sdk/g$e;->DISMISS:Lcom/geetest/sdk/g$e;

    iput-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    .line 4
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    .line 5
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->f()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/g;->l:Lcom/geetest/sdk/a$d;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/geetest/sdk/a$d;->h()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->dismiss()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/g;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/g;->m:I

    return v0
.end method

.method public g()Lcom/geetest/sdk/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    return-object v0
.end method

.method public h()Lcom/geetest/sdk/g$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/g;->n:Z

    return v0
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    iget-object v2, p0, Lcom/geetest/sdk/g;->h:Lcom/geetest/sdk/g$d;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object v0, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    iget-object v2, p0, Lcom/geetest/sdk/g;->i:Lcom/geetest/sdk/g$f;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_1
    iput-object v1, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/g;->k:Lcom/geetest/sdk/dialog/views/a;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/a;->b()V

    .line 20
    iput-object v1, p0, Lcom/geetest/sdk/g;->k:Lcom/geetest/sdk/dialog/views/a;

    :cond_1
    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 7
    new-instance v0, Lcom/geetest/sdk/dialog/views/LoadingView;

    iget-object v1, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getLoadImageView()Lcom/geetest/sdk/GT3LoadImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0, v1, v2, v3}, Lcom/geetest/sdk/dialog/views/LoadingView;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v0, p0, Lcom/geetest/sdk/g;->e:Lcom/geetest/sdk/dialog/views/LoadingView;

    .line 8
    iget-object v1, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/d;->b(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    const-string v1, "DialogController"

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showLoading-->Success !"

    .line 10
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->show()V

    .line 12
    sget-object v0, Lcom/geetest/sdk/g$e;->SHOW_LOADING:Lcom/geetest/sdk/g$e;

    iput-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    goto :goto_0

    :cond_0
    const-string v0, "showLoading-->error"

    .line 15
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->f()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    .line 23
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    iget-object v3, p0, Lcom/geetest/sdk/g;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v3}, Lcom/geetest/sdk/d;->b(Landroid/view/View;)V

    .line 24
    iget-object v0, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    sput-boolean v1, Lcom/geetest/sdk/utils/d;->a:Z

    .line 27
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->show()V

    .line 30
    :cond_0
    sget-object v0, Lcom/geetest/sdk/g$e;->SHOW_WEB:Lcom/geetest/sdk/g$e;

    iput-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    iget-object v1, p0, Lcom/geetest/sdk/g;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/f;->c(Landroid/view/View;)V

    .line 36
    :cond_2
    :goto_0
    sput-boolean v2, Lcom/geetest/sdk/utils/d;->a:Z

    .line 37
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->dismiss()V

    goto :goto_3

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->f()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/geetest/sdk/g;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 40
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode configuration error !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    iget-object v3, p0, Lcom/geetest/sdk/g;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v3}, Lcom/geetest/sdk/d;->b(Landroid/view/View;)V

    .line 43
    iget-object v0, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_7

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_7

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 44
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 45
    sput-boolean v1, Lcom/geetest/sdk/utils/d;->a:Z

    .line 46
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->show()V

    .line 47
    sget-object v0, Lcom/geetest/sdk/g$e;->SHOW_WEB:Lcom/geetest/sdk/g$e;

    iput-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    goto :goto_2

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/geetest/sdk/g;->c:Lcom/geetest/sdk/f;

    iget-object v1, p0, Lcom/geetest/sdk/g;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/f;->c(Landroid/view/View;)V

    .line 53
    :cond_7
    :goto_2
    sput-boolean v2, Lcom/geetest/sdk/utils/d;->a:Z

    :cond_8
    :goto_3
    return-void
.end method

.method public m()V
    .locals 7

    .line 1
    sget-object v0, Lcom/geetest/sdk/g$e;->DISMISS:Lcom/geetest/sdk/g$e;

    iput-object v0, p0, Lcom/geetest/sdk/g;->o:Lcom/geetest/sdk/g$e;

    .line 3
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->f()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/geetest/sdk/g;->n()V

    .line 22
    new-instance v0, Lcom/geetest/sdk/g$f;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/g$f;-><init>(Lcom/geetest/sdk/g;)V

    iput-object v0, p0, Lcom/geetest/sdk/g;->i:Lcom/geetest/sdk/g$f;

    .line 23
    new-instance v0, Lcom/geetest/sdk/dialog/views/SuccessView;

    iget-object v2, p0, Lcom/geetest/sdk/g;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/geetest/sdk/g;->g:Lcom/geetest/sdk/g$c;

    iget-object v5, p0, Lcom/geetest/sdk/g;->i:Lcom/geetest/sdk/g$f;

    iget-object v6, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/geetest/sdk/dialog/views/SuccessView;-><init>(Landroid/content/Context;Lcom/geetest/sdk/g;Lcom/geetest/sdk/g$c;Lcom/geetest/sdk/g$f;Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 24
    iget-object v1, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/f;->c(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/geetest/sdk/g;->d:Lcom/geetest/sdk/f;

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->show()V

    .line 26
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/geetest/sdk/GT3BaseListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/geetest/sdk/g;->b()V

    .line 31
    iget-object v0, p0, Lcom/geetest/sdk/g;->l:Lcom/geetest/sdk/a$d;

    if-eqz v0, :cond_2

    .line 32
    invoke-interface {v0}, Lcom/geetest/sdk/a$d;->a()V

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/geetest/sdk/g;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/geetest/sdk/GT3BaseListener;->onSuccess(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setButtonListener(Lcom/geetest/sdk/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/g;->l:Lcom/geetest/sdk/a$d;

    return-void
.end method
