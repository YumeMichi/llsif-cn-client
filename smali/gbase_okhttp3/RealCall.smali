.class final Lgbase_okhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lgbase_okhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lgbase_okhttp3/OkHttpClient;

.field private eventListener:Lgbase_okhttp3/EventListener;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lgbase_okhttp3/Request;

.field final retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;


# direct methods
.method private constructor <init>(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;Z)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    .line 53
    iput-object p2, p0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    .line 54
    iput-boolean p3, p0, Lgbase_okhttp3/RealCall;->forWebSocket:Z

    .line 55
    new-instance p2, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {p2, p1, p3}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lgbase_okhttp3/OkHttpClient;Z)V

    iput-object p2, p0, Lgbase_okhttp3/RealCall;->retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    return-void
.end method

.method private captureCallStackTrace()V
    .locals 2

    .line 86
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lgbase_okhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lgbase_okhttp3/RealCall;->retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    return-void
.end method

.method static newRealCall(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;Z)Lgbase_okhttp3/RealCall;
    .locals 1

    .line 60
    new-instance v0, Lgbase_okhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lgbase_okhttp3/RealCall;-><init>(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;Z)V

    .line 61
    invoke-virtual {p0}, Lgbase_okhttp3/OkHttpClient;->eventListenerFactory()Lgbase_okhttp3/EventListener$Factory;

    move-result-object p0

    invoke-interface {p0, v0}, Lgbase_okhttp3/EventListener$Factory;->create(Lgbase_okhttp3/Call;)Lgbase_okhttp3/EventListener;

    move-result-object p0

    iput-object p0, v0, Lgbase_okhttp3/RealCall;->eventListener:Lgbase_okhttp3/EventListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 100
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Lgbase_okhttp3/Call;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lgbase_okhttp3/RealCall;->clone()Lgbase_okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lgbase_okhttp3/RealCall;
    .locals 3

    .line 113
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    iget-object v1, p0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    iget-boolean v2, p0, Lgbase_okhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lgbase_okhttp3/RealCall;->newRealCall(Lgbase_okhttp3/OkHttpClient;Lgbase_okhttp3/Request;Z)Lgbase_okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lgbase_okhttp3/RealCall;->clone()Lgbase_okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lgbase_okhttp3/Callback;)V
    .locals 2

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lgbase_okhttp3/RealCall;->executed:Z

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-direct {p0}, Lgbase_okhttp3/RealCall;->captureCallStackTrace()V

    .line 96
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->dispatcher()Lgbase_okhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lgbase_okhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lgbase_okhttp3/RealCall$AsyncCall;-><init>(Lgbase_okhttp3/RealCall;Lgbase_okhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Dispatcher;->enqueue(Lgbase_okhttp3/RealCall$AsyncCall;)V

    return-void

    .line 92
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute()Lgbase_okhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lgbase_okhttp3/RealCall;->executed:Z

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    invoke-direct {p0}, Lgbase_okhttp3/RealCall;->captureCallStackTrace()V

    .line 76
    :try_start_1
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->dispatcher()Lgbase_okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbase_okhttp3/Dispatcher;->executed(Lgbase_okhttp3/RealCall;)V

    .line 77
    invoke-virtual {p0}, Lgbase_okhttp3/RealCall;->getResponseWithInterceptorChain()Lgbase_okhttp3/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->dispatcher()Lgbase_okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lgbase_okhttp3/Dispatcher;->finished(Lgbase_okhttp3/RealCall;)V

    return-object v0

    .line 78
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->dispatcher()Lgbase_okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lgbase_okhttp3/Dispatcher;->finished(Lgbase_okhttp3/RealCall;)V

    throw v0

    .line 71
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 73
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method getResponseWithInterceptorChain()Lgbase_okhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lgbase_okhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->cookieJar()Lgbase_okhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lgbase_okhttp3/internal/http/BridgeInterceptor;-><init>(Lgbase_okhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lgbase_okhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->internalCache()Lgbase_okhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lgbase_okhttp3/internal/cache/CacheInterceptor;-><init>(Lgbase_okhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lgbase_okhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lgbase_okhttp3/internal/connection/ConnectInterceptor;-><init>(Lgbase_okhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-boolean v0, p0, Lgbase_okhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    :cond_0
    new-instance v0, Lgbase_okhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lgbase_okhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lgbase_okhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v12, Lgbase_okhttp3/internal/http/RealInterceptorChain;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    iget-object v8, p0, Lgbase_okhttp3/RealCall;->eventListener:Lgbase_okhttp3/EventListener;

    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    .line 192
    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v9

    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    .line 193
    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v10

    iget-object v0, p0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lgbase_okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/internal/http/HttpCodec;Lgbase_okhttp3/internal/connection/RealConnection;ILgbase_okhttp3/Request;Lgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;III)V

    .line 195
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    invoke-interface {v12, v0}, Lgbase_okhttp3/Interceptor$Chain;->proceed(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lgbase_okhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lgbase_okhttp3/Request;
    .locals 1

    .line 66
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    return-object v0
.end method

.method streamAllocation()Lgbase_okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 117
    iget-object v0, p0, Lgbase_okhttp3/RealCall;->retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lgbase_okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgbase_okhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbase_okhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lgbase_okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
