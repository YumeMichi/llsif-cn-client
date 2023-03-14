.class public Lcom/reyun/tracking/sdk/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/reyun/tracking/sdk/b;

    invoke-direct {v0, p0}, Lcom/reyun/tracking/sdk/b;-><init>(Lcom/reyun/tracking/sdk/a;)V

    iput-object v0, p0, Lcom/reyun/tracking/sdk/a;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/reyun/tracking/sdk/a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/reyun/tracking/sdk/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/a;->c:Landroid/os/Handler;

    return-object p1
.end method

.method public static a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;
    .locals 2

    const-class v0, Lcom/reyun/tracking/sdk/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/reyun/tracking/sdk/a;

    invoke-direct {v1}, Lcom/reyun/tracking/sdk/a;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/reyun/tracking/sdk/a;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/reyun/tracking/sdk/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reyun/tracking/a/j;

    sget-object v2, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/reyun/tracking/sdk/a;

    if-ne v2, p0, :cond_0

    sget-object v0, Lcom/reyun/tracking/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/reyun/tracking/sdk/a;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/sdk/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/sdk/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reyun/tracking/sdk/c;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/reyun/tracking/sdk/c;-><init>(Lcom/reyun/tracking/sdk/a;JLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/c;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
