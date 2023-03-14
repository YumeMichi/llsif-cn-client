.class Lcom/geetest/sdk/dialog/views/a$b;
.super Ljava/lang/Object;
.source "WebviewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/dialog/views/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/dialog/views/a;


# direct methods
.method private constructor <init>(Lcom/geetest/sdk/dialog/views/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/dialog/views/a;Lcom/geetest/sdk/dialog/views/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/geetest/sdk/dialog/views/a$b;-><init>(Lcom/geetest/sdk/dialog/views/a;)V

    return-void
.end method


# virtual methods
.method public gt3Error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "JSInterface-->gt3Error"

    .line 1
    invoke-static {v0, p1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->d(Lcom/geetest/sdk/dialog/views/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->d(Lcom/geetest/sdk/dialog/views/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/a;->h(Lcom/geetest/sdk/dialog/views/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

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
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/sdk/dialog/views/a$b$c;

    invoke-direct {v1, p0, p1}, Lcom/geetest/sdk/dialog/views/a$b$c;-><init>(Lcom/geetest/sdk/dialog/views/a$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public gtCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/geetest/sdk/dialog/views/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSInterface-->gtCallBack-->code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/geetest/sdk/dialog/views/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p3}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p3}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    iget-object p3, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p3}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    new-instance v0, Lcom/geetest/sdk/dialog/views/a$b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/geetest/sdk/dialog/views/a$b$a;-><init>(Lcom/geetest/sdk/dialog/views/a$b;ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public gtClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/geetest/sdk/dialog/views/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSInterface-->gtClose"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/au;->b()V

    :cond_0
    return-void
.end method

.method public gtNotify(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/geetest/sdk/dialog/views/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSInterface-->gtNotify-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "aspect_radio"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0, p1}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;I)I

    .line 9
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/geetest/sdk/dialog/views/a$b$d;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/dialog/views/a$b$d;-><init>(Lcom/geetest/sdk/dialog/views/a$b;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->a(Lcom/geetest/sdk/dialog/views/a;)Lcom/geetest/sdk/au;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse aspect_radio failed-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "202"

    invoke-virtual {v0, v1, p1}, Lcom/geetest/sdk/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public gtReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/geetest/sdk/dialog/views/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSInterface-->gtReady"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/a$b;->a:Lcom/geetest/sdk/dialog/views/a;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/a;->e(Lcom/geetest/sdk/dialog/views/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/sdk/dialog/views/a$b$b;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/dialog/views/a$b$b;-><init>(Lcom/geetest/sdk/dialog/views/a$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
