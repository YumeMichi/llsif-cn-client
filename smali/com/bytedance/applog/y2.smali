.class public final Lcom/bytedance/applog/y2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/y2$b;,
        Lcom/bytedance/applog/y2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Landroid/content/Intent;

.field public final c:Lcom/bytedance/applog/y2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/y2$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/applog/y2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/bytedance/applog/y2$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/y2;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/applog/y2;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/bytedance/applog/y2;->c:Lcom/bytedance/applog/y2$b;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/applog/y2;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/applog/y2$a;

    iget-object v1, p0, Lcom/bytedance/applog/y2;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/bytedance/applog/y2;->c:Lcom/bytedance/applog/y2$b;

    invoke-direct {v0, p0, v1, v3}, Lcom/bytedance/applog/y2$a;-><init>(Lcom/bytedance/applog/y2;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/applog/y2$b;)V

    iget-object v1, p0, Lcom/bytedance/applog/y2;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/applog/y2;->b:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/bytedance/applog/y2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/applog/y2;->c:Lcom/bytedance/applog/y2$b;

    iget-object v3, v0, Lcom/bytedance/applog/y2$a;->c:Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/bytedance/applog/y2$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/y2;->a(Lcom/bytedance/applog/y2$a;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/y2;->a(Lcom/bytedance/applog/y2$a;)V

    return-object v2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/y2;->a(Lcom/bytedance/applog/y2$a;)V

    throw v1
.end method

.method public final a(Lcom/bytedance/applog/y2$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/y2<",
            "TSERVICE;TRESU",
            "LT;",
            ">.a;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/y2;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
