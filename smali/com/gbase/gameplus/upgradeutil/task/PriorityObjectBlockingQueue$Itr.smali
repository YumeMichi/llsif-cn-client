.class Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityObjectBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Lcom/gbase/gameplus/upgradeutil/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Lcom/gbase/gameplus/upgradeutil/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;)V
    .locals 1

    .line 502
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 505
    :try_start_0
    iget-object v0, p1, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 506
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method private nextNode(Lcom/gbase/gameplus/upgradeutil/task/Node;)Lcom/gbase/gameplus/upgradeutil/task/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;)",
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;"
        }
    .end annotation

    .line 519
    :goto_0
    iget-object v0, p1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-ne v0, p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    iget-object p1, p1, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iget-object p1, p1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 534
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 535
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    invoke-direct {p0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->nextNode(Lcom/gbase/gameplus/upgradeutil/task/Node;)Lcom/gbase/gameplus/upgradeutil/task/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 536
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/gbase/gameplus/upgradeutil/task/Node;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object v0

    .line 532
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 539
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/gbase/gameplus/upgradeutil/task/Node;

    const/4 v1, 0x0

    .line 549
    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 550
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iget-object v2, v1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->unlink(Lcom/gbase/gameplus/upgradeutil/task/Node;Lcom/gbase/gameplus/upgradeutil/task/Node;)V

    goto :goto_1

    .line 552
    :cond_0
    iget-object v2, v1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 559
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0

    .line 545
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
