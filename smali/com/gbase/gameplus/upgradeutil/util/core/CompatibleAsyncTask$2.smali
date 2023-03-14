.class Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$2;
.super Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$2;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$WorkerRunnable;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$1;)V

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

    .line 262
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$2;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->access$300(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 264
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 266
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$2;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->access$400(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
