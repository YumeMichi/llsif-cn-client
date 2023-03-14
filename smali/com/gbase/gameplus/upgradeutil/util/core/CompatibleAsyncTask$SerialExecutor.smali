.class Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;->mTasks:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$1;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;->mTasks:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor$1;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 211
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;->mTasks:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
