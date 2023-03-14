.class Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    .line 382
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
