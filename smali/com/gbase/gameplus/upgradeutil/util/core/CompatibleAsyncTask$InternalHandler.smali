.class Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 602
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$1;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 606
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;

    .line 607
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object p1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;->mTask:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;

    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object p1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;->mTask:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;

    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;->access$600(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
