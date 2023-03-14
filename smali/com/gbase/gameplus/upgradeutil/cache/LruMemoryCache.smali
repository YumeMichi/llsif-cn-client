.class public Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;
.super Ljava/lang/Object;
.source "LruMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private keyExpiryMap:Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 36
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->maxSize:I

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    invoke-direct {p1, v2, v1, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    .line 38
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;

    invoke-direct {p1, v2, v1}, Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;-><init>(IF)V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->keyExpiryMap:Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p2, 0x0

    .line 242
    iput p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    .line 243
    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    goto :goto_0

    :cond_0
    return p1
.end method

.method private trimToSize(I)V
    .locals 4

    .line 154
    :goto_0
    monitor-enter p0

    .line 155
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 162
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->keyExpiryMap:Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;

    invoke-virtual {v2, v1}, Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    .line 164
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    invoke-direct {p0, v1, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    .line 165
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->evictionCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->evictionCount:I

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    monitor-enter p0

    .line 306
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    return-void
.end method

.method public final evictAll()V
    .locals 1

    const/4 v0, -0x1

    .line 265
    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->trimToSize(I)V

    .line 266
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->keyExpiryMap:Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;->clear()V

    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    monitor-enter p0

    .line 320
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 58
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->keyExpiryMap:Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;

    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit p0

    return-object v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->hitCount:I

    .line 67
    monitor-exit p0

    return-object v0

    .line 69
    :cond_1
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->missCount:I

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 84
    :cond_2
    monitor-enter p0

    .line 85
    :try_start_1
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->createCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->createCount:I

    .line 86
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_3
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    .line 94
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 100
    :cond_4
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->maxSize:I

    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->trimToSize(I)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 94
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 70
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    .line 291
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    monitor-enter p0

    .line 299
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 113
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->putCount:I

    .line 130
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    .line 131
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->keyExpiryMap:Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;->put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 134
    iget p3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p4

    sub-int/2addr p3, p4

    iput p3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    .line 136
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    .line 139
    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_1
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->maxSize:I

    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->trimToSize(I)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 136
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 124
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    monitor-enter p0

    .line 313
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->keyExpiryMap:Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;

    invoke-virtual {v1, p1}, Lcom/gbase/gameplus/upgradeutil/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 187
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I

    .line 189
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 189
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 179
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->maxSize:I

    .line 43
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->trimToSize(I)V

    return-void
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 275
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 328
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 332
    :try_start_0
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->hitCount:I

    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->missCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 333
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v0, v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "LruMemoryCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    .line 334
    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->maxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;->missCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
