.class public final Lcom/bytedance/applog/AppLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EVENT_V1_CATEGORY:Ljava/lang/String; = "event_v1"

.field public static volatile a:Lcom/bytedance/applog/x;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile b:Lcom/bytedance/applog/y;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile c:Lcom/bytedance/applog/c;

.field public static d:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

.field public static e:Landroid/app/Application;

.field public static volatile f:Z

.field public static g:Lcom/bytedance/applog/h;

.field public static h:Ljava/lang/Integer;

.field public static sLaunchFrom:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "U SHALL NOT PASS!"

    .line 1
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addCommonParams(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    sget-object v1, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v1}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h1;->a(Lcom/bytedance/applog/IDataObserver;)V

    return-void
.end method

.method public static addEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/o1;->a()Lcom/bytedance/applog/o1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/o1;->a(Lcom/bytedance/applog/IEventObserver;)V

    return-void
.end method

.method public static addNetCommonParams(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/bytedance/applog/AppLog;->addNetCommonParams(Landroid/content/Context;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addNetCommonParams(Landroid/content/Context;Ljava/lang/StringBuilder;Z)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "addNetCommonParams no init"

    .line 1
    invoke-static {p1, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/v1;->a()Lcom/bytedance/applog/v1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/v1;->a(Lcom/bytedance/applog/ISessionObserver;)V

    return-void
.end method

.method public static flush()V
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/applog/h;->a([Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v2, v0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {v2}, Lcom/bytedance/applog/x;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, "vid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "val"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    :cond_1
    move-object p0, p1

    :cond_2
    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getAbSdkVersion()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-boolean v1, v0, Lcom/bytedance/applog/y;->a:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v1, "ab_sdk_version"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/applog/x;->b()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAid()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "aid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getClientUdid()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "clientudid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "bd_did"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getEncryptAndCompress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getHeader()Lorg/json/JSONObject;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init come first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "U SHALL NOT PASS!"

    .line 1
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->d:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    return-object v0
.end method

.method public static getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 2
    invoke-static {v0, p0, p1}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHttpMonitorPort()I
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v2, "http_monitor_port"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getIid()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "install_id"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getInitConfig()Lcom/bytedance/applog/InitConfig;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getNetClient()Lcom/bytedance/applog/network/INetworkClient;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenUdid()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "openudid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getSsid()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "ssid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getSsidGroup(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "device_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "install_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getOpenUdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "openudid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getClientUdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientudid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static getSuccRate()I
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v2, "bav_monitor_rate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public static getUdid()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "udid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 2

    sget-wide v0, Lcom/bytedance/applog/m;->m:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static hasStarted()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/applog/AppLog;->f:Z

    return v0
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/applog/InitConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/bytedance/applog/AppLog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getLogger()Lcom/bytedance/applog/ILogger;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bytedance/applog/x1;->a(Landroid/content/Context;Lcom/bytedance/applog/ILogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Inited Begin"

    const/4 v2, 0x0

    .line 1
    :try_start_1
    invoke-static {v1, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    new-instance p0, Lcom/bytedance/applog/x;

    sget-object v1, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    invoke-direct {p0, v1, p1}, Lcom/bytedance/applog/x;-><init>(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    sput-object p0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    new-instance p0, Lcom/bytedance/applog/y;

    sget-object v1, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    sget-object v3, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    invoke-direct {p0, v1, v3}, Lcom/bytedance/applog/y;-><init>(Landroid/content/Context;Lcom/bytedance/applog/x;)V

    sput-object p0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    new-instance p0, Lcom/bytedance/applog/c;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/applog/c;-><init>(Lcom/bytedance/applog/IPicker;)V

    sput-object p0, Lcom/bytedance/applog/AppLog;->c:Lcom/bytedance/applog/c;

    new-instance p0, Lcom/bytedance/applog/h;

    sget-object v1, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    sget-object v3, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/x;

    sget-object v4, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-direct {p0, v1, v3, v4}, Lcom/bytedance/applog/h;-><init>(Landroid/app/Application;Lcom/bytedance/applog/x;Lcom/bytedance/applog/y;)V

    sput-object p0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    sget-object v1, Lcom/bytedance/applog/AppLog;->c:Lcom/bytedance/applog/c;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    const/4 p0, 0x1

    sput p0, Lcom/bytedance/applog/AppLog;->sLaunchFrom:I

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result p0

    sput-boolean p0, Lcom/bytedance/applog/AppLog;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "Inited End"

    .line 3
    :try_start_2
    invoke-static {p0, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static isNewUser()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iget-boolean v0, v0, Lcom/bytedance/applog/y;->i:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNewUserMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/applog/a0;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static manualActivate()Z
    .locals 2

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/h;->a(Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public static onActivityPause()V
    .locals 2

    sget-object v0, Lcom/bytedance/applog/AppLog;->c:Lcom/bytedance/applog/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->c:Lcom/bytedance/applog/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/c;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onActivityResumed(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->c:Lcom/bytedance/applog/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->c:Lcom/bytedance/applog/c;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/c;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 8

    const-string v0, "event_v1"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "event_v1"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/bytedance/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "category and label is empty"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/applog/x0;

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v10, v1

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/applog/x0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/bytedance/applog/z0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/applog/z0;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    const-string v1, "U SHALL NOT PASS!"

    .line 1
    invoke-static {v1, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_1
    :goto_2
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "eventName is empty"

    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lcom/bytedance/applog/z0;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v0, p0, v2, v1}, Lcom/bytedance/applog/z0;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V

    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "both second appid and second app name is empty, return"

    .line 1
    invoke-static {p0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second_app_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "params_for_special"

    const-string v1, "second_app"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "second_appid"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "second_appname"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "product_type"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    const-string p2, "U SHALL NOT PASS!"

    .line 3
    invoke-static {p2, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_2
    :goto_2
    invoke-static {p0, v1}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const-string p1, "both second appid and second app name is empty, return"

    .line 5
    invoke-static {p1, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second_app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "params_for_special"

    const-string v1, "second_app"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "second_appid"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "second_appname"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "product_type"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string p3, "U SHALL NOT PASS!"

    .line 7
    invoke-static {p3, p2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    new-instance p2, Lcom/bytedance/applog/z0;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p1}, Lcom/bytedance/applog/z0;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V

    return-void
.end method

.method public static onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/applog/y0;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/applog/y0;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/u0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "call onEventData get exception: "

    .line 1
    invoke-static {p1, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 p0, 0x0

    const-string p1, "call onEventData with invalid params, return"

    .line 2
    invoke-static {p1, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    instance-of p0, p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/applog/AppLog;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/bytedance/applog/AppLog;->onActivityResumed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putCommonParams(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->e:Landroid/app/Application;

    sget-object v1, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v1}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1, p1, p0}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static registerHeaderCustomCallback(Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V
    .locals 0

    sput-object p0, Lcom/bytedance/applog/AppLog;->d:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    return-void
.end method

.method public static removeAllDataObserver()V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h1;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public static removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h1;->b(Lcom/bytedance/applog/IDataObserver;)V

    return-void
.end method

.method public static removeEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/o1;->a()Lcom/bytedance/applog/o1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/o1;->b(Lcom/bytedance/applog/IEventObserver;)V

    return-void
.end method

.method public static removeHeaderInfo(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/y;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static removeSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/v1;->a()Lcom/bytedance/applog/v1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/v1;->b(Lcom/bytedance/applog/ISessionObserver;)V

    return-void
.end method

.method public static reportPhoneDetailInfo()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->h()Z

    move-result v0

    return v0
.end method

.method public static setAccount(Landroid/accounts/Account;)V
    .locals 2

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 3
    iget-object v0, v0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    check-cast v0, Lcom/bytedance/applog/l1;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/l1;->a(Landroid/accounts/Account;)V

    :cond_0
    return-void
.end method

.method public static setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_2

    .line 1
    iget-object v1, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    const-string v2, "app_language"

    .line 2
    invoke-virtual {v1, v2, p0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 3
    iget-object v1, v1, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    invoke-static {v1, v2, p0}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    iget-object v1, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    const-string v2, "app_region"

    .line 5
    invoke-virtual {v1, v2, p1}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 6
    iget-object v1, v1, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    invoke-static {v1, v2, p1}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr p0, v4

    if-eqz p0, :cond_2

    .line 7
    iget-object p0, v0, Lcom/bytedance/applog/h;->k:Lcom/bytedance/applog/k;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    iget-object p0, v0, Lcom/bytedance/applog/h;->e:Lcom/bytedance/applog/g;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    :cond_2
    return-void
.end method

.method public static setAppTrack(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, "app_track"

    .line 1
    invoke-virtual {v0, v1, p0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->c:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p0}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setEncryptAndCompress(Z)V
    .locals 0

    return-void
.end method

.method public static setEventSenderEnable(Z)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h;->b(Z)V

    :cond_0
    return-void
.end method

.method public static setExternalAbVersion(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/y;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setExtraParams(Lcom/bytedance/applog/IExtraParams;)V
    .locals 0

    sput-object p0, Lcom/bytedance/applog/s0;->a:Lcom/bytedance/applog/IExtraParams;

    return-void
.end method

.method public static setForbidReportPhoneDetailInfo(Z)V
    .locals 2

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    .line 1
    iput-boolean p0, v0, Lcom/bytedance/applog/y;->j:Z

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->h()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const-string v1, "sim_serial_number"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Applog\u8fd8\u672ainit()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setGoogleAid(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, "google_aid"

    .line 1
    invoke-virtual {v0, v1, p0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p0}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/y;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static setHeaderInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/y;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static setHttpMonitorPort(I)V
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bytedance/applog/AppLog;->h:Ljava/lang/Integer;

    return-void
.end method

.method public static setNewUserMode(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/applog/a0;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 0
    .param p0    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-static {p0}, Lcom/bytedance/applog/g2;->a(Lcom/bytedance/applog/IOaidObserver;)V

    return-void
.end method

.method public static setRangersEventVerifyEnable(ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, v0, Lcom/bytedance/applog/h;->t:Lcom/bytedance/applog/j;

    if-nez p0, :cond_1

    new-instance p0, Lcom/bytedance/applog/j;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/applog/j;-><init>(Lcom/bytedance/applog/h;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/bytedance/applog/h;->t:Lcom/bytedance/applog/j;

    iget-object p0, v0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    iget-object p1, v0, Lcom/bytedance/applog/h;->t:Lcom/bytedance/applog/j;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/bytedance/applog/h;->t:Lcom/bytedance/applog/j;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/applog/f;->e:Z

    .line 3
    iget-object p1, v0, Lcom/bytedance/applog/h;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/bytedance/applog/h;->t:Lcom/bytedance/applog/j;

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTouchPoint(Ljava/lang/String;)V
    .locals 1

    const-string v0, "touch_point"

    invoke-static {v0, p0}, Lcom/bytedance/applog/AppLog;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUriRuntime(Lcom/bytedance/applog/UriConfig;)V
    .locals 2

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_0

    const-string v0, "setUriRuntime "

    invoke-static {v0}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    .line 3
    iput-object p0, v0, Lcom/bytedance/applog/h;->o:Lcom/bytedance/applog/UriConfig;

    iget-object p0, v0, Lcom/bytedance/applog/h;->k:Lcom/bytedance/applog/k;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h;->a(Lcom/bytedance/applog/f;)V

    iget-object p0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 4
    iget-object p0, p0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h;->a(Z)Z

    :cond_0
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/applog/AppLog;->b:Lcom/bytedance/applog/y;

    const-string v1, "user_agent"

    .line 1
    invoke-virtual {v0, v1, p0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p0}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUserID(J)V
    .locals 0

    sput-wide p0, Lcom/bytedance/applog/m;->m:J

    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static start()V
    .locals 3

    sget-boolean v0, Lcom/bytedance/applog/AppLog;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/applog/AppLog;->f:Z

    sget-object v1, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    .line 1
    iget-boolean v2, v1, Lcom/bytedance/applog/h;->r:Z

    if-nez v2, :cond_0

    iput-boolean v0, v1, Lcom/bytedance/applog/h;->r:Z

    iget-object v1, v1, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static startSimulator(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lcom/bytedance/applog/h;->s:Lcom/bytedance/applog/f;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v2, v1, Lcom/bytedance/applog/f;->e:Z

    :cond_0
    const-string v1, "com.bytedance.applog.picker.DomSender"

    .line 3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/bytedance/applog/h;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "bd_tracker_d"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/bytedance/applog/h;->A:Lcom/bytedance/applog/h;

    aput-object v4, v3, v6

    aput-object p0, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/f;

    iput-object p0, v0, Lcom/bytedance/applog/h;->s:Lcom/bytedance/applog/f;

    iget-object p0, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    iget-object v1, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/16 v2, 0x9

    iget-object v0, v0, Lcom/bytedance/applog/h;->s:Lcom/bytedance/applog/f;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "U SHALL NOT PASS!"

    .line 4
    invoke-static {v0, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static userProfileSetOnce(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 6

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1
    iget-object v2, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/applog/n0;->a(Lcom/bytedance/applog/h;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method

.method public static userProfileSync(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 6

    sget-object v0, Lcom/bytedance/applog/AppLog;->g:Lcom/bytedance/applog/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1
    iget-object v2, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/applog/n0;->a(Lcom/bytedance/applog/h;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method
