.class public abstract Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/task/TaskHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;,
        Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;,
        Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;
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
        "Ljava/lang/Object;",
        "Lcom/gbase/gameplus/upgradeutil/task/TaskHandler;"
    }
.end annotation


# static fields
.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mExecuteInvoked:Z

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;-><init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->sHandler:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;

    .line 18
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;-><init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mWorker:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;

    .line 51
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$2;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mWorker:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$2;-><init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$200(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 306
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    invoke-static {p0, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->execute(Ljava/lang/Runnable;Lcom/gbase/gameplus/upgradeutil/task/Priority;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Lcom/gbase/gameplus/upgradeutil/task/Priority;)V
    .locals 2

    .line 318
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/task/PriorityRunnable;

    invoke-direct {v1, p1, p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityRunnable;-><init>(Lcom/gbase/gameplus/upgradeutil/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->sHandler:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
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

    .line 69
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->cancel(Z)Z

    return-void
.end method

.method public final cancel(Z)Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 282
    iget-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mExecuteInvoked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 289
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->onPreExecute()V

    .line 291
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mWorker:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 292
    new-instance p2, Lcom/gbase/gameplus/upgradeutil/task/PriorityRunnable;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-direct {p2, v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityRunnable;-><init>(Lcom/gbase/gameplus/upgradeutil/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 241
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

    .line 259
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPriority()Lcom/gbase/gameplus/upgradeutil/task/Priority;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    const/4 v0, 0x0

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

    .line 150
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->onCancelled()V

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

.method public pause()V
    .locals 0

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->sHandler:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setPriority(Lcom/gbase/gameplus/upgradeutil/task/Priority;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-void
.end method

.method public supportCancel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportResume()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
