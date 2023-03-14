.class public final Lgbase_okhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lgbase_okhttp3/Interceptor;


# instance fields
.field final cache:Lgbase_okhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lgbase_okhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    return-void
.end method

.method private cacheWritingResponse(Lgbase_okhttp3/internal/cache/CacheRequest;Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 163
    :cond_0
    invoke-interface {p1}, Lgbase_okhttp3/internal/cache/CacheRequest;->body()Lgbase_okio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 166
    :cond_1
    invoke-virtual {p2}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/ResponseBody;->source()Lgbase_okio/BufferedSource;

    move-result-object v1

    .line 167
    invoke-static {v0}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object v0

    .line 169
    new-instance v2, Lgbase_okhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lgbase_okhttp3/internal/cache/CacheInterceptor$1;-><init>(Lgbase_okhttp3/internal/cache/CacheInterceptor;Lgbase_okio/BufferedSource;Lgbase_okhttp3/internal/cache/CacheRequest;Lgbase_okio/BufferedSink;)V

    .line 211
    invoke-virtual {p2}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    new-instance v0, Lgbase_okhttp3/internal/http/RealResponseBody;

    .line 212
    invoke-virtual {p2}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object p2

    invoke-static {v2}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lgbase_okhttp3/internal/http/RealResponseBody;-><init>(Lgbase_okhttp3/Headers;Lgbase_okio/BufferedSource;)V

    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private static combine(Lgbase_okhttp3/Headers;Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Headers;
    .locals 7

    .line 218
    new-instance v0, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    .line 220
    invoke-virtual {p0}, Lgbase_okhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 221
    invoke-virtual {p0, v3}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {p0, v3}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 223
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    invoke-static {v4}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lgbase_okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 227
    :cond_1
    sget-object v6, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Lgbase_okhttp3/internal/Internal;->addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p1}, Lgbase_okhttp3/Headers;->size()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_6

    .line 232
    invoke-virtual {p1, v2}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    .line 233
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 236
    :cond_4
    invoke-static {v1}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    sget-object v3, Lgbase_okhttp3/internal/Internal;->instance:Lgbase_okhttp3/internal/Internal;

    invoke-virtual {p1, v2}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lgbase_okhttp3/internal/Internal;->addLenient(Lgbase_okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 241
    :cond_6
    invoke-virtual {v0}, Lgbase_okhttp3/Headers$Builder;->build()Lgbase_okhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static stripBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;
    .locals 1

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgbase_okhttp3/Response$Builder;->body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public intercept(Lgbase_okhttp3/Interceptor$Chain;)Lgbase_okhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lgbase_okhttp3/Interceptor$Chain;->request()Lgbase_okhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbase_okhttp3/internal/cache/InternalCache;->get(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 60
    new-instance v3, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lgbase_okhttp3/Interceptor$Chain;->request()Lgbase_okhttp3/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V

    invoke-virtual {v3}, Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;->get()Lgbase_okhttp3/internal/cache/CacheStrategy;

    move-result-object v1

    .line 61
    iget-object v2, v1, Lgbase_okhttp3/internal/cache/CacheStrategy;->networkRequest:Lgbase_okhttp3/Request;

    .line 62
    iget-object v3, v1, Lgbase_okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lgbase_okhttp3/Response;

    .line 64
    iget-object v4, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v4, v1}, Lgbase_okhttp3/internal/cache/InternalCache;->trackResponse(Lgbase_okhttp3/internal/cache/CacheStrategy;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 69
    invoke-virtual {v0}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 74
    new-instance v0, Lgbase_okhttp3/Response$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Response$Builder;-><init>()V

    .line 75
    invoke-interface {p1}, Lgbase_okhttp3/Interceptor$Chain;->request()Lgbase_okhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Response$Builder;->request(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lgbase_okhttp3/Protocol;->HTTP_1_1:Lgbase_okhttp3/Protocol;

    .line 76
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->protocol(Lgbase_okhttp3/Protocol;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    const/16 v0, 0x1f8

    .line 77
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->code(I)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 78
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->message(Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lgbase_okhttp3/internal/Util;->EMPTY_RESPONSE:Lgbase_okhttp3/ResponseBody;

    .line 79
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 80
    invoke-virtual {p1, v0, v1}, Lgbase_okhttp3/Response$Builder;->sentRequestAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lgbase_okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    .line 87
    invoke-virtual {v3}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 88
    invoke-static {v3}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->stripBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->cacheResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 94
    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lgbase_okhttp3/Interceptor$Chain;->proceed(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 104
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    .line 105
    invoke-virtual {v3}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v3}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object v1

    invoke-virtual {p1}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object v2

    invoke-static {v1, v2}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->combine(Lgbase_okhttp3/Headers;Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Response$Builder;->headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgbase_okhttp3/Response$Builder;->sentRequestAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgbase_okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 109
    invoke-static {v3}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->stripBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Response$Builder;->cacheResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 110
    invoke-static {p1}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->stripBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Response$Builder;->networkResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/ResponseBody;->close()V

    .line 116
    iget-object p1, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lgbase_okhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 117
    iget-object p1, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    invoke-interface {p1, v3, v0}, Lgbase_okhttp3/internal/cache/InternalCache;->update(Lgbase_okhttp3/Response;Lgbase_okhttp3/Response;)V

    return-object v0

    .line 120
    :cond_6
    invoke-virtual {v3}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    :cond_7
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 125
    invoke-static {v3}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->stripBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Response$Builder;->cacheResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 126
    invoke-static {p1}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->stripBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Response$Builder;->networkResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_9

    .line 130
    invoke-static {p1}, Lgbase_okhttp3/internal/http/HttpHeaders;->hasBody(Lgbase_okhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lgbase_okhttp3/internal/cache/CacheStrategy;->isCacheable(Lgbase_okhttp3/Response;Lgbase_okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    invoke-interface {v0, p1}, Lgbase_okhttp3/internal/cache/InternalCache;->put(Lgbase_okhttp3/Response;)Lgbase_okhttp3/internal/cache/CacheRequest;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0, p1}, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lgbase_okhttp3/internal/cache/CacheRequest;Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 136
    :cond_8
    invoke-virtual {v2}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    :try_start_1
    iget-object v0, p0, Lgbase_okhttp3/internal/cache/CacheInterceptor;->cache:Lgbase_okhttp3/internal/cache/InternalCache;

    invoke-interface {v0, v2}, Lgbase_okhttp3/internal/cache/InternalCache;->remove(Lgbase_okhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    .line 98
    invoke-virtual {v0}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method
