.class Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
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

.field final mTask:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;->mTask:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;

    .line 630
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
