.class public final Lgbase_okhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/http2/Http2Connection$Listener;,
        Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lgbase_okhttp3/internal/http2/Http2Connection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field final listener:Lgbase_okhttp3/internal/http2/Http2Connection$Listener;

.field private nextPingId:I

.field nextStreamId:I

.field okHttpSettings:Lgbase_okhttp3/internal/http2/Settings;

.field final peerSettings:Lgbase_okhttp3/internal/http2/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lgbase_okhttp3/internal/http2/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lgbase_okhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lgbase_okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lgbase_okhttp3/internal/http2/Http2Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 70
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp Http2Connection"

    .line 72
    invoke-static {v7, v0}, Lgbase_okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lgbase_okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 12

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 111
    new-instance v0, Lgbase_okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lgbase_okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lgbase_okhttp3/internal/http2/Settings;

    .line 117
    new-instance v0, Lgbase_okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lgbase_okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 778
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 127
    iget-object v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lgbase_okhttp3/internal/http2/PushObserver;

    iput-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pushObserver:Lgbase_okhttp3/internal/http2/PushObserver;

    .line 128
    iget-boolean v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->client:Z

    .line 129
    iget-object v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->listener:Lgbase_okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->listener:Lgbase_okhttp3/internal/http2/Http2Connection$Listener;

    .line 131
    iget-boolean v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 132
    iget-boolean v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v1, :cond_1

    .line 133
    iget v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/2addr v1, v2

    iput v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 136
    :cond_1
    iget-boolean v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 142
    iget-boolean v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lgbase_okhttp3/internal/http2/Settings;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v4}, Lgbase_okhttp3/internal/http2/Settings;->set(II)Lgbase_okhttp3/internal/http2/Settings;

    .line 146
    :cond_3
    iget-object v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    .line 149
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v11, v4, v0

    const-string v0, "OkHttp %s Push Observer"

    .line 151
    invoke-static {v0, v4}, Lgbase_okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lgbase_okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 152
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v2, v1}, Lgbase_okhttp3/internal/http2/Settings;->set(II)Lgbase_okhttp3/internal/http2/Settings;

    .line 153
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lgbase_okhttp3/internal/http2/Settings;->set(II)Lgbase_okhttp3/internal/http2/Settings;

    .line 154
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 155
    iget-object v0, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 156
    new-instance v0, Lgbase_okhttp3/internal/http2/Http2Writer;

    iget-object v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->sink:Lgbase_okio/BufferedSink;

    iget-boolean v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v0, v1, v2}, Lgbase_okhttp3/internal/http2/Http2Writer;-><init>(Lgbase_okio/BufferedSink;Z)V

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    .line 158
    new-instance v0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Lgbase_okhttp3/internal/http2/Http2Reader;

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Http2Connection$Builder;->source:Lgbase_okio/BufferedSource;

    iget-boolean v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v1, p1, v2}, Lgbase_okhttp3/internal/http2/Http2Reader;-><init>(Lgbase_okio/BufferedSource;Z)V

    invoke-direct {v0, p0, v1}, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Lgbase_okhttp3/internal/http2/Http2Reader;)V

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->readerRunnable:Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-void
.end method

