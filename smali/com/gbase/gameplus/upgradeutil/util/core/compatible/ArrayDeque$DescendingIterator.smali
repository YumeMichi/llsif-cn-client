.class Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$300(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)I

    move-result p1

    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    .line 633
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$200(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)I

    move-result p1

    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->fence:I

    const/4 p1, -0x1

    .line 634
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$1;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 637
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 641
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 643
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$400(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    .line 644
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$400(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v0, v1

    .line 645
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$200(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 647
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->lastRet:I

    return-object v0

    .line 646
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 642
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 652
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->lastRet:I

    if-ltz v0, :cond_1

    .line 654
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {v1, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$500(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$400(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->cursor:I

    .line 656
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->access$200(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->fence:I

    :cond_0
    const/4 v0, -0x1

    .line 658
    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;->lastRet:I

    return-void

    .line 653
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
