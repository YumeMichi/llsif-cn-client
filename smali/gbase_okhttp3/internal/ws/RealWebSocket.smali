.class public final Lgbase_okhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lgbase_okhttp3/WebSocket;
.implements Lgbase_okhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;,
        Lgbase_okhttp3/internal/ws/RealWebSocket$Close;,
        Lgbase_okhttp3/internal/ws/RealWebSocket$Message;,
        Lgbase_okhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private call:Lgbase_okhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Lgbase_okhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lgbase_okhttp3/Request;

.field pingCount:I

.field pongCount:I

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lgbase_okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lgbase_okhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lgbase_okhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lgbase_okhttp3/Protocol;->HTTP_1_1:Lgbase_okhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/WebSocketListener;Ljava/util/Random;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 105
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 135
    invoke-virtual {p1}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iput-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->originalRequest:Lgbase_okhttp3/Request;

    .line 139
    iput-object p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    .line 140
    iput-object p3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    const/16 p1, 0x10

    .line 142
    new-array p1, p1, [B

    .line 143
    invoke-virtual {p3, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 144
    invoke-static {p1}, Lgbase_okio/ByteString;->of([B)Lgbase_okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okio/ByteString;->base64()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 146
    new-instance p1, Lgbase_okhttp3/internal/ws/RealWebSocket$1;

    invoke-direct {p1, p0}, Lgbase_okhttp3/internal/ws/RealWebSocket$1;-><init>(Lgbase_okhttp3/internal/ws/RealWebSocket;)V

    iput-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    return-void

    .line 136
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request must be GET: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private runWriter()V
    .locals 2

    .line 424
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 425
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized send(Lgbase_okio/ByteString;I)Z
    .locals 6

    monitor-enter p0

    .line 371
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-wide v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lgbase_okio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    .line 375
    invoke-virtual {p0, p1, p2}, Lgbase_okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return v1

    .line 380
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lgbase_okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 381
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;-><init>(ILgbase_okio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 383
    monitor-exit p0

    return p1

    .line 371
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method awaitTermination(ILjava/util/concurrent/TimeUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 167
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->call:Lgbase_okhttp3/Call;

    invoke-interface {v0}, Lgbase_okhttp3/Call;->cancel()V

    return-void
.end method

.method checkResponse(Lgbase_okhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->code()I

    move-result v0

    const-string v1, "\'"

    const/16 v2, 0x65

    if-ne v0, v2, :cond_3

    const-string v0, "Connection"

    .line 221
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade"

    .line 222
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    invoke-virtual {p1, v2}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "websocket"

    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Sec-WebSocket-Accept"

    .line 233
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lgbase_okio/ByteString;->sha1()Lgbase_okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgbase_okhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    .line 396
    invoke-virtual {p0, p1, p2, v0, v1}, Lgbase_okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    .line 400
    :try_start_0
    invoke-static {p1}, Lgbase_okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 404
    invoke-static {p2}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lgbase_okio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reason.size() > 123: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 413
    iput-boolean p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 416
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v2, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v2, p1, v0, p3, p4}, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;-><init>(ILgbase_okio/ByteString;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-direct {p0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 410
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connect(Lgbase_okhttp3/OkHttpClient;)V
    .locals 4

    .line 171
    invoke-virtual {p1}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Lgbase_okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    .line 172
    invoke-virtual {p1, v0}, Lgbase_okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lgbase_okhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v0

    .line 175
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->originalRequest:Lgbase_okhttp3/Request;

    invoke-virtual {v1}, Lgbase_okhttp3/Request;->newBuilder()Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "websocket"

    .line 176
    invoke-virtual {v1, v2, v3}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    const-string v3, "Connection"

    .line 177
    invoke-virtual {v1, v3, v2}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    const-string v3, "Sec-WebSocket-Key"

    .line 178
    invoke-virtual {v1, v3, v2}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    .line 179
    invoke-virtual {v1, v2, v3}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v1

    .line 181
    sget-object v2, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {v2, p1, v1}, Lgbase_okhttp3/internal/Internal;->newWebSocketCall(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->call:Lgbase_okhttp3/Call;

    .line 182
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->call:Lgbase_okhttp3/Call;

    new-instance v2, Lgbase_okhttp3/internal/ws/RealWebSocket$2;

    invoke-direct {v2, p0, v1, v0}, Lgbase_okhttp3/internal/ws/RealWebSocket$2;-><init>(Lgbase_okhttp3/internal/ws/RealWebSocket;Lgbase_okhttp3/Request;I)V

    invoke-interface {p1, v2}, Lgbase_okhttp3/Call;->enqueue(Lgbase_okhttp3/Callback;)V

    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Lgbase_okhttp3/Response;)V
    .locals 3
    .param p2    # Lgbase_okhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 535
    monitor-enter p0

    .line 536
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    .line 538
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v1, 0x0

    .line 539
    iput-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    .line 540
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 541
    :cond_1
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 542
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 545
    :try_start_1
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    invoke-virtual {v1, p0, p1, p2}, Lgbase_okhttp3/WebSocketListener;->onFailure(Lgbase_okhttp3/WebSocket;Ljava/lang/Throwable;Lgbase_okhttp3/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 542
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public initReaderAndWriter(Ljava/lang/String;JLgbase_okhttp3/internal/ws/RealWebSocket$Streams;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iput-object p4, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    .line 246
    new-instance v0, Lgbase_okhttp3/internal/ws/WebSocketWriter;

    iget-boolean v1, p4, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p4, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lgbase_okio/BufferedSink;

    iget-object v3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lgbase_okhttp3/internal/ws/WebSocketWriter;-><init>(ZLgbase_okio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->writer:Lgbase_okhttp3/internal/ws/WebSocketWriter;

    .line 247
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lgbase_okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lgbase_okhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v1, p0}, Lgbase_okhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lgbase_okhttp3/internal/ws/RealWebSocket;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-wide v4, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 252
    :cond_0
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 253
    invoke-direct {p0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 255
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    new-instance p1, Lgbase_okhttp3/internal/ws/WebSocketReader;

    iget-boolean p2, p4, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object p3, p4, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;->source:Lgbase_okio/BufferedSource;

    invoke-direct {p1, p2, p3, p0}, Lgbase_okhttp3/internal/ws/WebSocketReader;-><init>(ZLgbase_okio/BufferedSource;Lgbase_okhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->reader:Lgbase_okhttp3/internal/ws/WebSocketReader;

    return-void

    :catchall_0
    move-exception p1

    .line 255
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public loopReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    :goto_0
    iget v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->reader:Lgbase_okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 334
    monitor-enter p0

    .line 335
    :try_start_0
    iget v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-ne v1, v0, :cond_3

    .line 336
    iput p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 337
    iput-object p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 338
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    .line 340
    iput-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    .line 341
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 342
    :cond_0
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 344
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 347
    :try_start_1
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    invoke-virtual {v1, p0, p1, p2}, Lgbase_okhttp3/WebSocketListener;->onClosing(Lgbase_okhttp3/WebSocket;ILjava/lang/String;)V

    if-eqz v0, :cond_2

    .line 350
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    invoke-virtual {v1, p0, p1, p2}, Lgbase_okhttp3/WebSocketListener;->onClosed(Lgbase_okhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :cond_2
    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 335
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 344
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 331
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onReadMessage(Lgbase_okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lgbase_okhttp3/WebSocketListener;->onMessage(Lgbase_okhttp3/WebSocket;Lgbase_okio/ByteString;)V

    return-void
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lgbase_okhttp3/WebSocketListener;->onMessage(Lgbase_okhttp3/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onReadPing(Lgbase_okio/ByteString;)V
    .locals 1

    monitor-enter p0

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-direct {p0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 322
    iget p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pingCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 318
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lgbase_okio/ByteString;)V
    .locals 0

    monitor-enter p0

    .line 327
    :try_start_0
    iget p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pongCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pingCount()I
    .locals 1

    monitor-enter p0

    .line 301
    :try_start_0
    iget v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pong(Lgbase_okio/ByteString;)Z
    .locals 1

    monitor-enter p0

    .line 388
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-direct {p0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 392
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 388
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pongCount()I
    .locals 1

    monitor-enter p0

    .line 305
    :try_start_0
    iget v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processNextFrame()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 274
    :try_start_0
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->reader:Lgbase_okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 275
    iget v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 277
    invoke-virtual {p0, v1, v2}, Lgbase_okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lgbase_okhttp3/Response;)V

    return v0
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lgbase_okhttp3/Request;
    .locals 1

    .line 159
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->originalRequest:Lgbase_okhttp3/Request;

    return-object v0
.end method

.method public send(Lgbase_okio/ByteString;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 366
    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->send(Lgbase_okio/ByteString;I)Z

    move-result p1

    return p1

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "bytes == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 361
    invoke-static {p1}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->send(Lgbase_okio/ByteString;I)Z

    move-result p1

    return p1

    .line 360
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "text == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method tearDown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 294
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 296
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 297
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method writeOneFrame()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 452
    monitor-exit p0

    return v1

    .line 455
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->writer:Lgbase_okhttp3/internal/ws/WebSocketWriter;

    .line 456
    iget-object v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbase_okio/ByteString;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 458
    iget-object v5, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 459
    instance-of v6, v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v6, :cond_2

    .line 460
    iget v1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 461
    iget-object v6, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    if-eq v1, v3, :cond_1

    .line 463
    iget-object v3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    .line 464
    iput-object v4, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->streams:Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;

    .line 465
    iget-object v4, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v4, v3

    goto :goto_1

    .line 468
    :cond_1
    iget-object v3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lgbase_okhttp3/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v7, p0}, Lgbase_okhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lgbase_okhttp3/internal/ws/RealWebSocket;)V

    move-object v8, v5

    check-cast v8, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;

    iget-wide v8, v8, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    .line 472
    monitor-exit p0

    return v1

    :cond_3
    move-object v6, v4

    goto :goto_0

    :cond_4
    move-object v5, v4

    move-object v6, v5

    :goto_0
    const/4 v1, -0x1

    .line 475
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_5

    .line 479
    :try_start_1
    invoke-virtual {v0, v2}, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writePong(Lgbase_okio/ByteString;)V

    goto :goto_2

    .line 481
    :cond_5
    instance-of v2, v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v2, :cond_6

    .line 482
    move-object v1, v5

    check-cast v1, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;

    iget-object v1, v1, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;->data:Lgbase_okio/ByteString;

    .line 483
    check-cast v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;

    iget v2, v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 484
    invoke-virtual {v1}, Lgbase_okio/ByteString;->size()I

    move-result v3

    int-to-long v5, v3

    .line 483
    invoke-virtual {v0, v2, v5, v6}, Lgbase_okhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lgbase_okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object v0

    .line 485
    invoke-interface {v0, v1}, Lgbase_okio/BufferedSink;->write(Lgbase_okio/ByteString;)Lgbase_okio/BufferedSink;

    .line 486
    invoke-interface {v0}, Lgbase_okio/BufferedSink;->close()V

    .line 487
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    :try_start_2
    iget-wide v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v1}, Lgbase_okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 489
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 491
    :cond_6
    instance-of v2, v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v2, :cond_8

    .line 492
    check-cast v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;

    .line 493
    iget v2, v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;->code:I

    iget-object v3, v5, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;->reason:Lgbase_okio/ByteString;

    invoke-virtual {v0, v2, v3}, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writeClose(ILgbase_okio/ByteString;)V

    if-eqz v4, :cond_7

    .line 497
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->listener:Lgbase_okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, v1, v6}, Lgbase_okhttp3/WebSocketListener;->onClosed(Lgbase_okhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_2
    const/4 v0, 0x1

    .line 506
    invoke-static {v4}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    .line 501
    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 506
    invoke-static {v4}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 475
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method writePingFrame()V
    .locals 2

    .line 521
    monitor-enter p0

    .line 522
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket;->writer:Lgbase_okhttp3/internal/ws/WebSocketWriter;

    .line 524
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :try_start_1
    sget-object v1, Lgbase_okio/ByteString;->EMPTY:Lgbase_okio/ByteString;

    invoke-virtual {v0, v1}, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writePing(Lgbase_okio/ByteString;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 529
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lgbase_okhttp3/Response;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 524
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
