.class Lcom/geetest/sdk/dialog/views/a$b$b;
.super Ljava/lang/Object;
.source "WebviewBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/dialog/views/a$b;->gtReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/dialog/views/a$b;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/dialog/views/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->g(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->d(Lcom/geetest/sdk/dialog/views/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->d(Lcom/geetest/sdk/dialog/views/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v1, v1, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/a;->h(Lcom/geetest/sdk/dialog/views/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->d(Lcom/geetest/sdk/dialog/views/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b$b;->a:Lcom/geetest/sdk/dialog/views/a$b;

    iget-object v0, v0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/au;->a()V

    :cond_1
    return-void
.end method
