.class public Lcom/geetest/sdk/GT3GeetestUtils;
.super Ljava/lang/Object;
.source "GT3GeetestUtils.java"


# instance fields
.field private holder:Lcom/geetest/sdk/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/geetest/sdk/a;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.3.2"

    return-object v0
.end method


# virtual methods
.method public changeDialogLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/a;->a()V

    return-void
.end method

.method public destory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/a;->b()V

    return-void
.end method

.method public dismissGeetestDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/a;->c()V

    return-void
.end method

.method public getGeetest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/a;->e()V

    return-void
.end method

.method public getHolder()Lcom/geetest/sdk/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    return-object v0
.end method

.method public init(Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/a;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    return-void
.end method

.method public showFailedDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/a;->f()V

    return-void
.end method

.method public showSuccessDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/a;->g()V

    return-void
.end method

.method public startCustomFlow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3GeetestUtils;->holder:Lcom/geetest/sdk/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/a;->h()V

    return-void
.end method
