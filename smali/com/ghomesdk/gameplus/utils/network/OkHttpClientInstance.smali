.class public Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;
.super Ljava/lang/Object;
.source "OkHttpClientInstance.java"


# static fields
.field static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x2710

.field static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1388

.field static final DEFAULT_WRITE_TIMEOUT_MILLIS:I = 0x4e20

.field private static final MAX_DISK_CACHE_SIZE:I = 0x3200000

.field private static final MIN_DISK_CACHE_SIZE:I = 0x500000

.field private static instance:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDiskCacheSize(Ljava/io/File;)J
    .locals 7

    const-wide/32 v0, 0x500000

    .line 99
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v5, p0

    mul-long v3, v3, v5

    const-wide/16 v5, 0x32

    .line 102
    div-long v2, v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v2, v0

    :goto_0
    const-wide/32 v4, 0x3200000

    .line 107
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cancelByTag(Ljava/lang/Object;)V
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelByTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkHttpClientInstance"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    .line 27
    sget-object v0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    goto :goto_2

    .line 31
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 32
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 38
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private static createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "okHttpCache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private static defaultOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 69
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 70
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    .line 71
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4e20

    .line 72
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static defaultOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 4

    .line 77
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 78
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->createDefaultCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 79
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    .line 80
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4e20

    .line 81
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/Cache;

    .line 82
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->calculateDiskCacheSize(Ljava/io/File;)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lokhttp3/OkHttpClient;
    .locals 1

    .line 45
    sget-object v0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->defaultOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    .line 49
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 53
    sget-object v0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->defaultOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    .line 57
    :cond_0
    sget-object p0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static setInstance(Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 65
    sput-object p0, Lcom/ghomesdk/gameplus/utils/network/OkHttpClientInstance;->instance:Lokhttp3/OkHttpClient;

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "instance has already been initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
