.class public Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityObjectBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/gbase/gameplus/upgradeutil/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/gbase/gameplus/upgradeutil/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    .line 154
    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    if-lez p1, :cond_0

    .line 159
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    .line 160
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/task/Node;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/gbase/gameplus/upgradeutil/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->last:Lcom/gbase/gameplus/upgradeutil/task/Node;

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 164
    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;-><init>(I)V

    .line 165
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 169
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v1, v3, :cond_0

    .line 174
    new-instance v3, Lcom/gbase/gameplus/upgradeutil/task/Node;

    invoke-direct {v3, v2}, Lcom/gbase/gameplus/upgradeutil/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 129
    iget-object v1, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 130
    iput-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 131
    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 132
    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgradeutil/task/Node;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private _enqueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 108
    :goto_0
    iget-object v1, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 110
    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getPriority()Lcom/gbase/gameplus/upgradeutil/task/Priority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/task/Priority;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getPriority()Lcom/gbase/gameplus/upgradeutil/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gbase/gameplus/upgradeutil/task/Priority;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 111
    iput-object p1, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 112
    iput-object v1, p1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    const/4 v0, 0x1

    goto :goto_1

    .line 116
    :cond_0
    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->last:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object p1, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->last:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :cond_2
    return-void
.end method

.method private declared-synchronized opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->_dequeue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 96
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->_enqueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 97
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 589
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 591
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 592
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->last:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 597
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 570
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 573
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :goto_0
    iget-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 577
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :goto_0
    iget-object v1, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v1, :cond_0

    .line 436
    iput-object v0, v0, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    const/4 v0, 0x0

    .line 437
    invoke-virtual {v1, v0}, Lcom/gbase/gameplus/upgradeutil/task/Node;->setValue(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->last:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 441
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :cond_1
    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-eqz v1, :cond_2

    .line 390
    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 394
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 449
    invoke-virtual {p0, p1, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 461
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 465
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, p2, :cond_2

    .line 469
    :try_start_1
    iget-object v5, v3, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 470
    invoke-virtual {v5}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 471
    invoke-virtual {v5, v6}, Lcom/gbase/gameplus/upgradeutil/task/Node;->setValue(Ljava/lang/Object;)V

    .line 472
    iput-object v3, v3, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    if-lez v2, :cond_1

    .line 481
    :try_start_2
    iput-object v3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 482
    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    throw p1

    :cond_2
    if-lez v2, :cond_3

    .line 481
    iput-object v3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 482
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    .line 486
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_4

    .line 488
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_4
    return p2

    :catchall_1
    move-exception p1

    .line 486
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_5

    .line 488
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_5
    throw p1

    .line 456
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 454
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method fullyLock()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 493
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;

    invoke-direct {v0, p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue$Itr;-><init>(Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 244
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 245
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, -0x1

    .line 248
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/task/Node;

    invoke-direct {v2, p1}, Lcom/gbase/gameplus/upgradeutil/task/Node;-><init>(Ljava/lang/Object;)V

    .line 249
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 250
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 252
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_1

    .line 253
    invoke-direct {p0, v2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 255
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v0, v2, :cond_1

    .line 256
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_2
    if-ltz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :catchall_0
    move-exception v0

    .line 259
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 243
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 219
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    .line 221
    iget-object p4, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 222
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 223
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 225
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    const/4 p1, 0x0

    .line 235
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 228
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    .line 230
    :cond_1
    new-instance p2, Lcom/gbase/gameplus/upgradeutil/task/Node;

    invoke-direct {p2, p1}, Lcom/gbase/gameplus/upgradeutil/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 232
    iget p3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge p2, p3, :cond_2

    .line 233
    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :cond_2
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 235
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 218
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iget-object v2, v2, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 346
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 315
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    .line 319
    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 320
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 322
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1

    .line 323
    invoke-direct {p0, v2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;

    move-result-object v2

    .line 324
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v1, v0, :cond_2

    .line 332
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 329
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 291
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 292
    iget-object p3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 293
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 294
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 296
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 299
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_0

    .line 301
    :cond_1
    invoke-direct {p0, v2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;

    move-result-object p1

    .line 302
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    .line 304
    iget-object p3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 308
    iget p3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne p2, p3, :cond_3

    .line 309
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 196
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Node;

    invoke-direct {v0, p1}, Lcom/gbase/gameplus/upgradeutil/task/Node;-><init>(Ljava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 198
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 201
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 206
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 209
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 192
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public remainingCapacity()I
    .locals 2

    .line 188
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iget-object v2, v1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :goto_0
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    .line 374
    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {p0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->unlink(Lcom/gbase/gameplus/upgradeutil/task/Node;Lcom/gbase/gameplus/upgradeutil/task/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 381
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return p1

    .line 373
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 270
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 271
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 273
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 276
    invoke-direct {p0, v2}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->opQueue(Lcom/gbase/gameplus/upgradeutil/task/Node;)Ljava/lang/Object;

    move-result-object v2

    .line 277
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 283
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_2

    .line 284
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 281
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 399
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 402
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 404
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iget-object v2, v2, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 405
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 404
    iget-object v2, v2, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 417
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->head:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 423
    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0

    .line 422
    iget-object v1, v1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    move v0, v2

    goto :goto_0

    .line 424
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 425
    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method unlink(Lcom/gbase/gameplus/upgradeutil/task/Node;Lcom/gbase/gameplus/upgradeutil/task/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;",
            "Lcom/gbase/gameplus/upgradeutil/task/Node<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p1, v0}, Lcom/gbase/gameplus/upgradeutil/task/Node;->setValue(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p1, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    iput-object v0, p2, Lcom/gbase/gameplus/upgradeutil/task/Node;->next:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 361
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->last:Lcom/gbase/gameplus/upgradeutil/task/Node;

    if-ne v0, p1, :cond_0

    .line 362
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->last:Lcom/gbase/gameplus/upgradeutil/task/Node;

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne p1, p2, :cond_1

    .line 364
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method
