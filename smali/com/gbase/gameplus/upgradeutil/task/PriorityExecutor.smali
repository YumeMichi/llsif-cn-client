.class public Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x100

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor$1;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor$1;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    .line 25
    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 29
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/16 v3, 0x100

    const-wide/16 v4, 0x1

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPoolSize()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPoolSize(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_0
    return-void
.end method
