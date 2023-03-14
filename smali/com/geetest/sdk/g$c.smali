.class public Lcom/geetest/sdk/g$c;
.super Landroid/os/Handler;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/g;


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->b()V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->d()V

    .line 5
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/geetest/sdk/GT3BaseListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/geetest/sdk/g$c;->a:Lcom/geetest/sdk/g;

    invoke-static {v0}, Lcom/geetest/sdk/g;->b(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/GT3ErrorBean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/geetest/sdk/GT3BaseListener;->onFailed(Lcom/geetest/sdk/GT3ErrorBean;)V

    :cond_2
    :goto_0
    return-void
.end method
