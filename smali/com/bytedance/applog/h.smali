.class public Lcom/bytedance/applog/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/h$b;,
        Lcom/bytedance/applog/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/applog/u0;",
        ">;"
    }
.end annotation


# static fields
.field public static A:Lcom/bytedance/applog/h;


# instance fields
.field public a:Lcom/bytedance/applog/e;

.field public b:Z

.field public c:Landroid/app/Application;

.field public d:Lcom/bytedance/applog/x;

.field public e:Lcom/bytedance/applog/g;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/u0;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Lcom/bytedance/applog/w0;

.field public h:Lcom/bytedance/applog/y;

.field public volatile i:Landroid/os/Handler;

.field public volatile j:Lcom/bytedance/applog/i;

.field public k:Lcom/bytedance/applog/k;

.field public l:Lcom/bytedance/applog/l;

.field public volatile m:Lcom/bytedance/applog/d;

.field public n:Lcom/bytedance/applog/m;

.field public o:Lcom/bytedance/applog/UriConfig;

.field public p:Landroid/os/Handler;

.field public q:J

.field public volatile r:Z

.field public s:Lcom/bytedance/applog/f;

.field public t:Lcom/bytedance/applog/j;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/f;",
            ">;"
        }
    .end annotation
.end field

.field public volatile v:Z

.field public volatile w:J

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/applog/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile y:Lcom/bytedance/applog/o;

