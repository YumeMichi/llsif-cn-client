.class public Lcom/gbase/gameplus/upgradeutil/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final DEFAULT_CONN_TIMEOUT:I = 0x2710

.field private static final DEFAULT_POOL_SIZE:I = 0x3

.field private static final DEFAULT_RETRY_TIMES:I = 0x2

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final EXECUTOR:Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;


# instance fields
.field private currentRequestExpiry:J

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

.field private responseTextCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    .line 128
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;-><init>(I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->EXECUTOR:Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2710

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v0, "UTF-8"

    .line 116
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->responseTextCharset:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->currentRequestExpiry:J

    .line 59
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    int-to-long v1, p1

    .line 61
    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 62
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 70
    new-instance p1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, p1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 71
    invoke-static {v0, p2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    const/4 p1, 0x1

    .line 73
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 p1, 0x2000

    .line 74
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 75
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 77
    new-instance p1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 78
    new-instance p2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    const/16 v2, 0x50

    const-string v3, "http"

    invoke-direct {p2, v3, v1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 79
    new-instance p2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory;->getSocketFactory()Lcom/gbase/gameplus/upgradeutil/http/client/DefaultSSLSocketFactory;

    move-result-object v1

    const/16 v2, 0x1bb

    const-string v3, "https"

    invoke-direct {p2, v3, v1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 81
    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {p2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 83
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance p2, Lcom/gbase/gameplus/upgradeutil/http/client/RetryHandler;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/RetryHandler;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 85
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance p2, Lcom/gbase/gameplus/upgradeutil/HttpUtils$1;

    invoke-direct {p2, p0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils$1;-><init>(Lcom/gbase/gameplus/upgradeutil/HttpUtils;)V

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 94
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance p2, Lcom/gbase/gameplus/upgradeutil/HttpUtils$2;

    invoke-direct {p2, p0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils$2;-><init>(Lcom/gbase/gameplus/upgradeutil/HttpUtils;)V

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2710

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private sendRequest(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "TT;>;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "TT;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->responseTextCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)V

    .line 302
    iget-wide v1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->currentRequestExpiry:J

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->setExpiry(J)V

    .line 303
    iget-object p3, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    invoke-virtual {v0, p3}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->setHttpRedirectHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;)V

    .line 304
    invoke-virtual {p1, p2, v0}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setRequestParams(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V

    if-eqz p2, :cond_0

    .line 307
    invoke-virtual {p2}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getPriority()Lcom/gbase/gameplus/upgradeutil/task/Priority;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->setPriority(Lcom/gbase/gameplus/upgradeutil/task/Priority;)V

    .line 309
    :cond_0
    sget-object p2, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->EXECUTOR:Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    invoke-virtual {v0, p2, p3}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    return-object v0
.end method

.method private sendSyncRequest(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gbase/gameplus/upgradeutil/exception/HttpException;
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->responseTextCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V

    .line 317
    iget-wide v1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->currentRequestExpiry:J

    invoke-virtual {v0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->setExpiry(J)V

    .line 318
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->setHttpRedirectHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;)V

    .line 319
    invoke-virtual {p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setRequestParams(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;)V

    .line 321
    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public configCookieStore(Lorg/apache/http/client/CookieStore;)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public configCurrentHttpCacheExpiry(J)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 0

    .line 160
    iput-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->currentRequestExpiry:J

    return-object p0
.end method

.method public configDefaultHttpCacheExpiry(J)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 0

    .line 154
    invoke-static {p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->setDefaultExpiryTime(J)V

    .line 155
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->currentRequestExpiry:J

    return-object p0
.end method

.method public configHttpCacheSize(I)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 1

    .line 149
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->setCacheSize(I)V

    return-object p0
.end method

.method public configHttpRedirectHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    return-object p0
.end method

.method public configRegisterScheme(Lorg/apache/http/conn/scheme/Scheme;)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-object p0
.end method

.method public configRequestRetryCount(I)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/client/RetryHandler;

    invoke-direct {v1, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/RetryHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-object p0
.end method

.method public configRequestThreadPoolSize(I)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 1

    .line 204
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->EXECUTOR:Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;

    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;->setPoolSize(I)V

    return-object p0
.end method

.method public configResponseTextCharset(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->responseTextCharset:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public configSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 3

    .line 193
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 194
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-object p0
.end method

.method public configSoTimeout(I)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 183
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-object p0
.end method

.method public configTimeout(I)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    int-to-long v1, p1

    .line 176
    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 177
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-object p0
.end method

.method public configUserAgent(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/HttpUtils;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-object p0
.end method

.method public download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 268
    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "Z",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 273
    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "ZZ",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 282
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;

    invoke-direct {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;-><init>(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 284
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->responseTextCharset:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v2, p7}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)V

    .line 286
    iget-wide v1, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->currentRequestExpiry:J

    invoke-virtual {p1, v1, v2}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->setExpiry(J)V

    .line 287
    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    invoke-virtual {p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->setHttpRedirectHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;)V

    if-eqz p4, :cond_0

    .line 290
    invoke-virtual {v0, p4, p1}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;->setRequestParams(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;)V

    .line 291
    invoke-virtual {p4}, Lcom/gbase/gameplus/upgradeutil/http/RequestParams;->getPriority()Lcom/gbase/gameplus/upgradeutil/task/Priority;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->setPriority(Lcom/gbase/gameplus/upgradeutil/task/Priority;)V

    .line 293
    :cond_0
    sget-object p2, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->EXECUTOR:Lcom/gbase/gameplus/upgradeutil/task/PriorityExecutor;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p7, 0x0

    aput-object v0, p4, p7

    const/4 p7, 0x1

    aput-object p3, p4, p7

    const/4 p3, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, p3

    const/4 p3, 0x3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, p3

    invoke-virtual {p1, p2, p4}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;

    return-object p1

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 253
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "Z",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "ZZ",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 263
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 238
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;ZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 243
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 248
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;->GET:Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->download(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;ZZLcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public send(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/RequestParams;",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "TT;>;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 219
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;

    invoke-direct {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;-><init>(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v0, p3, p4}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sendRequest(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "TT;>;)",
            "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->send(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;

    move-result-object p1

    return-object p1
.end method

.method public sendSync(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gbase/gameplus/upgradeutil/exception/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, p2, v0}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sendSync(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;

    move-result-object p1

    return-object p1
.end method

.method public sendSync(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gbase/gameplus/upgradeutil/exception/HttpException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 230
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;

    invoke-direct {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;-><init>(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, v0, p3}, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sendSyncRequest(Lcom/gbase/gameplus/upgradeutil/http/client/HttpRequest;Lcom/gbase/gameplus/upgradeutil/http/RequestParams;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;

    move-result-object p1

    return-object p1

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
