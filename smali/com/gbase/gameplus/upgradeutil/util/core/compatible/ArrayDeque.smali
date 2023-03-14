.class public Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/util/core/compatible/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;,
        Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Lcom/gbase/gameplus/upgradeutil/util/core/compatible/Deque<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 168
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->allocateElements(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 182
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->allocateElements(I)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$200(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    return p0
.end method

.method static synthetic access$300(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    return p0
.end method

.method static synthetic access$400(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;)[Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;I)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->delete(I)Z

    move-result p0

    return p0
.end method

.method private allocateElements(I)V
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    if-gez v0, :cond_0

    ushr-int/lit8 v0, v0, 0x1

    .line 112
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 143
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v1

    sub-int/2addr v3, v0

    .line 147
    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 820
    array-length v0, p0

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 828
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 829
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 830
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 825
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 822
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "start > end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private delete(I)Z
    .locals 8

    .line 507
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 508
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 509
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 510
    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    sub-int v5, p1, v3

    and-int/2addr v5, v1

    sub-int v6, v4, p1

    and-int/2addr v6, v1

    sub-int v7, v4, v3

    and-int/2addr v7, v1

    if-ge v5, v7, :cond_3

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    if-gt v3, p1, :cond_0

    add-int/lit8 p1, v3, 0x1

    .line 521
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 523
    :cond_0
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    aget-object p1, v0, v1

    aput-object p1, v0, v7

    add-int/lit8 p1, v3, 0x1

    sub-int v4, v1, v3

    .line 525
    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x0

    .line 527
    aput-object p1, v0, v3

    add-int/2addr v3, v2

    and-int p1, v3, v1

    .line 528
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    return v7

    :cond_1
    if-ge p1, v4, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 532
    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    .line 533
    iput v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    sub-int v5, v1, p1

    .line 535
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    aget-object p1, v0, v7

    aput-object p1, v0, v1

    .line 537
    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    and-int p1, v4, v1

    .line 538
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    :goto_1
    return v2

    .line 516
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method private doubleCapacity()V
    .locals 6

    .line 121
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 122
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    shl-int/lit8 v4, v2, 0x1

    if-ltz v4, :cond_0

    .line 127
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 128
    invoke-static {v1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v1, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iput-object v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 131
    iput v5, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 132
    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 864
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 867
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 868
    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->allocateElements(I)V

    const/4 v1, 0x0

    .line 869
    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 870
    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 874
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 851
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 854
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 855
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    :goto_0
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    if-eq v1, v2, :cond_0

    .line 856
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 390
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 200
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    if-ne p1, v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->doubleCapacity()V

    :cond_0
    return-void

    .line 198
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "e == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 216
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    if-ne p1, v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->doubleCapacity()V

    :cond_0
    return-void

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "e == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 5

    .line 706
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 707
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x0

    .line 709
    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 711
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 713
    :cond_0
    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public clone()Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque<",
            "TE;>;"
        }
    .end annotation

    .line 794
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    .line 795
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 799
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->clone()Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 674
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 676
    :goto_0
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 677
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 577
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DescendingIterator;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 561
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 573
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$DeqIterator;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 404
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 267
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 268
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 272
    :cond_0
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 273
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 278
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 279
    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 282
    :cond_0
    aput-object v3, v1, v0

    .line 283
    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    return-object v2
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 477
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 698
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 338
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    .line 340
    :goto_0
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 341
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    invoke-direct {p0, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->delete(I)Z

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 366
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    sub-int/2addr v3, v2

    :goto_0
    and-int/2addr v3, v1

    .line 368
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 369
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    invoke-direct {p0, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->delete(I)Z

    return v2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public size()I
    .locals 2

    .line 552
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->tail:I

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->size()I

    move-result v0

    .line 775
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 776
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 778
    :cond_0
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/compatible/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 779
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 780
    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method
