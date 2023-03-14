.class Lcom/reyun/tracking/sdk/t;
.super Ljava/lang/Thread;


# instance fields
.field private volatile a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reyun/tracking/sdk/t;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reyun/tracking/sdk/t;->a:Z

    return-void
.end method

.method public run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.GET_TASKS"

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/reyun/tracking/a/i;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "TrackingIO"

    const-string v1, "======== lost permission android.permission.GET_TASKS ========="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/reyun/tracking/sdk/t;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Lcom/reyun/tracking/sdk/t;->sleep(J)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$800()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$900()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$900()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/reyun/tracking/sdk/t;->a:Z

    :catch_1
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
