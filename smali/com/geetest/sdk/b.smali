.class public Lcom/geetest/sdk/b;
.super Ljava/lang/Object;
.source "GT3Controller.java"


# static fields
.field private static final m:Ljava/lang/String; = "b"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/GT3ConfigBean;

.field private c:Lcom/geetest/sdk/bc;

.field private d:Lcom/geetest/sdk/g;

.field private e:Lcom/geetest/sdk/as;

.field private f:Ljava/lang/String;

.field private g:Lcom/geetest/sdk/at;

.field private h:Ljava/lang/String;

.field private i:Lcom/geetest/sdk/a$d;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/b;->k:Z

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/geetest/sdk/b;->l:I

    .line 9
    iput-object p1, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    .line 12
    new-instance v0, Lcom/geetest/sdk/as;

    invoke-direct {v0}, Lcom/geetest/sdk/as;-><init>()V

    iput-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 14
    iget-object v1, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 16
    new-instance v0, Lcom/geetest/sdk/at;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    .line 17
    invoke-virtual {v0}, Lcom/geetest/sdk/at;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/geetest/sdk/b;->l:I

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/geetest/sdk/b;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/geetest/sdk/b;->k:Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 3
    iget-object v2, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0}, Lcom/geetest/sdk/as;->a()V

    .line 5
    iput-object v1, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/geetest/sdk/at;->c()V

    .line 10
    iput-object v1, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    .line 12
    :cond_1
    invoke-static {}, Lcom/geetest/sdk/ax;->b()V

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->j()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->c()V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/geetest/sdk/GT3ConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/b;->l:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/b;->k:Z

    return v0
.end method

