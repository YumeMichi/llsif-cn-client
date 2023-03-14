.class public Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;
.super Ljava/lang/Object;
.source "GLPostRequest.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;


# static fields
.field public static final POST:Ljava/lang/String; = "post"

.field private static final TAG:Ljava/lang/String; = "OkHttpGLPostRequest"


# instance fields
.field private context:Landroid/content/Context;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private postStr:Ljava/lang/String;

.field private response:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signStr:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->postStr:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->signStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->context:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->response:Ljava/util/Map;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->headers:Ljava/util/Map;

    .line 47
    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->uri:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->postStr:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->signStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->postStr:Ljava/lang/String;

    return-object p0
.end method

.method private getHeaders()Lokhttp3/Headers;
    .locals 5

    .line 150
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->headers:Ljava/util/Map;

    const-string v2, "OkHttpGLPostRequest"

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "add header error"

    .line 159
    invoke-static {v2, v3}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->signStr:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "X-SIGNATURE"

    .line 165
    invoke-virtual {v0, v3, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 168
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headers: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doRequest()V
    .locals 4

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    .line 90
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->postStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 92
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 93
    iget-object v2, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 94
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 96
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 98
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 101
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v3, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;J)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method protected onFailure(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onFailureOnUI(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$2;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSuccess(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onSuccessOnUI(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$1;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