.method private newStream(ILjava/util/List;Z)Lgbase_okhttp3/internal/http2/Http2Stream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lgbase_okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 217
    iget-object v7, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    monitor-enter v7

    .line 218
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    iget-boolean v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_6

    .line 222
    iget v8, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 223
    iget v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 224
    new-instance v9, Lgbase_okhttp3/internal/http2/Http2Stream;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgbase_okhttp3/internal/http2/Http2Stream;-><init>(ILgbase_okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    if-eqz p3, :cond_1

    .line 225
    iget-wide v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    iget-wide v0, v9, Lgbase_okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 226
    :goto_1
    invoke-virtual {v9}, Lgbase_okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    .line 231
    :try_start_2
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, v6, v8, p1, p2}, Lgbase_okhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    goto :goto_2

    .line 232
    :cond_3
    iget-boolean v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_5

    .line 235
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, v8, p2}, Lgbase_okhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V

    .line 237
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_4

    .line 240
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Writer;->flush()V

    :cond_4
    return-object v9

    .line 233
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    :cond_6
    :try_start_4
    new-instance p1, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 229
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 237
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3

    .line 300
    iget-wide v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lgbase_okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lgbase_okhttp3/internal/http2/ErrorCode;->CANCEL:Lgbase_okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/http2/Http2Connection;->close(Lgbase_okhttp3/internal/http2/ErrorCode;Lgbase_okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method close(Lgbase_okhttp3/internal/http2/ErrorCode;Lgbase_okhttp3/internal/http2/ErrorCode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 412
    :try_start_0
    invoke-virtual {p0, p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown(Lgbase_okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 419
    :goto_0
    monitor-enter p0

    .line 420
    :try_start_1
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lgbase_okhttp3/internal/http2/Http2Stream;

    .line 422
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 424
    :goto_1
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lgbase_okhttp3/internal/http2/Ping;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lgbase_okhttp3/internal/http2/Ping;

    .line 426
    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    move-object v0, v2

    .line 428
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 431
    array-length v3, v1

    move-object v4, p1

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v3, :cond_3

    aget-object v5, v1, p1

    .line 433
    :try_start_2
    invoke-virtual {v5, p2}, Lgbase_okhttp3/internal/http2/Http2Stream;->close(Lgbase_okhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-eqz v4, :cond_2

    move-object v4, v5

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    move-object p1, v4

    :cond_4
    if-eqz v0, :cond_5

    .line 441
    array-length p2, v0

    :goto_4
    if-ge v2, p2, :cond_5

    aget-object v1, v0, v2

    .line 442
    invoke-virtual {v1}, Lgbase_okhttp3/internal/http2/Ping;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 448
    :cond_5
    :try_start_3
    iget-object p2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p2}, Lgbase_okhttp3/internal/http2/Http2Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    move-object p1, p2

    .line 455
    :cond_6
    :goto_5
    :try_start_4
    iget-object p2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_6
    if-nez p1, :cond_7

    return-void

    .line 460
    :cond_7
    throw p1

    :catchall_0
    move-exception p1

    .line 428
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public getProtocol()Lgbase_okhttp3/Protocol;
    .locals 1

    .line 163
    sget-object v0, Lgbase_okhttp3/Protocol;->HTTP_2:Lgbase_okhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lgbase_okhttp3/internal/http2/Http2Stream;
    .locals 1

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbase_okhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isShutdown()Z
    .locals 1

    monitor-enter p0

    .line 501
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lgbase_okhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lgbase_okhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lgbase_okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0, p1, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lgbase_okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lgbase_okhttp3/internal/http2/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Lgbase_okhttp3/internal/http2/Ping;

    invoke-direct {v0}, Lgbase_okhttp3/internal/http2/Ping;-><init>()V

    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_1

    .line 341
    iget v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 342
    iget v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 343
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    .line 344
    :cond_0
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    .line 346
    invoke-virtual {p0, v2, v1, v3, v0}, Lgbase_okhttp3/internal/http2/Http2Connection;->writePing(ZIILgbase_okhttp3/internal/http2/Ping;)V

    return-object v0

    .line 339
    :cond_1
    :try_start_1
    new-instance v0, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    .line 345
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method pushDataLater(ILgbase_okio/BufferedSource;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    new-instance v5, Lgbase_okio/Buffer;

    invoke-direct {v5}, Lgbase_okio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 829
    invoke-interface {p2, v0, v1}, Lgbase_okio/BufferedSource;->require(J)V

    .line 830
    invoke-interface {p2, v5, v0, v1}, Lgbase_okio/BufferedSource;->read(Lgbase_okio/Buffer;J)J

    .line 831
    invoke-virtual {v5}, Lgbase_okio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 832
    iget-object p2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lgbase_okhttp3/internal/http2/Http2Connection$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lgbase_okhttp3/internal/http2/Http2Connection$6;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILgbase_okio/Buffer;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 831
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lgbase_okio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lgbase_okhttp3/internal/http2/Http2Connection$5;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lgbase_okhttp3/internal/http2/Http2Connection$5;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 781
    monitor-enter p0

    .line 782
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    sget-object p2, Lgbase_okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILgbase_okhttp3/internal/http2/ErrorCode;)V

    .line 784
    monitor-exit p0

    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 787
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lgbase_okhttp3/internal/http2/Http2Connection$4;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Request[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgbase_okhttp3/internal/http2/Http2Connection$4;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 787
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method pushResetLater(ILgbase_okhttp3/internal/http2/ErrorCode;)V
    .locals 8

    .line 849
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lgbase_okhttp3/internal/http2/Http2Connection$7;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgbase_okhttp3/internal/http2/Http2Connection$7;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILgbase_okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lgbase_okhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lgbase_okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lgbase_okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lgbase_okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client cannot push requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pushedStream(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized removePing(I)Lgbase_okhttp3/internal/http2/Ping;
    .locals 1

    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbase_okhttp3/internal/http2/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeStream(I)Lgbase_okhttp3/internal/http2/Http2Stream;
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbase_okhttp3/internal/http2/Http2Stream;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSettings(Lgbase_okhttp3/internal/http2/Settings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 490
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    :try_start_1
    iget-boolean v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_0

    .line 494
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {v1, p1}, Lgbase_okhttp3/internal/http2/Settings;->merge(Lgbase_okhttp3/internal/http2/Settings;)V

    .line 495
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1, p1}, Lgbase_okhttp3/internal/http2/Http2Writer;->settings(Lgbase_okhttp3/internal/http2/Settings;)V

    .line 496
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 492
    :cond_0
    :try_start_3
    new-instance p1, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 496
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 497
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public shutdown(Lgbase_okhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 387
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 388
    :try_start_1
    iget-boolean v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 389
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 391
    :try_start_3
    iput-boolean v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 392
    iget v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 393
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    :try_start_4
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    sget-object v3, Lgbase_okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v1, p1, v3}, Lgbase_okhttp3/internal/http2/Http2Writer;->goAway(ILgbase_okhttp3/internal/http2/ErrorCode;[B)V

    .line 397
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 393
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 397
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 468
    invoke-virtual {p0, v0}, Lgbase_okhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method

.method start(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 478
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {p1, v0}, Lgbase_okhttp3/internal/http2/Http2Writer;->settings(Lgbase_okhttp3/internal/http2/Settings;)V

    .line 479
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 481
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lgbase_okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 484
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->readerRunnable:Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeData(IZLgbase_okio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 266
    iget-object p4, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p4, p2, p1, p3, v0}, Lgbase_okhttp3/internal/http2/Http2Writer;->data(ZILgbase_okio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 272
    monitor-enter p0

    .line 274
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 277
    iget-object v3, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 278
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 287
    iget-object v3, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v3}, Lgbase_okhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 288
    iget-wide v4, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 289
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 292
    iget-object v4, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v3}, Lgbase_okhttp3/internal/http2/Http2Writer;->data(ZILgbase_okio/Buffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 283
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 289
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method writePing(ZIILgbase_okhttp3/internal/http2/Ping;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 366
    :try_start_0
    invoke-virtual {p4}, Lgbase_okhttp3/internal/http2/Ping;->send()V

    .line 367
    :cond_0
    iget-object p4, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p4, p1, p2, p3}, Lgbase_okhttp3/internal/http2/Http2Writer;->ping(ZII)V

    .line 368
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method writePingLater(ZIILgbase_okhttp3/internal/http2/Ping;)V
    .locals 10

    .line 352
    sget-object v0, Lgbase_okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lgbase_okhttp3/internal/http2/Http2Connection$3;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 353
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lgbase_okhttp3/internal/http2/Http2Connection$3;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILgbase_okhttp3/internal/http2/Ping;)V

    .line 352
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lgbase_okhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method writeSynReset(ILgbase_okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->writer:Lgbase_okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/internal/http2/Http2Writer;->rstStream(ILgbase_okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method writeSynResetLater(ILgbase_okhttp3/internal/http2/ErrorCode;)V
    .locals 8

    .line 305
    sget-object v0, Lgbase_okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lgbase_okhttp3/internal/http2/Http2Connection$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgbase_okhttp3/internal/http2/Http2Connection$1;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILgbase_okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 9

    .line 320
    sget-object v0, Lgbase_okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lgbase_okhttp3/internal/http2/Http2Connection$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lgbase_okhttp3/internal/http2/Http2Connection$2;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