.field public volatile z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/bytedance/applog/x;Lcom/bytedance/applog/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/h;->x:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    iput-object p2, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    iput-object p3, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    new-instance p1, Lcom/bytedance/applog/m;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/m;-><init>(Lcom/bytedance/applog/h;)V

    iput-object p1, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "bd_tracker_w"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    iget-object p1, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 1
    iget-object p1, p1, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 2
    iget-object p2, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    check-cast p1, Lcom/bytedance/applog/l1;

    .line 3
    iget-object p1, p1, Lcom/bytedance/applog/l1;->b:Lcom/bytedance/applog/v0;

    invoke-virtual {p1, p2}, Lcom/bytedance/applog/v0;->a(Landroid/os/Handler;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 5
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isClearDidAndIid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    iget-object p2, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 7
    iget-object p2, p2, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getClearKey()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object p3, p1, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    iget-object p1, p1, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    check-cast p3, Lcom/bytedance/applog/l1;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/applog/l1;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 10
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-virtual {p1}, Lcom/bytedance/applog/x;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 12
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/h;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 14
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/bytedance/applog/h;->r:Z

    iget-object p2, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    sput-object p0, Lcom/bytedance/applog/h;->A:Lcom/bytedance/applog/h;

    return-void
.end method

.method public static a(Lcom/bytedance/applog/u0;)V
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/applog/u0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const-string v1, "U SHALL NOT PASS!"

    .line 27
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_0
    sget-object v0, Lcom/bytedance/applog/h;->A:Lcom/bytedance/applog/h;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/applog/s;->a(Lcom/bytedance/applog/u0;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v4, v0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    rem-int/lit8 p0, v4, 0xa

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, v0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    if-nez v4, :cond_2

    const-wide/16 v2, 0x12c

    :cond_2
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static d()Z
    .locals 3

    sget-object v0, Lcom/bytedance/applog/h;->A:Lcom/bytedance/applog/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget v2, v0, Lcom/bytedance/applog/x;->l:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/applog/x;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a()Lcom/bytedance/applog/w0;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/h;->g:Lcom/bytedance/applog/w0;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/h;->g:Lcom/bytedance/applog/w0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/applog/w0;

    .line 1
    iget-object v1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v1, v1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/applog/w0;-><init>(Lcom/bytedance/applog/h;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/bytedance/applog/h;->g:Lcom/bytedance/applog/w0;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/applog/h;->g:Lcom/bytedance/applog/w0;

    return-object v0
.end method

.method public final a(Lcom/bytedance/applog/f;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/applog/f;->h()Lcom/bytedance/applog/f;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/applog/f;->a()J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 30
    sget-object v1, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    sget-object v2, Lcom/bytedance/applog/c;->d:Lcom/bytedance/applog/c1;

    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/applog/u0;->clone()Lcom/bytedance/applog/u0;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/c1;

    :cond_4
    iget-object v1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/16 p1, 0xc

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    .line 32
    iget-object p1, p1, Lcom/bytedance/applog/m;->l:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/applog/h;->x:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/applog/h;->x:Ljava/util/List;

    new-instance v2, Lcom/bytedance/applog/h$b;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/applog/h$b;-><init>(Lcom/bytedance/applog/h;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/bytedance/applog/u0;->a(Ljava/lang/String;)Lcom/bytedance/applog/u0;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/h;->y:Lcom/bytedance/applog/o;

    .line 4
    iget-object v2, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 5
    iget-object v2, v2, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 6
    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/applog/u0;

    instance-of v6, v5, Lcom/bytedance/applog/z0;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/bytedance/applog/z0;

    .line 7
    iget-object v6, v5, Lcom/bytedance/applog/z0;->m:Ljava/lang/String;

    .line 8
    invoke-virtual {v5}, Lcom/bytedance/applog/z0;->c()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, p1, Lcom/bytedance/applog/o;->a:Ljava/util/HashSet;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-gtz v7, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {p1, v6}, Lcom/bytedance/applog/o;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    const/4 v5, 0x0

    goto :goto_6

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-object v7, v3

    :goto_3
    if-eqz v7, :cond_9

    iget-object v5, p1, Lcom/bytedance/applog/o;->b:Ljava/util/HashMap;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p1, Lcom/bytedance/applog/o;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v5, p1, Lcom/bytedance/applog/o;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-gtz v6, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v5, v7}, Lcom/bytedance/applog/o;->a(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    nop

    goto :goto_4

    :cond_9
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_1

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-virtual {p1, v1}, Lcom/bytedance/applog/x;->a(Ljava/util/ArrayList;)Z

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    iget-object v2, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-virtual {v2}, Lcom/bytedance/applog/x;->f()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez p1, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x64

    if-le p1, v2, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/u0;

    invoke-static {v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V

    goto :goto_7

    .line 11
    :cond_c
    :goto_8
    invoke-static {}, Lcom/bytedance/applog/p1;->a()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/u0;

    .line 12
    instance-of v5, v2, Lcom/bytedance/applog/x0;

    if-eqz v5, :cond_e

    const-string v5, "event"

    goto :goto_a

    :cond_e
    instance-of v5, v2, Lcom/bytedance/applog/z0;

    if-eqz v5, :cond_f

    const-string v5, "event_v3"

    goto :goto_a

    :cond_f
    instance-of v5, v2, Lcom/bytedance/applog/y0;

    if-eqz v5, :cond_10

    const-string v5, "log_data"

    goto :goto_a

    :cond_10
    instance-of v5, v2, Lcom/bytedance/applog/a1;

    if-eqz v5, :cond_11

    const-string v5, "launch"

    goto :goto_a

    :cond_11
    instance-of v5, v2, Lcom/bytedance/applog/e1;

    if-eqz v5, :cond_12

    const-string v5, "terminate"

    goto :goto_a

    :cond_12
    move-object v5, v3

    :goto_a
    if-eqz v5, :cond_d

    .line 13
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v5, v6}, Lcom/bytedance/applog/p1;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_9

    .line 14
    :cond_13
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :cond_14
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/applog/u0;

    iget-object v7, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    invoke-virtual {v7, v6, p1}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v2, v7

    instance-of v7, v6, Lcom/bytedance/applog/c1;

    if-eqz v7, :cond_15

    invoke-static {v6}, Lcom/bytedance/applog/m;->b(Lcom/bytedance/applog/u0;)Z

    move-result v3

    move v5, v3

    const/4 v3, 0x1

    :cond_15
    instance-of v7, v6, Lcom/bytedance/applog/z0;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/bytedance/applog/h;->t:Lcom/bytedance/applog/j;

    if-eqz v7, :cond_14

    invoke-virtual {v6}, Lcom/bytedance/applog/u0;->g()Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/applog/h;->t:Lcom/bytedance/applog/j;

    .line 15
    iget-object v7, v7, Lcom/bytedance/applog/j;->f:Ljava/lang/String;

    .line 16
    invoke-static {v6, v7}, Lcom/bytedance/applog/r0;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_b

    .line 17
    :cond_16
    invoke-virtual {p0}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/applog/UriConfig;->getRealUris()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    array-length v1, v1

    if-lez v1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/bytedance/applog/h;->q:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xdbba0

    cmp-long v1, v6, v8

    if-lez v1, :cond_17

    iget-object v1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-virtual {v1, p1}, Lcom/bytedance/applog/x;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_17

    iget-object v4, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v4, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 18
    :cond_17
    invoke-virtual {p0}, Lcom/bytedance/applog/h;->a()Lcom/bytedance/applog/w0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/applog/w0;->a(Ljava/util/ArrayList;)V

    if-eqz v3, :cond_19

    const/4 p1, 0x7

    if-eqz v5, :cond_18

    iget-object v1, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_c

    :cond_18
    iget-object v1, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-virtual {v3}, Lcom/bytedance/applog/x;->d()J

    move-result-wide v3

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    :goto_c
    if-eqz v2, :cond_1a

    iget-object p1, p0, Lcom/bytedance/applog/h;->l:Lcom/bytedance/applog/l;

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    .line 19
    :cond_1a
    iget-boolean p1, p0, Lcom/bytedance/applog/h;->b:Z

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    .line 20
    iget-boolean p1, p1, Lcom/bytedance/applog/m;->h:Z

    if-eqz p1, :cond_1e

    .line 21
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 22
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/h;->a(Z)Z

    goto :goto_f

    :cond_1b
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    const-class v5, Lcom/bytedance/applog/collector/Collector;

    invoke-direct {p1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_d
    if-ge v0, v2, :cond_1c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/applog/u0;

    invoke-virtual {v7}, Lcom/bytedance/applog/u0;->f()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    aget-object v7, v5, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    const v0, 0x4b000

    if-lt v6, v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/applog/h;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    if-eqz v0, :cond_1d

    :try_start_3
    iget-object v0, p0, Lcom/bytedance/applog/h;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    invoke-interface {v0, v5}, Lcom/bytedance/applog/InitConfig$IpcDataChecker;->checkIpcData([Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    const-string v1, "check ipc data"

    .line 24
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    const-string v0, "U SHALL NOT PASS!"

    .line 25
    invoke-static {v0, v3}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    if-eqz v4, :cond_1e

    const-string v0, "K_DATA"

    .line 26
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1e
    :goto_f
    if-eqz p2, :cond_1f

    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-virtual {p1}, Lcom/bytedance/applog/x;->f()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/applog/h;->w:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    iput-wide p1, p0, Lcom/bytedance/applog/h;->w:J

    iget-object p1, p0, Lcom/bytedance/applog/h;->l:Lcom/bytedance/applog/l;

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    :cond_1f
    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_11

    :goto_10
    throw p1

    :goto_11
    goto :goto_10
.end method

.method public final a(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/u0;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/bytedance/applog/s0;->a(Lcom/bytedance/applog/h;Lorg/json/JSONObject;Z)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_1

    invoke-static {p1, v0}, Lcom/bytedance/applog/b1;->a(Ljava/util/ArrayList;Lorg/json/JSONObject;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-static {v2, p1, v0}, Lcom/bytedance/applog/r0;->a([Ljava/lang/String;[BLcom/bytedance/applog/x;)I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/applog/r0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/applog/h;->q:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/applog/h;->q:J

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendRealTime, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public a(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/h;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/applog/h;->b:Z

    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/applog/h;->b:Z

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/h;->j:Lcom/bytedance/applog/i;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/h;->j:Lcom/bytedance/applog/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/applog/i;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/i;-><init>(Lcom/bytedance/applog/h;)V

    :cond_0
    iput-object v0, p0, Lcom/bytedance/applog/h;->j:Lcom/bytedance/applog/i;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/applog/h;->j:Lcom/bytedance/applog/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/i;->a()I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/applog/p1;->a:Lcom/bytedance/applog/t1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/t1;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "can\'t find ET, should compile with ET"

    .line 2
    invoke-static {v0, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c()Lcom/bytedance/applog/UriConfig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/h;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/h;->o:Lcom/bytedance/applog/UriConfig;

    iget-object v0, p0, Lcom/bytedance/applog/h;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/util/UriConstants;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/h;->o:Lcom/bytedance/applog/UriConfig;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/h;->o:Lcom/bytedance/applog/UriConfig;

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/bytedance/applog/u0;

    check-cast p2, Lcom/bytedance/applog/u0;

    .line 1
    iget-wide v0, p1, Lcom/bytedance/applog/u0;->b:J

    iget-wide p1, p2, Lcom/bytedance/applog/u0;->b:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 1
    iget-object p1, p1, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v0, "bav_ab_config"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 3
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    if-nez p1, :cond_25

    new-instance p1, Lcom/bytedance/applog/d;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/d;-><init>(Lcom/bytedance/applog/h;)V

    iput-object p1, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    iget-object p1, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    goto/16 :goto_d

    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    .line 5
    iput-boolean v4, p1, Lcom/bytedance/applog/f;->e:Z

    .line 6
    iget-object p1, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v6, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 7
    invoke-virtual {p1, v6}, Lcom/bytedance/applog/y;->d(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/bytedance/applog/y;->e(Ljava/lang/String;)V

    .line 8
    iget-object v0, p1, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {v0, v6}, Lcom/bytedance/applog/x;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v6}, Lcom/bytedance/applog/y;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_d

    .line 9
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/String;

    aget-object p1, p1, v4

    check-cast p1, Lcom/bytedance/applog/c1;

    .line 10
    iget-object v3, p0, Lcom/bytedance/applog/h;->l:Lcom/bytedance/applog/l;

    invoke-virtual {p0, v3}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    if-nez p1, :cond_4

    .line 11
    sget-object p1, Lcom/bytedance/applog/c;->c:Lcom/bytedance/applog/c1;

    sget-object v3, Lcom/bytedance/applog/c;->d:Lcom/bytedance/applog/c1;

    if-eqz v3, :cond_2

    move-object p1, v3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v6

    :goto_0
    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/applog/u0;->clone()Lcom/bytedance/applog/u0;

    move-result-object p1

    check-cast p1, Lcom/bytedance/applog/c1;

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p1, :cond_6

    iget-wide v8, p1, Lcom/bytedance/applog/u0;->b:J

    sub-long v8, v6, v8

    invoke-virtual {p1, v6, v7}, Lcom/bytedance/applog/u0;->a(J)V

    cmp-long v10, v8, v1

    if-ltz v10, :cond_5

    move-wide v1, v8

    :cond_5
    iput-wide v1, p1, Lcom/bytedance/applog/c1;->k:J

    iget-object v1, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    .line 13
    iget-object v1, v1, Lcom/bytedance/applog/m;->l:Ljava/lang/String;

    .line 14
    iput-object v1, p1, Lcom/bytedance/applog/c1;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    invoke-virtual {v1, p1}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    const-string v2, "user_unique_id"

    .line 16
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 17
    iget-object v1, v1, Lcom/bytedance/applog/x;->c:Landroid/content/SharedPreferences;

    const-string v2, "user_unique_id"

    invoke-static {v1, v2, v0}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_8

    .line 18
    iput-boolean v4, p0, Lcom/bytedance/applog/h;->v:Z

    iget-object v0, p0, Lcom/bytedance/applog/h;->k:Lcom/bytedance/applog/k;

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    invoke-virtual {p0, v4}, Lcom/bytedance/applog/h;->a(Z)Z

    iget-object v0, p0, Lcom/bytedance/applog/h;->m:Lcom/bytedance/applog/d;

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/applog/u0;->clone()Lcom/bytedance/applog/u0;

    move-result-object p1

    check-cast p1, Lcom/bytedance/applog/c1;

    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    invoke-virtual {p1, v6, v7}, Lcom/bytedance/applog/u0;->a(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/bytedance/applog/c1;->k:J

    iget-object v0, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    invoke-virtual {v0, p1, v3, v4}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;Ljava/util/ArrayList;Z)Lcom/bytedance/applog/a1;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    .line 20
    iget-object v1, v1, Lcom/bytedance/applog/m;->l:Ljava/lang/String;

    .line 21
    iput-object v1, v0, Lcom/bytedance/applog/a1;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/m;->a(Lcom/bytedance/applog/u0;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/applog/h;->a()Lcom/bytedance/applog/w0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/bytedance/applog/w0;->a(Ljava/util/ArrayList;)V

    :cond_a
    iget-object p1, p0, Lcom/bytedance/applog/h;->l:Lcom/bytedance/applog/l;

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    goto/16 :goto_d

    .line 22
    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/applog/h;->a:Lcom/bytedance/applog/e;

    if-nez p1, :cond_b

    new-instance p1, Lcom/bytedance/applog/e;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/e;-><init>(Lcom/bytedance/applog/h;)V

    iput-object p1, p0, Lcom/bytedance/applog/h;->a:Lcom/bytedance/applog/e;

    iget-object p1, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/applog/h;->a:Lcom/bytedance/applog/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_b
    iput-boolean v5, p1, Lcom/bytedance/applog/f;->e:Z

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/bytedance/applog/h;->a:Lcom/bytedance/applog/e;

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    goto/16 :goto_d

    :pswitch_4
    iget-object p1, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/bytedance/applog/s;->a(Ljava/util/ArrayList;)I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    sget-object p1, Lcom/bytedance/applog/s;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_c

    new-array v6, p1, [Ljava/lang/String;

    sget-object p1, Lcom/bytedance/applog/s;->b:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object p1, Lcom/bytedance/applog/s;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 26
    :cond_c
    invoke-virtual {p0, v6, v5}, Lcom/bytedance/applog/h;->a([Ljava/lang/String;Z)V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_5
    iget-object p1, p0, Lcom/bytedance/applog/h;->s:Lcom/bytedance/applog/f;

    .line 27
    iget-boolean v0, p1, Lcom/bytedance/applog/f;->e:Z

    if-nez v0, :cond_25

    .line 28
    invoke-virtual {p1}, Lcom/bytedance/applog/f;->a()J

    move-result-wide v0

    .line 29
    iget-boolean p1, p1, Lcom/bytedance/applog/f;->e:Z

    if-nez p1, :cond_25

    .line 30
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/h;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/bytedance/applog/h;->a()Lcom/bytedance/applog/w0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/w0;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_d

    :pswitch_7
    iget-object p1, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    .line 31
    sget-object v3, Lcom/bytedance/applog/m;->o:Lcom/bytedance/applog/m$b;

    if-nez v3, :cond_d

    new-instance v3, Lcom/bytedance/applog/m$b;

    invoke-direct {v3, v6}, Lcom/bytedance/applog/m$b;-><init>(Lcom/bytedance/applog/m$a;)V

    sput-object v3, Lcom/bytedance/applog/m;->o:Lcom/bytedance/applog/m$b;

    :cond_d
    sget-object v3, Lcom/bytedance/applog/m;->o:Lcom/bytedance/applog/m$b;

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/applog/u0;->a(J)V

    sget-object v1, Lcom/bytedance/applog/m;->o:Lcom/bytedance/applog/m$b;

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v6, v5}, Lcom/bytedance/applog/h;->a([Ljava/lang/String;Z)V

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_8
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 33
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isSilenceInBackground()Z

    move-result p1

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/applog/h;->n:Lcom/bytedance/applog/m;

    invoke-virtual {p1}, Lcom/bytedance/applog/m;->a()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_e
    const-wide v5, 0x7fffffffffffffffL

    iget-object p1, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/applog/f;

    .line 35
    iget-boolean v7, v2, Lcom/bytedance/applog/f;->e:Z

    if-nez v7, :cond_f

    .line 36
    invoke-virtual {v2}, Lcom/bytedance/applog/f;->a()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-gez v2, :cond_f

    move-wide v5, v7

    goto :goto_2

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long p1, v5, v0

    if-lez p1, :cond_11

    goto :goto_3

    :cond_11
    move-wide v0, v5

    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/bytedance/applog/h;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_25

    iget-object p1, p0, Lcom/bytedance/applog/h;->x:Ljava/util/List;

    monitor-enter p1

    :try_start_4
    iget-object v0, p0, Lcom/bytedance/applog/h;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/h$a;

    if-eqz v1, :cond_13

    check-cast v1, Lcom/bytedance/applog/h$b;

    .line 37
    iget-object v2, v1, Lcom/bytedance/applog/h$b;->b:Lcom/bytedance/applog/h;

    iget-object v1, v1, Lcom/bytedance/applog/h$a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bytedance/applog/h;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :cond_14
    iget-object v0, p0, Lcom/bytedance/applog/h;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p1

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/bytedance/applog/h;->a([Ljava/lang/String;Z)V

    goto/16 :goto_d

    :pswitch_a
    new-instance p1, Lcom/bytedance/applog/k;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/k;-><init>(Lcom/bytedance/applog/h;)V

    iput-object p1, p0, Lcom/bytedance/applog/h;->k:Lcom/bytedance/applog/k;

    iget-object p1, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/applog/h;->k:Lcom/bytedance/applog/k;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/bytedance/applog/g;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/g;-><init>(Lcom/bytedance/applog/h;)V

    iput-object v0, p0, Lcom/bytedance/applog/h;->e:Lcom/bytedance/applog/g;

    iget-object v0, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/applog/h;->e:Lcom/bytedance/applog/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v0, Lcom/bytedance/applog/l;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/l;-><init>(Lcom/bytedance/applog/h;)V

    iput-object v0, p0, Lcom/bytedance/applog/h;->l:Lcom/bytedance/applog/l;

    iget-object v0, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/applog/h;->l:Lcom/bytedance/applog/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    new-instance v0, Lcom/bytedance/applog/n;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/n;-><init>(Lcom/bytedance/applog/h;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_16
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 41
    iget-object p1, p1, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 43
    iget-object p1, p1, Lcom/bytedance/applog/y;->f:Landroid/content/SharedPreferences;

    const-string v0, "version_code"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 44
    iget-object v0, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->e()I

    move-result v0

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    :try_start_5
    const-string v0, "sp_filter_name"

    .line 45
    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-object v2, v6

    :goto_5
    if-eqz v2, :cond_1f

    :try_start_7
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_17

    goto/16 :goto_9

    :cond_17
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :cond_18
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    if-nez v8, :cond_19

    goto :goto_6

    :cond_19
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "is_block"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const-string v7, "is_block"

    invoke-interface {p1, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_6

    :cond_1a
    const-string v10, "events"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v10, :cond_1b

    :try_start_8
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_7

    :catchall_4
    move-object v8, v6

    :goto_7
    if-eqz v8, :cond_18

    :try_start_9
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_18

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_1b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :catchall_5
    move-object v8, v6

    :goto_8
    if-eqz v8, :cond_1c

    :try_start_b
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_1c

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_18

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_1d
    if-lez v7, :cond_1e

    new-instance p1, Lcom/bytedance/applog/q;

    invoke-direct {p1, v0, v1}, Lcom/bytedance/applog/q;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    goto :goto_a

    :cond_1e
    new-instance p1, Lcom/bytedance/applog/p;

    invoke-direct {p1, v0, v1}, Lcom/bytedance/applog/p;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_a

    :catchall_6
    :cond_1f
    :goto_9
    move-object p1, v6

    .line 46
    :goto_a
    iput-object p1, p0, Lcom/bytedance/applog/h;->y:Lcom/bytedance/applog/o;

    goto :goto_b

    .line 47
    :cond_20
    iget-object p1, p0, Lcom/bytedance/applog/h;->e:Lcom/bytedance/applog/g;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/bytedance/applog/f;->h()Lcom/bytedance/applog/f;

    :cond_21
    iget-object p1, p0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    invoke-static {p1, v6}, Lcom/bytedance/applog/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/bytedance/applog/o;

    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/bytedance/applog/h;->y:Lcom/bytedance/applog/o;

    .line 49
    :cond_22
    :goto_b
    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    :pswitch_b
    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 50
    iget-object v0, p1, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_log_collect"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    iput v0, p1, Lcom/bytedance/applog/x;->l:I

    .line 52
    iget-object p1, p0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    invoke-virtual {p1}, Lcom/bytedance/applog/y;->g()Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    invoke-virtual {p1}, Lcom/bytedance/applog/x;->f()Z

    move-result p1

    if-eqz p1, :cond_25

    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "bd_tracker_n"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    iget-object p1, p0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/bytedance/applog/h;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_23

    iget-object p1, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_23
    const-string p1, "net|worker start"

    .line 53
    invoke-static {p1, v6}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 54
    :cond_24
    iget-object p1, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_d

    :goto_c
    const-string p1, "U SHALL NOT PASS!"

    .line 55
    invoke-static {p1, v6}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_25
    :goto_d
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
