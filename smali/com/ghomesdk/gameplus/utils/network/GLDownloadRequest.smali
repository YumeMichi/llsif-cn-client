.class public Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;
.super Ljava/lang/Object;
.source "GLDownloadRequest.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "OkHttpGLDownloadRequest"


# instance fields
.field private file:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->uri:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->file:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;)Ljava/io/File;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->file:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public doRequest()V
    .locals 3

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->uri:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Connection"

    const-string v2, "close"

    .line 85
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;

    invoke-direct {v1, p0}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$3;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method protected onFailure(ILjava/util/Map;)V
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

.method protected onFailureOnUI(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$2;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;ILjava/util/Map;)V

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

    .line 45
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest$1;-><init>(Lcom/ghomesdk/gameplus/utils/network/GLDownloadRequest;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
