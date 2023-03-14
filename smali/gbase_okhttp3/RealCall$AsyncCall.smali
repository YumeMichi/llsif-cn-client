.class final Lgbase_okhttp3/RealCall$AsyncCall;
.super Lgbase_okhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final responseCallback:Lgbase_okhttp3/Callback;

.field final synthetic this$0:Lgbase_okhttp3/RealCall;


# direct methods
.method constructor <init>(Lgbase_okhttp3/RealCall;Lgbase_okhttp3/Callback;)V
    .locals 2

    .line 123
    iput-object p1, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    const/4 v0, 0x1

    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lgbase_okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iput-object p2, p0, Lgbase_okhttp3/RealCall$AsyncCall;->responseCallback:Lgbase_okhttp3/Callback;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    :try_start_0
    iget-object v2, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    invoke-virtual {v2}, Lgbase_okhttp3/RealCall;->getResponseWithInterceptorChain()Lgbase_okhttp3/Response;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    iget-object v3, v3, Lgbase_okhttp3/RealCall;->retryAndFollowUpInterceptor:Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v3}, Lgbase_okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 146
    :try_start_1
    iget-object v1, p0, Lgbase_okhttp3/RealCall$AsyncCall;->responseCallback:Lgbase_okhttp3/Callback;

    iget-object v2, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lgbase_okhttp3/Callback;->onFailure(Lgbase_okhttp3/Call;Ljava/io/IOException;)V

    goto :goto_1

    .line 149
    :cond_0
    iget-object v1, p0, Lgbase_okhttp3/RealCall$AsyncCall;->responseCallback:Lgbase_okhttp3/Callback;

    iget-object v3, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    invoke-interface {v1, v3, v2}, Lgbase_okhttp3/Callback;->onResponse(Lgbase_okhttp3/Call;Lgbase_okhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 154
    :try_start_2
    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    invoke-virtual {v4}, Lgbase_okhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lgbase_okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object v0, p0, Lgbase_okhttp3/RealCall$AsyncCall;->responseCallback:Lgbase_okhttp3/Callback;

    iget-object v2, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    invoke-interface {v0, v2, v1}, Lgbase_okhttp3/Callback;->onFailure(Lgbase_okhttp3/Call;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :goto_1
    iget-object v0, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    iget-object v0, v0, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->dispatcher()Lgbase_okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbase_okhttp3/Dispatcher;->finished(Lgbase_okhttp3/RealCall$AsyncCall;)V

    return-void

    :goto_2
    iget-object v1, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    iget-object v1, v1, Lgbase_okhttp3/RealCall;->client:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lgbase_okhttp3/OkHttpClient;->dispatcher()Lgbase_okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lgbase_okhttp3/Dispatcher;->finished(Lgbase_okhttp3/RealCall$AsyncCall;)V

    throw v0
.end method

.method get()Lgbase_okhttp3/RealCall;
    .locals 1

    .line 137
    iget-object v0, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    iget-object v0, v0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lgbase_okhttp3/Request;
    .locals 1

    .line 133
    iget-object v0, p0, Lgbase_okhttp3/RealCall$AsyncCall;->this$0:Lgbase_okhttp3/RealCall;

    iget-object v0, v0, Lgbase_okhttp3/RealCall;->originalRequest:Lgbase_okhttp3/Request;

    return-object v0
.end method
