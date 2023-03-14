.class public Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;
.super Ljava/lang/Object;
.source "SyncHttpHandler.java"


# instance fields
.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedTimes:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    .line 41
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->expiry:J

    .line 35
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 36
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 37
    iput-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->charset:Ljava/lang/String;

    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gbase/gameplus/upgradeutil/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 92
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 95
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;

    iget-object v5, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->charset:Ljava/lang/String;

    iget-object v6, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    iget-wide v7, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->expiry:J

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    .line 96
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;->setRequestMethod(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x1a0

    if-ne v1, p1, :cond_2

    .line 107
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    const-string v0, "maybe the file has downloaded completely"

    invoke-direct {p1, v1, v0}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 99
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    if-nez v0, :cond_4

    .line 100
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 104
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_6
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    const-string v0, "response is null"

    invoke-direct {p1, v0}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gbase/gameplus/upgradeutil/exception/HttpException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;

    invoke-direct {v2, v1}, Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 64
    invoke-direct {p0, v1}, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/gbase/gameplus/upgradeutil/http/ResponseStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gbase/gameplus/upgradeutil/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 78
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 80
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 76
    throw p1

    :catch_2
    move-exception v1

    .line 72
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v2, v1

    .line 70
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v2, v1

    .line 67
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 83
    :cond_1
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    invoke-direct {p1, v2}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setExpiry(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->expiry:J

    return-void
.end method

.method public setHttpRedirectHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/SyncHttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    return-void
.end method
