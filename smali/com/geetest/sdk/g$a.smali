.class Lcom/geetest/sdk/g$a;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/g;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/GT3ConfigBean;

.field final synthetic b:Lcom/geetest/sdk/g;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/g;Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/g$a;->b:Lcom/geetest/sdk/g;

    iput-object p2, p0, Lcom/geetest/sdk/g$a;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/geetest/sdk/g$a;->b:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->d(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/geetest/sdk/g$a;->b:Lcom/geetest/sdk/g;

    invoke-static {p1}, Lcom/geetest/sdk/g;->d(Lcom/geetest/sdk/g;)Lcom/geetest/sdk/a$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/geetest/sdk/a$d;->h()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/geetest/sdk/g$a;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/g$a;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/geetest/sdk/GT3BaseListener;->onClosed(I)V

    :cond_1
    return-void
.end method
