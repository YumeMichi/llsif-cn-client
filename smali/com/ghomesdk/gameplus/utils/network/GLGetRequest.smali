.class public Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;
.super Ljava/lang/Object;
.source "GLGetRequest.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "OkHttpGLGetRequest"


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

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->uri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->headers:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->uri:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getHeaders()Lokhttp3/Headers;
    .locals 4

    .line 160
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->headers:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doRequest()V
    .locals 4

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 86
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->uri:Ljava/lang/String;

    .line 87
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 89
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;J)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

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

    .line 75
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$2;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;Ljava/util/Map;)V

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

    .line 66
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$1;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
