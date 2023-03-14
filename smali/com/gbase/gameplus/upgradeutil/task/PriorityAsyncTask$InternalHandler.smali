.class Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 352
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 358
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;

    .line 359
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget-object p1, v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object p1, v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->access$500(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
