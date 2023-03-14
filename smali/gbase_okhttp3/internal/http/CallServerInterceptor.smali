.class public final Lgbase_okhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lgbase_okhttp3/Interceptor;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lgbase_okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lgbase_okhttp3/Interceptor$Chain;)Lgbase_okhttp3/Response;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    check-cast p1, Lgbase_okhttp3/internal/http/RealInterceptorChain;

    .line 41
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->httpStream()Lgbase_okhttp3/internal/http/HttpCodec;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lgbase_okhttp3/internal/connection/StreamAllocation;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->connection()Lgbase_okhttp3/Connection;

    move-result-object v2

    check-cast v2, Lgbase_okhttp3/internal/connection/RealConnection;

    .line 44
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->request()Lgbase_okhttp3/Request;

    move-result-object p1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 47
    invoke-interface {v0, p1}, Lgbase_okhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lgbase_okhttp3/Request;)V

    .line 50
    invoke-virtual {p1}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbase_okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "Expect"

    .line 54
    invoke-virtual {p1, v5}, Lgbase_okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "100-continue"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-interface {v0}, Lgbase_okhttp3/internal/http/HttpCodec;->flushRequest()V

    const/4 v5, 0x1

    .line 56
    invoke-interface {v0, v5}, Lgbase_okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lgbase_okhttp3/Response$Builder;

    move-result-object v6

    :cond_0
    if-nez v6, :cond_1

    .line 61
    invoke-virtual {p1}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v2}, Lgbase_okhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    invoke-interface {v0, p1, v7, v8}, Lgbase_okhttp3/internal/http/HttpCodec;->createRequestBody(Lgbase_okhttp3/Request;J)Lgbase_okio/Sink;

    move-result-object v2

    .line 62
    invoke-static {v2}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object v2

    .line 63
    invoke-virtual {p1}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {v5, v2}, Lgbase_okhttp3/RequestBody;->writeTo(Lgbase_okio/BufferedSink;)V

    .line 64
    invoke-interface {v2}, Lgbase_okio/BufferedSink;->close()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2}, Lgbase_okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-virtual {v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 73
    :cond_2
    :goto_0
    invoke-interface {v0}, Lgbase_okhttp3/internal/http/HttpCodec;->finishRequest()V

    if-nez v6, :cond_3

    const/4 v2, 0x0

    .line 76
    invoke-interface {v0, v2}, Lgbase_okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lgbase_okhttp3/Response$Builder;

    move-result-object v6

    .line 80
    :cond_3
    invoke-virtual {v6, p1}, Lgbase_okhttp3/Response$Builder;->request(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v2

    invoke-virtual {v2}, Lgbase_okhttp3/internal/connection/RealConnection;->handshake()Lgbase_okhttp3/Handshake;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgbase_okhttp3/Response$Builder;->handshake(Lgbase_okhttp3/Handshake;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1, v3, v4}, Lgbase_okhttp3/Response$Builder;->sentRequestAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lgbase_okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->code()I

    move-result v2

    .line 87
    iget-boolean v3, p0, Lgbase_okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    .line 89
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lgbase_okhttp3/internal/Util;->EMPTY_RESPONSE:Lgbase_okhttp3/ResponseBody;

    .line 90
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object v3

    .line 94
    invoke-interface {v0, p1}, Lgbase_okhttp3/internal/http/HttpCodec;->openResponseBody(Lgbase_okhttp3/Response;)Lgbase_okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {v3, p1}, Lgbase_okhttp3/Response$Builder;->body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    .line 98
    :goto_1
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v0

    const-string v3, "Connection"

    invoke-virtual {v0, v3}, Lgbase_okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "close"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    invoke-virtual {p1, v3}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    :cond_5
    invoke-virtual {v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_6
    const/16 v0, 0xcc

    if-eq v2, v0, :cond_7

    const/16 v0, 0xcd

    if-ne v2, v0, :cond_8

    .line 103
    :cond_7
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_9

    :cond_8
    return-object p1

    .line 104
    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
