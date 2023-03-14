.class Lcom/geetest/sdk/w$a;
.super Ljava/lang/Object;
.source "GetTypeAndGetHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/w;->a(Lcom/geetest/sdk/bb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/bb;

.field final synthetic b:Lcom/geetest/sdk/w;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/w;Lcom/geetest/sdk/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iput-object p2, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    .line 3
    new-array v1, v1, [Lcom/geetest/sdk/model/beans/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 4
    iget-object v3, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v3}, Lcom/geetest/sdk/bb;->c()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v6}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v6

    new-instance v7, Lcom/geetest/sdk/w$a$a;

    invoke-direct {v7, p0, v2, v1, v0}, Lcom/geetest/sdk/w$a$a;-><init>(Lcom/geetest/sdk/w$a;[Z[Lcom/geetest/sdk/model/beans/a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v3, v6, v7}, Lcom/geetest/sdk/c;->c(Landroid/content/Context;Lcom/geetest/sdk/model/beans/b;Lcom/geetest/sdk/ay;)Lcom/geetest/sdk/ax;

    .line 13
    iget-object v3, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v3}, Lcom/geetest/sdk/bb;->c()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v6}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v6

    new-instance v7, Lcom/geetest/sdk/w$a$b;

    invoke-direct {v7, p0, v2, v1, v0}, Lcom/geetest/sdk/w$a$b;-><init>(Lcom/geetest/sdk/w$a;[Z[Lcom/geetest/sdk/model/beans/a;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v3, v6, v7}, Lcom/geetest/sdk/c;->b(Landroid/content/Context;Lcom/geetest/sdk/model/beans/b;Lcom/geetest/sdk/ay;)Lcom/geetest/sdk/ax;

    .line 23
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 24
    aget-boolean v0, v2, v4

    if-eqz v0, :cond_0

    aget-boolean v0, v2, v5

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iget-object v0, v0, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    iget-object v1, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/bb;)V

    goto/16 :goto_1

    .line 27
    :cond_0
    aget-boolean v0, v2, v4

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/model/beans/a;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/model/beans/a;)V

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iget-object v0, v0, Lcom/geetest/sdk/u;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/sdk/w$a$c;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/w$a$c;-><init>(Lcom/geetest/sdk/w$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    iget-object v1, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v1}, Lcom/geetest/sdk/bb;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/geetest/sdk/w;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetTypeAndGetHandler InterruptedException: 206-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {v1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetTypeAndGetHandler InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string v0, "206"

    .line 46
    invoke-virtual {v1, v0}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->j()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 48
    iget-object v0, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v0}, Lcom/geetest/sdk/bb;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/geetest/sdk/w$a;->a:Lcom/geetest/sdk/bb;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/bb;->a(Lcom/geetest/sdk/model/beans/a;)V

    .line 50
    iget-object v0, p0, Lcom/geetest/sdk/w$a;->b:Lcom/geetest/sdk/w;

    iget-object v0, v0, Lcom/geetest/sdk/u;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/sdk/w$a$d;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/w$a$d;-><init>(Lcom/geetest/sdk/w$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
