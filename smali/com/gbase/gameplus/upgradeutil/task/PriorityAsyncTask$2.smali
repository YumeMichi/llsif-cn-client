.class Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$2;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$2;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$2;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$2;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->access$400(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$2;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;->access$400(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
