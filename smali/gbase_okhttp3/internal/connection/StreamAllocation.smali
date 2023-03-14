.class public final Lgbase_okhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lgbase_okhttp3/Address;

.field private final call:Lgbase_okhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lgbase_okhttp3/internal/http/HttpCodec;

.field private connection:Lgbase_okhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lgbase_okhttp3/ConnectionPool;

.field private final eventListener:Lgbase_okhttp3/EventListener;

.field private refusedStreamCount:I

.field private released:Z

.field private route:Lgbase_okhttp3/Route;

.field private routeSelection:Lgbase_okhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lgbase_okhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;Ljava/lang/Object;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    .line 97
    iput-object p2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->address:Lgbase_okhttp3/Address;

    .line 98
    iput-object p3, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->call:Lgbase_okhttp3/Call;

    .line 99
    iput-object p4, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->eventListener:Lgbase_okhttp3/EventListener;

    .line 100
    new-instance p1, Lgbase_okhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lgbase_okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Lgbase_okhttp3/internal/connection/RouteSelector;-><init>(Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/RouteDatabase;Lgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V

    iput-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelector:Lgbase_okhttp3/internal/connection/RouteSelector;

    .line 101
    iput-object p5, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 302
    iput-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 305
    iput-boolean p3, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->released:Z

    .line 308
    :cond_1
    iget-object p2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_2

    .line 310
    iput-boolean p3, p2, Lgbase_okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 312
    :cond_2
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    iget-boolean p1, p1, Lgbase_okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz p1, :cond_5

    .line 313
    :cond_3
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->release(Lgbase_okhttp3/internal/connection/RealConnection;)V

    .line 314
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    iget-object p1, p1, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 315
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lgbase_okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 316
    sget-object p1, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    iget-object p2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    iget-object p3, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1, p2, p3}, Lgbase_okhttp3/internal/Internal;->connectionBecameIdle(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 317
    iget-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 320
    :goto_0
    iput-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private findConnection(IIIZ)Lgbase_okhttp3/internal/connection/RealConnection;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 167
    iget-object v2, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-boolean v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v0, :cond_b

    .line 169
    iget-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_a

    .line 170
    iget-boolean v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v0, :cond_9

    .line 173
    iget-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_0

    .line 174
    iget-boolean v3, v0, Lgbase_okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v3, :cond_0

    .line 175
    monitor-exit v2

    return-object v0

    .line 179
    :cond_0
    sget-object v0, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    iget-object v3, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    iget-object v4, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->address:Lgbase_okhttp3/Address;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, p0, v5}, Lgbase_okhttp3/internal/Internal;->get(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/Route;)Lgbase_okhttp3/internal/connection/RealConnection;

    .line 180
    iget-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    monitor-exit v2

    return-object v0

    .line 184
    :cond_1
    iget-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    .line 185
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 189
    iget-object v3, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelection:Lgbase_okhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lgbase_okhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    :cond_2
    iget-object v3, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelector:Lgbase_okhttp3/internal/connection/RouteSelector;

    invoke-virtual {v3}, Lgbase_okhttp3/internal/connection/RouteSelector;->next()Lgbase_okhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v3

    iput-object v3, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelection:Lgbase_okhttp3/internal/connection/RouteSelector$Selection;

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 195
    :goto_0
    iget-object v4, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v4

    .line 196
    :try_start_1
    iget-boolean v6, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v6, :cond_8

    if-eqz v3, :cond_5

    .line 201
    iget-object v3, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelection:Lgbase_okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v3}, Lgbase_okhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v3

    .line 202
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    .line 203
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgbase_okhttp3/Route;

    .line 204
    sget-object v9, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    iget-object v10, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    iget-object v11, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->address:Lgbase_okhttp3/Address;

    invoke-virtual {v9, v10, v11, p0, v8}, Lgbase_okhttp3/internal/Internal;->get(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/Route;)Lgbase_okhttp3/internal/connection/RealConnection;

    .line 205
    iget-object v9, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    if-eqz v9, :cond_4

    .line 206
    iput-object v8, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    .line 207
    iget-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    monitor-exit v4

    return-object v0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 213
    iget-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelection:Lgbase_okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/RouteSelector$Selection;->next()Lgbase_okhttp3/Route;

    move-result-object v0

    .line 218
    :cond_6
    iput-object v0, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    .line 219
    iput v2, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 220
    new-instance v2, Lgbase_okhttp3/internal/connection/RealConnection;

    iget-object v3, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    invoke-direct {v2, v3, v0}, Lgbase_okhttp3/internal/connection/RealConnection;-><init>(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Route;)V

    .line 221
    invoke-virtual {p0, v2}, Lgbase_okhttp3/internal/connection/StreamAllocation;->acquire(Lgbase_okhttp3/internal/connection/RealConnection;)V

    .line 222
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    iget-object v11, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->call:Lgbase_okhttp3/Call;

    iget-object v12, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->eventListener:Lgbase_okhttp3/EventListener;

    move-object v6, v2

    move v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Lgbase_okhttp3/internal/connection/RealConnection;->connect(IIIZLgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;)V

    .line 227
    invoke-direct {p0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lgbase_okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    invoke-virtual {v2}, Lgbase_okhttp3/internal/connection/RealConnection;->route()Lgbase_okhttp3/Route;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgbase_okhttp3/internal/connection/RouteDatabase;->connected(Lgbase_okhttp3/Route;)V

    .line 230
    iget-object v3, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v3

    .line 232
    :try_start_2
    sget-object v0, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    iget-object v4, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    invoke-virtual {v0, v4, v2}, Lgbase_okhttp3/internal/Internal;->put(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/internal/connection/RealConnection;)V

    .line 236
    invoke-virtual {v2}, Lgbase_okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    sget-object v0, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    iget-object v2, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    iget-object v4, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->address:Lgbase_okhttp3/Address;

    invoke-virtual {v0, v2, v4, p0}, Lgbase_okhttp3/internal/Internal;->deduplicate(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v5

    .line 238
    iget-object v2, v1, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    .line 240
    :cond_7
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    invoke-static {v5}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 240
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 196
    :cond_8
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 222
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 170
    :cond_9
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 185
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private findHealthyConnection(IIIZZ)Lgbase_okhttp3/internal/connection/RealConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lgbase_okhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v1

    .line 144
    :try_start_0
    iget v2, v0, Lgbase_okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_0

    .line 145
    monitor-exit v1

    return-object v0

    .line 147
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0, p5}, Lgbase_okhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 147
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private release(Lgbase_okhttp3/internal/connection/RealConnection;)V
    .locals 3

    .line 389
    iget-object v0, p1, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 390
    iget-object v2, p1, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 391
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 392
    iget-object p1, p1, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private routeDatabase()Lgbase_okhttp3/internal/connection/RouteDatabase;
    .locals 2

    .line 267
    sget-object v0, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lgbase_okhttp3/internal/Internal;->routeDatabase(Lgbase_okhttp3/ConnectionPool;)Lgbase_okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lgbase_okhttp3/internal/connection/RealConnection;)V
    .locals 2

    .line 381
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_0

    .line 383
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    .line 384
    iget-object p1, p1, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v0, Lgbase_okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lgbase_okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lgbase_okhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 381
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public cancel()V
    .locals 3

    .line 329
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 330
    :try_start_0
    iput-boolean v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 331
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    .line 332
    iget-object v2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1}, Lgbase_okhttp3/internal/http/HttpCodec;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {v2}, Lgbase_okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 333
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public codec()Lgbase_okhttp3/internal/http/HttpCodec;
    .locals 2

    .line 261
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 263
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized connection()Lgbase_okhttp3/internal/connection/RealConnection;
    .locals 1

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    if-nez v0, :cond_2

    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelection:Lgbase_okhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelector:Lgbase_okhttp3/internal/connection/RouteSelector;

    .line 425
    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public newStream(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Interceptor$Chain;Z)Lgbase_okhttp3/internal/http/HttpCodec;
    .locals 7

    .line 106
    invoke-interface {p2}, Lgbase_okhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    .line 107
    invoke-interface {p2}, Lgbase_okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    .line 108
    invoke-interface {p2}, Lgbase_okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    .line 109
    invoke-virtual {p1}, Lgbase_okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    .line 112
    :try_start_0
    iget-object v6, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    move-object v0, p0

    move v5, p3

    .line 114
    invoke-direct/range {v0 .. v5}, Lgbase_okhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object p3

    .line 116
    invoke-virtual {p3, p1, p2, p0}, Lgbase_okhttp3/internal/connection/RealConnection;->newCodec(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Interceptor$Chain;Lgbase_okhttp3/internal/connection/StreamAllocation;)Lgbase_okhttp3/internal/http/HttpCodec;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    if-eq v6, p2, :cond_0

    .line 119
    iget-object p2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->eventListener:Lgbase_okhttp3/EventListener;

    iget-object p3, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->call:Lgbase_okhttp3/Call;

    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    invoke-virtual {p2, p3, v0}, Lgbase_okhttp3/EventListener;->connectionAcquired(Lgbase_okhttp3/Call;Lgbase_okhttp3/Connection;)V

    .line 122
    :cond_0
    iget-object p2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    .line 124
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Lgbase_okhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lgbase_okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public noNewStreams()V
    .locals 3

    .line 285
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lgbase_okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 287
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 276
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    :try_start_0
    invoke-direct {p0, v2, v1, v2}, Lgbase_okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 278
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseAndAcquire(Lgbase_okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 3

    .line 409
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 413
    invoke-direct {p0, v1, v2, v2}, Lgbase_okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 416
    iput-object p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    .line 417
    iget-object p1, p1, Lgbase_okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 409
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 6

    .line 345
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v0

    .line 346
    :try_start_0
    instance-of v1, p1, Lgbase_okhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 347
    check-cast p1, Lgbase_okhttp3/internal/http2/StreamResetException;

    .line 348
    iget-object v1, p1, Lgbase_okhttp3/internal/http2/StreamResetException;->errorCode:Lgbase_okhttp3/internal/http2/ErrorCode;

    sget-object v5, Lgbase_okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lgbase_okhttp3/internal/http2/ErrorCode;

    if-ne v1, v5, :cond_0

    .line 349
    iget v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 353
    :cond_0
    iget-object p1, p1, Lgbase_okhttp3/internal/http2/StreamResetException;->errorCode:Lgbase_okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lgbase_okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lgbase_okhttp3/internal/http2/ErrorCode;

    if-ne p1, v1, :cond_1

    iget p1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le p1, v4, :cond_6

    .line 355
    :cond_1
    iput-object v2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    goto :goto_0

    .line 357
    :cond_2
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    .line 358
    invoke-virtual {v1}, Lgbase_okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_6

    .line 362
    :cond_3
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    iget v1, v1, Lgbase_okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v1, :cond_5

    .line 363
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 364
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->routeSelector:Lgbase_okhttp3/internal/connection/RouteSelector;

    iget-object v5, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    invoke-virtual {v1, v5, p1}, Lgbase_okhttp3/internal/connection/RouteSelector;->connectFailed(Lgbase_okhttp3/Route;Ljava/io/IOException;)V

    .line 366
    :cond_4
    iput-object v2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->route:Lgbase_okhttp3/Route;

    :cond_5
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 369
    :goto_1
    invoke-direct {p0, p1, v3, v4}, Lgbase_okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {p1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    .line 370
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public streamFinished(ZLgbase_okhttp3/internal/http/HttpCodec;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connectionPool:Lgbase_okhttp3/ConnectionPool;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 249
    :try_start_0
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 253
    iget-object v1, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection:Lgbase_okhttp3/internal/connection/RealConnection;

    iget v2, v1, Lgbase_okhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr v2, p2

    iput v2, v1, Lgbase_okhttp3/internal/connection/RealConnection;->successCount:I

    :cond_0
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0, p1, v1, p2}, Lgbase_okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {p1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    .line 250
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec:Lgbase_okhttp3/internal/http/HttpCodec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 256
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/connection/StreamAllocation;->address:Lgbase_okhttp3/Address;

    invoke-virtual {v0}, Lgbase_okhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
