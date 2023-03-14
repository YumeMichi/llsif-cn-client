.class public Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
.super Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;
.source "HttpHandler.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$NotUseApacheRedirectHandler;,
        Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4

.field private static final notUseApacheRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$NotUseApacheRedirectHandler;


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private fileSavePath:Ljava/lang/String;

.field private httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

.field private isDownloadingFile:Z

.field private isUploading:Z

.field private lastUpdateTime:J

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedCount:I

.field private state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 329
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$NotUseApacheRedirectHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$NotUseApacheRedirectHandler;-><init>(Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$1;)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$NotUseApacheRedirectHandler;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/task/PriorityAsyncTask;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isUploading:Z

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 46
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isDownloadingFile:Z

    .line 47
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoResume:Z

    .line 48
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoRename:Z

    .line 59
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->WAITING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    .line 65
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->expiry:J

    .line 52
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 53
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 54
    iput-object p4, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    .line 55
    iput-object p3, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->charset:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    sget-object p2, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$NotUseApacheRedirectHandler;

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gbase/gameplus/upgradeutil/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 215
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_5

    .line 221
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_4

    .line 223
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isUploading:Z

    .line 224
    iget-boolean v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v2, :cond_3

    .line 225
    iget-boolean v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoResume:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->isSupportRange(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoResume:Z

    .line 226
    iget-boolean v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoRename:Z

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/OtherUtils;->getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v9, v1

    .line 227
    new-instance v4, Lcom/gbase/gameplus/upgradeutil/http/callback/FileDownloadHandler;

    invoke-direct {v4}, Lcom/gbase/gameplus/upgradeutil/http/callback/FileDownloadHandler;-><init>()V

    .line 228
    iget-object v7, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoResume:Z

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/gbase/gameplus/upgradeutil/http/callback/FileDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_1

    .line 230
    :cond_3
    new-instance v1, Lcom/gbase/gameplus/upgradeutil/http/callback/StringDownloadHandler;

    invoke-direct {v1}, Lcom/gbase/gameplus/upgradeutil/http/callback/StringDownloadHandler;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v1, v5, p0, v2}, Lcom/gbase/gameplus/upgradeutil/http/callback/StringDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    sget-object v2, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    sget-object v2, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->requestUrl:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->expiry:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    .line 237
    :cond_4
    :goto_1
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v2

    :cond_5
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_6

    goto :goto_2

    :cond_6
    const/16 p1, 0x1a0

    if-ne v2, p1, :cond_7

    .line 247
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    const-string v0, "maybe the file has downloaded completely"

    invoke-direct {p1, v2, v0}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 249
    :cond_7
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 239
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    if-nez v0, :cond_9

    .line 240
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    .line 242
    :cond_9
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 244
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v1

    .line 213
    :cond_b
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    const-string v0, "response is null"

    invoke-direct {p1, v0}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gbase/gameplus/upgradeutil/exception/HttpException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    .line 86
    :goto_0
    iget-boolean v1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoResume:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v1, :cond_1

    .line 87
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_1
    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RANGE"

    invoke-virtual {p1, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->requestMethod:Ljava/lang/String;

    .line 101
    sget-object v2, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 102
    sget-object v2, Lcom/gbase/gameplus/upgradeutil/HttpUtils;->sHttpCache:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 104
    new-instance v4, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;

    invoke-direct {v4, v3, v2, v1}, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v4

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v2, p1, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 111
    invoke-direct {p0, v2}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gbase/gameplus/upgradeutil/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v3

    :catch_0
    move-exception v2

    .line 127
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 129
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 125
    throw p1

    :catch_2
    move-exception v2

    .line 121
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 123
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v3, v2

    .line 119
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v3, v2

    .line 116
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->retriedCount:I

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_4

    goto/16 :goto_0

    .line 132
    :cond_4
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    invoke-direct {p1, v3}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 259
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    .line 261
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 267
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 269
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 274
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;->onCancelled()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 141
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v3, :cond_2

    .line 142
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isDownloadingFile:Z

    .line 144
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoResume:Z

    .line 145
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->autoRename:Z

    .line 149
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    sget-object v6, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    if-ne v0, v6, :cond_3

    return-object v2

    .line 151
    :cond_3
    aget-object p1, p1, v4

    check-cast p1, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 152
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->requestUrl:Ljava/lang/String;

    .line 153
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    if-eqz p1, :cond_4

    .line 154
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;->setRequestUrl(Ljava/lang/String;)V

    .line 157
    :cond_4
    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->lastUpdateTime:J

    .line 161
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 163
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    aput-object p1, v0, v5

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/gbase/gameplus/upgradeutil/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 167
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    aput-object p1, v0, v5

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-object v2
.end method

.method public getRequestCallBack()Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    return-object v0
.end method

.method public getState()Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 10

    .line 181
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    if-eq v0, v1, :cond_8

    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    array-length v0, p1

    if-eq v0, v3, :cond_2

    return-void

    .line 202
    :cond_2
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->SUCCESS:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    .line 203
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    aget-object p1, p1, v1

    check-cast p1, Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;

    invoke-virtual {v0, p1}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;->onSuccess(Lcom/gbase/gameplus/upgradeutil/http/ResponseInfo;)V

    goto :goto_0

    .line 196
    :cond_3
    array-length v0, p1

    if-eq v0, v2, :cond_4

    return-void

    .line 197
    :cond_4
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->FAILURE:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    .line 198
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    aget-object v1, p1, v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;->onFailure(Lcom/gbase/gameplus/upgradeutil/exception/HttpException;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_5
    array-length v0, p1

    if-eq v0, v2, :cond_6

    return-void

    .line 189
    :cond_6
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->LOADING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    .line 190
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    aget-object v0, p1, v1

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object p1, p1, v3

    .line 192
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->isUploading:Z

    .line 190
    invoke-virtual/range {v4 .. v9}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;->onLoading(JJZ)V

    goto :goto_0

    .line 184
    :cond_7
    sget-object p1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->STARTED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    .line 185
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;->onStart()V

    :cond_8
    :goto_0
    return-void
.end method

.method public setExpiry(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->expiry:J

    return-void
.end method

.method public setHttpRedirectHandler(Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->httpRedirectHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/HttpRedirectHandler;

    :cond_0
    return-void
.end method

.method public setRequestCallBack(Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    return-void
.end method

.method public updateProgress(JJZ)Z
    .locals 10

    .line 283
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    sget-object v3, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p5, :cond_0

    .line 285
    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 288
    iget-wide v6, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->lastUpdateTime:J

    sub-long v6, v4, v6

    iget-object p5, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->callback:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;

    invoke-virtual {p5}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBack;->getRate()I

    move-result p5

    int-to-long v8, p5

    cmp-long p5, v6, v8

    if-ltz p5, :cond_1

    .line 289
    iput-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->lastUpdateTime:J

    .line 290
    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 294
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;->state:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    sget-object p2, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
