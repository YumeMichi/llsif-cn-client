.class public Lcom/gbase/gameplus/upgradeutil/task/PriorityRunnable;
.super Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gbase/gameplus/upgradeutil/task/PriorityObject<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/task/Priority;Ljava/lang/Runnable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;-><init>(Lcom/gbase/gameplus/upgradeutil/task/Priority;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityRunnable;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
