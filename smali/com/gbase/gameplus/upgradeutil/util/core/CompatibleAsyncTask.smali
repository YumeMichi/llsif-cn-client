.class public abstract Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;,
        Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;,
        Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;,
        Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;,
        Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 159
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$1;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$1;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 167
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 173
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 181
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$SerialExecutor;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$1;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 186
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;

    invoke-direct {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$1;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sHandler:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;

    .line 188
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->PENDING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mStatus:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$2;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mWorker:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;

    .line 270
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$3;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mWorker:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$3;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$300(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 570
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 599
    :goto_0
    sget-object p1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->FINISHED:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mStatus:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    return-void
.end method

.method public static init()V
    .locals 1

    .line 246
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sHandler:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sHandler:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 253
    sput-object p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 438
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mStatus:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->PENDING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 538
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$4;->$SwitchMap$com$gbase$gameplus$upgradeutil$util$core$CompatibleAsyncTask$Status:[I

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mStatus:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 551
    :cond_2
    :goto_0
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->RUNNING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mStatus:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    .line 553
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->onPreExecute()V

    .line 555
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mWorker:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 556
    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mStatus:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->sHandler:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 589
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
