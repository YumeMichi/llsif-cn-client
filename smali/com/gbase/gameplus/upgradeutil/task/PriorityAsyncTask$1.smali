.class Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;
.super Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$WorkerRunnable;-><init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->access$200(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 45
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 47
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$1;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->access$300(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
