.class public final Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lgbase_okhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lgbase_okhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lgbase_okhttp3/OkHttpClient;Z)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    .line 76
    iput-boolean p2, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Address;
    .locals 17

    move-object/from16 v0, p0

    .line 197
    invoke-virtual/range {p1 .. p1}, Lgbase_okhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 199
    iget-object v1, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 200
    iget-object v3, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lgbase_okhttp3/OkHttpClient;->certificatePinner()Lgbase_okhttp3/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 203
    :goto_0
    new-instance v1, Lgbase_okhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->dns()Lgbase_okhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    .line 204
    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->proxyAuthenticator()Lgbase_okhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    .line 205
    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lgbase_okhttp3/Address;-><init>(Ljava/lang/String;ILgbase_okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lgbase_okhttp3/CertificatePinner;Lgbase_okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private followUpRequest(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 272
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->connection()Lgbase_okhttp3/internal/connection/RealConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lgbase_okhttp3/Connection;->route()Lgbase_okhttp3/Route;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 276
    :goto_0
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->code()I

    move-result v2

    .line 278
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    const-string v5, "GET"

    if-eq v2, v4, :cond_7

    const/16 v4, 0x134

    if-eq v2, v4, :cond_7

    const/16 v4, 0x191

    if-eq v2, v4, :cond_6

    const/16 v4, 0x197

    if-eq v2, v4, :cond_3

    const/16 v0, 0x198

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 348
    :cond_1
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lgbase_okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_2

    return-object v1

    .line 352
    :cond_2
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v0}, Lgbase_okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    .line 283
    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    .line 284
    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_5

    .line 287
    iget-object v1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->proxyAuthenticator()Lgbase_okhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lgbase_okhttp3/Authenticator;->authenticate(Lgbase_okhttp3/Route;Lgbase_okhttp3/Response;)Lgbase_okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 285
    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_6
    iget-object v1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->authenticator()Lgbase_okhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lgbase_okhttp3/Authenticator;->authenticate(Lgbase_okhttp3/Route;Lgbase_okhttp3/Response;)Lgbase_okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 296
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-object v1

    .line 305
    :cond_8
    :pswitch_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const-string v0, "Location"

    .line 307
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    .line 309
    :cond_a
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgbase_okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    .line 315
    :cond_b
    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lgbase_okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 316
    iget-object v2, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lgbase_okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v2

    if-nez v2, :cond_c

    return-object v1

    .line 319
    :cond_c
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lgbase_okhttp3/Request;->newBuilder()Lgbase_okhttp3/Request$Builder;

    move-result-object v2

    .line 320
    invoke-static {v3}, Lgbase_okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 321
    invoke-static {v3}, Lgbase_okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v4

    .line 322
    invoke-static {v3}, Lgbase_okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 323
    invoke-virtual {v2, v5, v1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    goto :goto_2

    :cond_d
    if-eqz v4, :cond_e

    .line 325
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v1

    .line 326
    :cond_e
    invoke-virtual {v2, v3, v1}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    :goto_2
    if-nez v4, :cond_f

    const-string v1, "Transfer-Encoding"

    .line 329
    invoke-virtual {v2, v1}, Lgbase_okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    const-string v1, "Content-Length"

    .line 330
    invoke-virtual {v2, v1}, Lgbase_okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    const-string v1, "Content-Type"

    .line 331
    invoke-virtual {v2, v1}, Lgbase_okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    .line 338
    :cond_f
    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lgbase_okhttp3/Response;Lgbase_okhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "Authorization"

    .line 339
    invoke-virtual {v2, p1}, Lgbase_okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    .line 342
    :cond_10
    invoke-virtual {v2, v0}, Lgbase_okhttp3/Request$Builder;->url(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 271
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    .line 235
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 241
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 242
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 247
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 250
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 254
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;ZLgbase_okhttp3/Request;)Z
    .locals 2

    .line 215
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 218
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 221
    invoke-virtual {p3}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object p3

    instance-of p3, p3, Lgbase_okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz p3, :cond_1

    return v1

    .line 224
    :cond_1
    invoke-direct {p0, p1, p2}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 227
    :cond_2
    iget-object p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private sameConnection(Lgbase_okhttp3/Response;Lgbase_okhttp3/HttpUrl;)Z
    .locals 2

    .line 364
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p2}, Lgbase_okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 367
    invoke-virtual {p1}, Lgbase_okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lgbase_okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 90
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_0
    return-void
.end method

.method public intercept(Lgbase_okhttp3/Interceptor$Chain;)Lgbase_okhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Lgbase_okhttp3/Interceptor$Chain;->request()Lgbase_okhttp3/Request;

    move-result-object v0

    .line 108
    check-cast p1, Lgbase_okhttp3/internal/http/RealInterceptorChain;

    .line 109
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->call()Lgbase_okhttp3/Call;

    move-result-object v7

    .line 110
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->eventListener()Lgbase_okhttp3/EventListener;

    move-result-object v8

    .line 112
    new-instance v9, Lgbase_okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->connectionPool()Lgbase_okhttp3/ConnectionPool;

    move-result-object v2

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lgbase_okhttp3/internal/connection/StreamAllocation;-><init>(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v9, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v10

    const/4 v2, 0x0

    .line 118
    :goto_0
    iget-boolean v3, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v3, :cond_a

    .line 126
    :try_start_0
    iget-object v3, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1, v0, v3, v10, v10}, Lgbase_okhttp3/internal/http/RealInterceptorChain;->proceed(Lgbase_okhttp3/Request;Lgbase_okhttp3/internal/connection/StreamAllocation;Lgbase_okhttp3/internal/http/HttpCodec;Lgbase_okhttp3/internal/connection/RealConnection;)Lgbase_okhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Lgbase_okhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v1}, Lgbase_okhttp3/Response;->newBuilder()Lgbase_okhttp3/Response$Builder;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v10}, Lgbase_okhttp3/Response$Builder;->body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lgbase_okhttp3/Response$Builder;->priorResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object v0

    .line 158
    :cond_0
    invoke-direct {p0, v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Request;

    move-result-object v11

    if-nez v11, :cond_2

    .line 161
    iget-boolean p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez p1, :cond_1

    .line 162
    iget-object p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->release()V

    :cond_1
    return-object v0

    .line 167
    :cond_2
    invoke-virtual {v0}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v12, v2, 0x1

    const/16 v1, 0x14

    if-gt v12, v1, :cond_6

    .line 174
    invoke-virtual {v11}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lgbase_okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_5

    .line 179
    invoke-virtual {v11}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lgbase_okhttp3/Response;Lgbase_okhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 180
    iget-object v1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->release()V

    .line 181
    new-instance v13, Lgbase_okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->connectionPool()Lgbase_okhttp3/ConnectionPool;

    move-result-object v2

    .line 182
    invoke-virtual {v11}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lgbase_okhttp3/HttpUrl;)Lgbase_okhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v13

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lgbase_okhttp3/internal/connection/StreamAllocation;-><init>(Lgbase_okhttp3/ConnectionPool;Lgbase_okhttp3/Address;Lgbase_okhttp3/Call;Lgbase_okhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v13, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    goto :goto_1

    .line 183
    :cond_3
    iget-object v1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->codec()Lgbase_okhttp3/internal/http/HttpCodec;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_1
    move-object v1, v0

    move-object v0, v11

    move v2, v12

    goto :goto_0

    .line 184
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_5
    iget-object p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->release()V

    .line 176
    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Lgbase_okhttp3/Response;->code()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 170
    :cond_6
    iget-object p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->release()V

    .line 171
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 137
    :try_start_1
    instance-of v4, v3, Lgbase_okhttp3/internal/http2/ConnectionShutdownException;

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 138
    :goto_2
    invoke-direct {p0, v3, v4, v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLgbase_okhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    :cond_8
    throw v3

    :catch_1
    move-exception v3

    .line 130
    invoke-virtual {v3}, Lgbase_okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v0}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLgbase_okhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_0

    .line 131
    :cond_9
    invoke-virtual {v3}, Lgbase_okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_3
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, v10}, Lgbase_okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 145
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/connection/StreamAllocation;->release()V

    throw p1

    .line 119
    :cond_a
    iget-object p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/connection/StreamAllocation;->release()V

    .line 120
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public isCanceled()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method public streamAllocation()Lgbase_okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 103
    iget-object v0, p0, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lgbase_okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
