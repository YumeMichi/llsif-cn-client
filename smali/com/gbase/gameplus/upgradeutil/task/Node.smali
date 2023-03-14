.class Lcom/gbase/gameplus/upgradeutil/task/Node;
.super Ljava/lang/Object;
.source "PriorityObjectBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/gbase/gameplus/upgradeutil/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/task/PriorityObject<",
            "*>;"
        }
    .end annotation
.end field

.field private valueAsT:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->valueAsT:Z

    .line 614
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/gbase/gameplus/upgradeutil/task/Priority;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->value:Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;->priority:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->value:Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 625
    :cond_0
    iget-boolean v1, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->valueAsT:Z

    if-eqz v1, :cond_1

    return-object v0

    .line 628
    :cond_1
    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 634
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->value:Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    goto :goto_0

    .line 635
    :cond_0
    instance-of v0, p1, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    if-eqz v0, :cond_1

    .line 636
    check-cast p1, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->value:Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    const/4 p1, 0x1

    .line 637
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->valueAsT:Z

    goto :goto_0

    .line 639
    :cond_1
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    invoke-direct {v0, v1, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;-><init>(Lcom/gbase/gameplus/upgradeutil/task/Priority;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/Node;->value:Lcom/gbase/gameplus/upgradeutil/task/PriorityObject;

    :goto_0
    return-void
.end method