.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/geetest/sdk/b;->m:Ljava/lang/String;

    const-string v1, "api2\u63a5\u53e3\u9519\u8bef\uff0c\u9519\u8bef\u7801\u4e3a\uff1a209-->API2 Result Error !"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {v0}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    const-string v1, "API2 Result Error !  { 1. \u5ba2\u6237\u7aef\u548c\u670d\u52a1\u7aef\u6570\u636e\u4e0d\u901a\uff0c\u68c0\u67e5\u6570\u636e\u8bf7\u6c42get\u3001post\u662f\u5426\u5bf9\u5e94\uff0c\u68c0\u67e5\u6570\u636e\u683c\u5f0fjson\u3001form\u8868\u5355; 2.\u670d\u52a1\u7aefSDK\u4e8c\u6b21\u6821\u9a8c\u5931\u8d25\uff0c\u68c0\u67e5\u4f20\u5165challenge\u3001validate\u6570\u636e\u662f\u5426\u6b63\u5e38\uff0c\u6392\u67e5md5\u5904\u7406\u540e\u5931\u8d25\u539f\u56e0 }"

    .line 4
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string v1, "209"

    .line 6
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v3}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 8
    iget-object v1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/a;->clone()Lcom/geetest/sdk/GT3ErrorBean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/g;->a(Lcom/geetest/sdk/GT3ErrorBean;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    new-instance v0, Lcom/geetest/sdk/g;

    iget-object v1, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0, v1, v2}, Lcom/geetest/sdk/g;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v0, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    .line 2
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/g;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->k()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->e()Lcom/geetest/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->m()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->h()Lcom/geetest/sdk/g$e;

    move-result-object v0

    sget-object v1, Lcom/geetest/sdk/g$e;->SHOW_WEB:Lcom/geetest/sdk/g$e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/geetest/sdk/b;->g()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/geetest/sdk/utils/d;->a:Z

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/g;->g()Lcom/geetest/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/d;->show()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/geetest/sdk/utils/d;->a:Z

    .line 8
    sget-object v0, Lcom/geetest/sdk/b;->m:Ljava/lang/String;

    const-string v1, "startCustomFlow"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 13
    iget-object v2, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0}, Lcom/geetest/sdk/as;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/b;->f:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0}, Lcom/geetest/sdk/as;->a()V

    .line 16
    iput-object v1, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/geetest/sdk/at;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/b;->h:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    invoke-virtual {v0}, Lcom/geetest/sdk/at;->c()V

    .line 22
    iput-object v1, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 26
    iget-object v0, p0, Lcom/geetest/sdk/b;->i:Lcom/geetest/sdk/a$d;

    if-eqz v0, :cond_3

    .line 27
    invoke-interface {v0}, Lcom/geetest/sdk/a$d;->d()V

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/b;->i:Lcom/geetest/sdk/a$d;

    invoke-interface {v0}, Lcom/geetest/sdk/a$d;->i()V

    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geetest/sdk/GT3BaseListener;->onButtonClick()V

    goto :goto_0

    .line 40
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode configuration error !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->j()V

    .line 50
    iget-object v0, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geetest/sdk/GT3BaseListener;->onButtonClick()V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 3
    iget-object v2, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0}, Lcom/geetest/sdk/as;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/b;->f:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    invoke-virtual {v0}, Lcom/geetest/sdk/as;->a()V

    .line 6
    iput-object v1, p0, Lcom/geetest/sdk/b;->e:Lcom/geetest/sdk/as;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/geetest/sdk/at;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/sdk/b;->h:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    invoke-virtual {v0}, Lcom/geetest/sdk/at;->c()V

    .line 12
    iput-object v1, p0, Lcom/geetest/sdk/b;->g:Lcom/geetest/sdk/at;

    .line 15
    :cond_1
    sget-object v0, Lcom/geetest/sdk/b;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorData-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/geetest/sdk/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/geetest/sdk/b;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motionString-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/geetest/sdk/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/geetest/sdk/bc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/sdk/bc;-><init>(I)V

    iput-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    .line 19
    iget-object v2, p0, Lcom/geetest/sdk/b;->i:Lcom/geetest/sdk/a$d;

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/bb;->setButtonListener(Lcom/geetest/sdk/a$d;)V

    .line 20
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {p0}, Lcom/geetest/sdk/b;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/bb;->a(Landroid/content/Context;)V

    .line 21
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {p0}, Lcom/geetest/sdk/b;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 22
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {p0}, Lcom/geetest/sdk/b;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/bb;->a(I)V

    .line 23
    iget-object v0, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    new-instance v2, Lcom/geetest/sdk/model/beans/c;

    invoke-direct {v2}, Lcom/geetest/sdk/model/beans/c;-><init>()V

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/model/beans/c;)V

    .line 24
    new-instance v0, Lcom/geetest/sdk/model/beans/b;

    invoke-direct {v0}, Lcom/geetest/sdk/model/beans/b;-><init>()V

    .line 25
    iget-object v2, p0, Lcom/geetest/sdk/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->i(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/geetest/sdk/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->k(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getUserInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->b(Ljava/util/Map;)V

    .line 28
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getGTViewWithParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->a(Ljava/util/Map;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->a(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->h(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/GT3ConfigBean;->getTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->d(I)V

    .line 32
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/GT3ConfigBean;->getWebviewTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->e(I)V

    .line 33
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/GT3ConfigBean;->getCorners()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->a(I)V

    .line 36
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->b(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/model/beans/b;)V

    .line 41
    new-instance v0, Lcom/geetest/sdk/q;

    invoke-direct {v0}, Lcom/geetest/sdk/q;-><init>()V

    .line 44
    new-instance v1, Lcom/geetest/sdk/w;

    invoke-direct {v1}, Lcom/geetest/sdk/w;-><init>()V

    .line 45
    new-instance v2, Lcom/geetest/sdk/s;

    invoke-direct {v2}, Lcom/geetest/sdk/s;-><init>()V

    .line 46
    new-instance v3, Lcom/geetest/sdk/x;

    invoke-direct {v3}, Lcom/geetest/sdk/x;-><init>()V

    .line 47
    new-instance v4, Lcom/geetest/sdk/t;

    invoke-direct {v4}, Lcom/geetest/sdk/t;-><init>()V

    .line 50
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 51
    invoke-virtual {v1, v2}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 55
    invoke-virtual {v2, v3}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 56
    invoke-virtual {v3, v4}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 59
    invoke-virtual {p0}, Lcom/geetest/sdk/b;->g()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 60
    iget-object v1, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    if-nez v1, :cond_3

    .line 61
    new-instance v1, Lcom/geetest/sdk/g;

    iget-object v2, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v1, v2, v3}, Lcom/geetest/sdk/g;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v1, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    goto :goto_0

    .line 64
    :cond_2
    new-instance v1, Lcom/geetest/sdk/g;

    iget-object v2, p0, Lcom/geetest/sdk/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/geetest/sdk/b;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v1, v2, v3}, Lcom/geetest/sdk/g;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v1, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    .line 66
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    invoke-virtual {p0}, Lcom/geetest/sdk/b;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/g;->a(I)V

    .line 67
    iget-object v1, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    iget-object v2, p0, Lcom/geetest/sdk/b;->i:Lcom/geetest/sdk/a$d;

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/g;->setButtonListener(Lcom/geetest/sdk/a$d;)V

    .line 68
    iget-object v1, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    invoke-virtual {p0}, Lcom/geetest/sdk/b;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/g;->a(Z)V

    .line 69
    iget-object v1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    iget-object v2, p0, Lcom/geetest/sdk/b;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/g;)V

    .line 71
    iget-object v1, p0, Lcom/geetest/sdk/b;->c:Lcom/geetest/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/bb;)V

    return-void
.end method

.method public setButtonListener(Lcom/geetest/sdk/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/b;->i:Lcom/geetest/sdk/a$d;

    return-void
.end method
