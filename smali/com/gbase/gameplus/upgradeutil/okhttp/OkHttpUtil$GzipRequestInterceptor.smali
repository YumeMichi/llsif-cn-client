.class Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"

# interfaces
.implements Lgbase_okhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GzipRequestInterceptor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gzip(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/RequestBody;
    .locals 1

    .line 150
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor$1;

    invoke-direct {v0, p0, p1}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor$1;-><init>(Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;Lgbase_okhttp3/RequestBody;)V

    return-object v0
.end method


# virtual methods
.method public intercept(Lgbase_okhttp3/Interceptor$Chain;)Lgbase_okhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Lgbase_okhttp3/Interceptor$Chain;->request()Lgbase_okhttp3/Request;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0}, Lgbase_okhttp3/Request;->newBuilder()Lgbase_okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "gzip"

    .line 143
    invoke-virtual {v2, v1, v3}, Lgbase_okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->body()Lgbase_okhttp3/RequestBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;->gzip(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v0

    .line 146
    invoke-interface {p1, v0}, Lgbase_okhttp3/Interceptor$Chain;->proceed(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 139
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Lgbase_okhttp3/Interceptor$Chain;->proceed(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
