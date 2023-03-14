.class public Lcom/ghomesdk/gameplus/impl/GHomeHttp;
.super Ljava/lang/Object;
.source "GHomeHttp.java"


# static fields
.field private static RAMDOM_KEY:Ljava/lang/String; = ""

.field private static TAG:Ljava/lang/String; = "GHomeHttp"

.field private static TOKEN:Ljava/lang/String; = ""

.field private static requestCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/callback/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static resetkey_byerror_count:I

.field private static resetkey_byuser_count:I

.field private static resetkey_count:I

.field private static shakeHanding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->requestCallback:Ljava/util/List;

    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_count:I

    .line 60
    sput v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byuser_count:I

    .line 61
    sput v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byerror_count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onSuccessResponse(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onShakeHandCallback(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1100()V
    .locals 0

    .line 50
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetSecureKey()V

    return-void
.end method

.method static synthetic access$200(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-static/range {p0 .. p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onFailedResponse(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V
    .locals 0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->handleResponse(ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->sortParamsMap(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->sign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getHttpPostStr(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 0

    .line 50
    invoke-static/range {p0 .. p6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onSuccessResponse(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 0

    .line 50
    invoke-static/range {p0 .. p8}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 50
    sget v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byerror_count:I

    return v0
.end method

.method static synthetic access$904()I
    .locals 1

    .line 50
    sget v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byerror_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byerror_count:I

    return v0
.end method

.method public static cancel(Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/network/Http;->cancel(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkSimulator(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "sensor"

    .line 601
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/16 v0, 0x9

    .line 602
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 604
    sget-object p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    const-string v0, "checkSimulator true"

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 607
    :cond_0
    sget-object p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    const-string v0, "checkSimulator false"

    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static download(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 0

    .line 77
    new-instance p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$1;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p2, p1, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$1;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V

    return-void
.end method

.method public static get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 103
    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 197
    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method public static get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Z)V"
        }
    .end annotation

    .line 165
    invoke-static {p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->sortParamsMap(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getHttpRequestStr(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    if-eqz p0, :cond_1

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v3, p0

    goto :goto_1

    :cond_1
    move-object v3, p2

    .line 174
    :goto_1
    sget-boolean p0, Lcom/ghomesdk/gameplus/config/Sandbox;->used:Z

    if-nez p0, :cond_2

    .line 175
    sget-object p0, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->showUI(Landroid/content/Context;I)V

    .line 177
    :cond_2
    sget-object p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get url = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;

    if-eqz p6, :cond_3

    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$2;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V

    return-void
.end method

.method public static get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 99
    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method public static get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 107
    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method private static getDeviceType(Landroid/content/Context;)I
    .locals 2

    .line 593
    sget v0, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_TYPE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 594
    sget p0, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_TYPE:I

    return p0

    .line 596
    :cond_0
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->checkSimulator(Landroid/content/Context;)Z

    move-result p0

    sput p0, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_TYPE:I

    .line 597
    sget p0, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_TYPE:I

    return p0
.end method

.method private static getHttpPostStr(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 470
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 472
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 481
    :cond_2
    :try_start_0
    invoke-static {p1, p0}, Lcom/ghomesdk/gameplus/utils/security/DESUtil;->des3encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static getHttpRequestStr(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 454
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "X-APP-ID"

    .line 559
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-PLATFORM"

    const-string v2, "0"

    .line 560
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-CHANNEL"

    .line 562
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-APPLICATION-CHANNEL"

    .line 564
    invoke-static {p0}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-TOKEN"

    .line 566
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-APP-VERSION"

    .line 567
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->APP_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-SDK-VERSION"

    .line 568
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->SDK_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-CHANNEL-INFO"

    .line 569
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->CHANNEL_SDK_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-HTTP-ENGINE"

    .line 570
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->GAME_ENGINE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-AREA"

    .line 571
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-PROMOTERID"

    .line 572
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->PROMOTERID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HTTP_X_FLOW_ID"

    .line 573
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->FLOW_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-static {p0}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-DEVICEID"

    .line 575
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-DeviceType"

    .line 576
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getDeviceType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->GROUP_ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "X-GROUPID"

    .line 578
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->GROUP_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "X-GPOP-GUID"

    .line 581
    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->GPOP_GUID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "X-PACKAGE-NAME"

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 586
    sget-object v1, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set headers error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getResetkeyCount()[I
    .locals 3

    const/4 v0, 0x3

    .line 201
    new-array v0, v0, [I

    sget v1, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_count:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byuser_count:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byerror_count:I

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method private static handleResponse(ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 693
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "-10869602"

    if-eqz p2, :cond_2

    .line 694
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    :try_start_0
    invoke-interface {p3}, Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 701
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    .line 712
    invoke-static {p2, v3}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 716
    invoke-interface {p3, p0, p1, p2}, Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;->callback(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    new-instance p0, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;

    const-string p1, "Error format."

    invoke-direct {p0, p1}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/ghomesdk/gameplus/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 718
    sget-object p1, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;->printStackTrace()V

    .line 720
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p0, p1, v0}, Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;->callback(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 695
    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v2, v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p0, p1, v0}, Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;->callback(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static handshake(Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V
    .locals 10

    .line 348
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    const-string v1, "handshake"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 352
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "data"

    const-string v2, "message"

    const-string v3, "code"

    const-string v4, ""

    if-nez v0, :cond_0

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "0"

    .line 354
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"token\" : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-interface {p1, p0}, Lcom/ghomesdk/gameplus/callback/Callback;->callback(Ljava/util/Map;)V

    return-void

    .line 361
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    const-string v5, "shakeHanding"

    invoke-static {v0, v5}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-boolean v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->shakeHanding:Z

    if-eqz v0, :cond_1

    .line 363
    sget-object p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->requestCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 366
    :cond_1
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    const-string v5, "shakeHanding now..."

    invoke-static {v0, v5}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 367
    sput-boolean v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->shakeHanding:Z

    .line 368
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetSecureKey()V

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "1"

    .line 370
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    const-string v1, "handshake getPublicKey"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;

    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getPublickeyUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    move-object v2, v0

    move-object v3, p0

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$6;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V

    return-void

    .line 350
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onFailedCallback(Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Lcom/ghomesdk/gameplus/callback/GetDataCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 635
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p3, p0, v0}, Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;->callback(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 637
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p2, p0, v0}, Lcom/ghomesdk/gameplus/callback/HttpCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 639
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-interface {p4, p2, p0, p1}, Lcom/ghomesdk/gameplus/callback/GetDataCallback;->callback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static onFailedResponse(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Lcom/ghomesdk/gameplus/callback/GetDataCallback;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, ""

    if-eqz p1, :cond_2

    const-string v2, "code"

    .line 613
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 614
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "18"

    .line 615
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    sget v3, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byerror_count:I

    add-int/2addr v3, v0

    sput v3, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byerror_count:I

    .line 617
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetSecureKey()V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "message"

    .line 622
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    .line 624
    invoke-static {p5, v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 626
    :cond_1
    invoke-static {v2, p0, p2, p3, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onFailedCallback(Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    goto :goto_0

    .line 628
    :cond_2
    invoke-static {p5, v1, p2, p3, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onFailedCallback(Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    :goto_0
    return v0
.end method

.method private static onGetResponse(Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 8

    .line 675
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    const-string v1, "onGetResponse"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/JsonUtils;->bindDataToModel(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "-10869602"

    move-object v5, p1

    .line 679
    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onFailedResponse(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p0, "code"

    .line 681
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "0"

    .line 682
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    const-string v0, ""

    .line 684
    invoke-interface {p1, p0, v0, v3}, Lcom/ghomesdk/gameplus/callback/HttpCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "-10869602"

    move-object v5, p1

    .line 687
    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onFailedResponse(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static onShakeHandCallback(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ghomesdk/gameplus/callback/Callback;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 439
    sput-boolean v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->shakeHanding:Z

    .line 440
    invoke-interface {p0, p1}, Lcom/ghomesdk/gameplus/callback/Callback;->callback(Ljava/util/Map;)V

    .line 441
    :goto_0
    sget-object p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->requestCallback:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_1

    .line 442
    sget-object p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->requestCallback:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ghomesdk/gameplus/callback/Callback;

    if-nez p0, :cond_0

    goto :goto_1

    .line 446
    :cond_0
    invoke-interface {p0, p1}, Lcom/ghomesdk/gameplus/callback/Callback;->callback(Ljava/util/Map;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_1
    sget-object p0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->requestCallback:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static onSuccessResponse(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Lcom/ghomesdk/gameplus/callback/GetDataCallback;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 649
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p4, :cond_2

    .line 653
    invoke-static {p0, p1, p3, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->handleResponse(ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 655
    invoke-interface {p5, p0, p1, p2}, Lcom/ghomesdk/gameplus/callback/HttpCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    if-eqz p6, :cond_4

    .line 657
    invoke-interface {p6, p0, p1, p3}, Lcom/ghomesdk/gameplus/callback/GetDataCallback;->callback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static onSuccessResponse(ILjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "code"

    .line 662
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "data"

    .line 663
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 664
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 665
    invoke-static {p0, v2, p1, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->handleResponse(ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 667
    invoke-interface {p3, p0, v2, p1}, Lcom/ghomesdk/gameplus/callback/HttpCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v8, "-10869602"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 670
    invoke-static/range {v3 .. v8}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->onFailedResponse(ZLjava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    .line 111
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method private static post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Z)V"
        }
    .end annotation

    move-object v7, p1

    .line 217
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_0

    .line 219
    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Sandbox;->used:Z

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->showUI(Landroid/content/Context;I)V

    .line 222
    :cond_0
    new-instance v10, Lcom/ghomesdk/gameplus/impl/GHomeHttp$3;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const-string v5, ""

    move-object v0, v10

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move/from16 v6, p7

    move-object v7, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$3;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    invoke-static {v10}, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V

    return-void
.end method

.method public static post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 115
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method private static post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Z)V"
        }
    .end annotation

    .line 207
    invoke-static {p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->sortParamsMap(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 210
    invoke-static {p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postMap2Str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    .line 212
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method public static post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 119
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method public static post(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p2

    .line 123
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method public static post(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v7, p2

    .line 127
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method public static post(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p6

    move v7, p2

    .line 131
    invoke-static/range {v0 .. v7}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method private static postMap2Str(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 537
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->sortParamsMap(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 544
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 546
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 550
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostSecurity url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 146
    invoke-static/range {v2 .. v10}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method public static postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/GetDataCallback;",
            ")V"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostSecurity url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v10, p4

    .line 136
    invoke-static/range {v2 .. v10}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method public static postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostSecurity url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    .line 141
    invoke-static/range {v2 .. v10}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method private static postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Lcom/ghomesdk/gameplus/callback/GetDataCallback;",
            ")V"
        }
    .end annotation

    move-object v10, p1

    .line 285
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostSecurity url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 286
    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Sandbox;->used:Z

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->showUI(Landroid/content/Context;I)V

    .line 289
    :cond_0
    new-instance v11, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;

    move-object v0, v11

    move-object/from16 v1, p4

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p5

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$5;-><init>(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;ILjava/lang/Object;)V

    .line 338
    invoke-static {p1, v11}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->handshake(Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V

    return-void
.end method

.method public static postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostSecurity url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    .line 161
    invoke-static/range {v3 .. v11}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method public static postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/GetDataCallback;",
            ")V"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostSecurity url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v11, p5

    .line 151
    invoke-static/range {v3 .. v11}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method public static postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            ")V"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostSecurity url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    .line 156
    invoke-static/range {v3 .. v11}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;ILcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void
.end method

.method public static postSign(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback<",
            "TT;>;",
            "Lcom/ghomesdk/gameplus/callback/HttpCallback;",
            "Z)V"
        }
    .end annotation

    move-object v7, p1

    .line 251
    sget-object v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_0

    .line 253
    sget-boolean v0, Lcom/ghomesdk/gameplus/config/Sandbox;->used:Z

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->showUI(Landroid/content/Context;I)V

    .line 256
    :cond_0
    new-instance v10, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->getRequestCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    move-object v0, v10

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/ghomesdk/gameplus/impl/GHomeHttp$4;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    invoke-static {v10}, Lcom/ghomesdk/gameplus/utils/GLRequestExecutor;->doAsync(Lcom/ghomesdk/gameplus/utils/network/OkHttpRequestBase;)V

    return-void
.end method

.method public static reset()V
    .locals 1

    .line 72
    sget v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byuser_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_byuser_count:I

    .line 73
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetSecureKey()V

    return-void
.end method

.method private static resetSecureKey()V
    .locals 1

    .line 509
    sget v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->resetkey_count:I

    .line 510
    invoke-static {}, Lcom/ghomesdk/gameplus/utils/RandomUtil;->getRandomKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->RANDOM_KEY:Ljava/lang/String;

    const-string v0, ""

    .line 511
    sput-object v0, Lcom/ghomesdk/gameplus/config/Config;->TOKEN:Ljava/lang/String;

    return-void
.end method

.method public static setTimeout(II)V
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/utils/network/Http;->setTimeout(II)V

    return-void
.end method

.method private static sign(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 515
    invoke-static {p1}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->sortParamsMap(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 522
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 524
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 532
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 533
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/security/MD5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sortParamsMap(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 490
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 497
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 498
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 499
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 500
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
