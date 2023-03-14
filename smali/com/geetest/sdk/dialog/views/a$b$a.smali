.class Lcom/geetest/sdk/dialog/views/a$b$a;
.super Ljava/lang/Object;
.source "WebviewBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/dialog/views/a$b;->gtCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/geetest/sdk/dialog/views/a$b;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/dialog/views/a$b;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->c:Lcom/geetest/sdk/dialog/views/a$b;

    iput p2, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->a:I

    iput-object p3, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->c:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->f(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->c:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->f(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->c:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->f(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    iget v1, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->a:I

    invoke-interface {v0, v1}, Lcom/geetest/sdk/GT3BaseListener;->onReceiveCaptchaCode(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/geetest/sdk/dialog/views/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configBean is null !"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->c:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->c:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/geetest/sdk/au;->a(ZLjava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$a;->c:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/a;->c()V

    :cond_2
    :goto_1
    return-void
.end method
