.class Lcom/geetest/sdk/x$b;
.super Lcom/geetest/sdk/av;
.source "WebviewHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/geetest/sdk/x;


# direct methods
.method private constructor <init>(Lcom/geetest/sdk/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    invoke-direct {p0}, Lcom/geetest/sdk/av;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/geetest/sdk/x$b;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/x;Lcom/geetest/sdk/x$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/geetest/sdk/x$b;-><init>(Lcom/geetest/sdk/x;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/x$b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "Sensebot"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    const-string v2, "4.3.2"

    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "challenge"

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v2, v2, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v2}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "duration"

    .line 9
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v4, v4, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v4}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v1, v1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->b()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/GT3Listener;->onDialogReady(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->l()V

    .line 15
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->a()Lcom/geetest/sdk/a$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Lcom/geetest/sdk/a$d;->c()V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/c;->g(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v1, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/bb;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/geetest/sdk/x$b;->a:Z

    .line 24
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview \u56de\u8c03\u9519\u8bef-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0, p1, v1, p2, v3}, Lcom/geetest/sdk/x;->a(Lcom/geetest/sdk/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object p1, p1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->g(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object p2, p1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/bb;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "202"

    const-string v2, "webview parse json error-->"

    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object p1, p1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "geetest_challenge"

    .line 31
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/geetest/sdk/model/beans/b;->d(Ljava/lang/String;)V

    const-string v4, "geetest_validate"

    .line 32
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/geetest/sdk/model/beans/b;->f(Ljava/lang/String;)V

    const-string v4, "geetest_seccode"

    .line 33
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/geetest/sdk/model/beans/b;->e(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object p1, p1, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    iget-object v3, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v3, v3, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {p1, v3}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/bb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    iget-object v3, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview \u89e3\u6790json\u9519\u8bef\uff0c\u9519\u8bef\u7801\uff0c202--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-->"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {v3, v1, v4, p1, v0}, Lcom/geetest/sdk/x;->a(Lcom/geetest/sdk/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webview \u9a8c\u8bc1\u9519\u8bef\uff0c\u9519\u8bef\u7801\uff0c202--->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v3, p2, v0}, Lcom/geetest/sdk/x;->a(Lcom/geetest/sdk/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->b()V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->a()Lcom/geetest/sdk/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/geetest/sdk/model/beans/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/geetest/sdk/a$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/geetest/sdk/g$e;->NUMBER_ONE_CLOSE:Lcom/geetest/sdk/g$e;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/g$e;)V

    .line 10
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->d:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/geetest/sdk/GT3BaseListener;->onClosed(I)V

    return-void
.end method
