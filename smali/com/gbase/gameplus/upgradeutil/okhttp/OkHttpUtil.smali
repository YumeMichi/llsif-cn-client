.class public Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;
    }
.end annotation


# static fields
.field private static final CONTENT_DEFULT:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final CONTENT_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_STRING:Ljava/lang/String; = "text/plain"

.field private static logger:Lorg/apache/log4j/Logger;

.field private static mInstance:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

.field private static mOkHttpClient:Lgbase_okhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->logger:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lgbase_okhttp3/OkHttpClient;

    invoke-direct {v0}, Lgbase_okhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->mOkHttpClient:Lgbase_okhttp3/OkHttpClient;

    return-void
.end method

.method public static getInstance()Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;
    .locals 2

    .line 48
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->mInstance:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->mInstance:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    invoke-direct {v1}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;-><init>()V

    sput-object v1, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->mInstance:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->mInstance:Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;

    return-object v0
.end method


# virtual methods
.method public sendSubmitAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 99
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->mOkHttpClient:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;

    invoke-direct {v1}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;-><init>()V

    .line 100
    invoke-virtual {v0, v1}, Lgbase_okhttp3/OkHttpClient$Builder;->addInterceptor(Lgbase_okhttp3/Interceptor;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object v0

    .line 105
    new-instance v1, Lgbase_okhttp3/FormBody$Builder;

    invoke-direct {v1}, Lgbase_okhttp3/FormBody$Builder;-><init>()V

    const-string v2, "code"

    .line 106
    invoke-virtual {v1, v2, p2}, Lgbase_okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/FormBody$Builder;

    move-result-object p2

    const-string v1, "info"

    .line 107
    invoke-virtual {p2, v1, p3}, Lgbase_okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/FormBody$Builder;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Lgbase_okhttp3/FormBody$Builder;->build()Lgbase_okhttp3/FormBody;

    move-result-object p2

    .line 110
    new-instance p3, Lgbase_okhttp3/Request$Builder;

    invoke-direct {p3}, Lgbase_okhttp3/Request$Builder;-><init>()V

    .line 111
    invoke-virtual {p3, p1}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1, p2}, Lgbase_okhttp3/Request$Builder;->post(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$1;

    invoke-direct {p2, p0}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$1;-><init>(Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;)V

    invoke-interface {p1, p2}, Lgbase_okhttp3/Call;->enqueue(Lgbase_okhttp3/Callback;)V

    return-void
.end method

.method public sendSubmitSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 64
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil;->mOkHttpClient:Lgbase_okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient;->newBuilder()Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;

    invoke-direct {v1}, Lcom/gbase/gameplus/upgradeutil/okhttp/OkHttpUtil$GzipRequestInterceptor;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Lgbase_okhttp3/OkHttpClient$Builder;->addInterceptor(Lgbase_okhttp3/Interceptor;)Lgbase_okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lgbase_okhttp3/OkHttpClient$Builder;->build()Lgbase_okhttp3/OkHttpClient;

    move-result-object v0

    .line 70
    new-instance v1, Lgbase_okhttp3/FormBody$Builder;

    invoke-direct {v1}, Lgbase_okhttp3/FormBody$Builder;-><init>()V

    const-string v2, "code"

    .line 71
    invoke-virtual {v1, v2, p2}, Lgbase_okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/FormBody$Builder;

    move-result-object p2

    const-string v1, "info"

    .line 72
    invoke-virtual {p2, v1, p3}, Lgbase_okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/FormBody$Builder;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Lgbase_okhttp3/FormBody$Builder;->build()Lgbase_okhttp3/FormBody;

    move-result-object p2

    .line 75
    new-instance p3, Lgbase_okhttp3/Request$Builder;

    invoke-direct {p3}, Lgbase_okhttp3/Request$Builder;-><init>()V

    .line 76
    invoke-virtual {p3, p1}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p2}, Lgbase_okhttp3/Request$Builder;->post(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object p1

    .line 83
    :try_start_0
    invoke-virtual {v0, p1}, Lgbase_okhttp3/OkHttpClient;->newCall(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lgbase_okhttp3/Call;->execute()Lgbase_okhttp3/Response;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->body()Lgbase_okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lgbase_okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
