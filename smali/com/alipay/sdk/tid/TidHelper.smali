.class public Lcom/alipay/sdk/tid/TidHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/sdk/tid/a;)Lcom/alipay/sdk/tid/Tid;
    .locals 4

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/alipay/sdk/tid/a;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/alipay/sdk/tid/Tid;

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/a;->e()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/sdk/tid/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/sys/b;->d()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/alipay/sdk/packet/impl/c;

    invoke-direct {v1}, Lcom/alipay/sdk/packet/impl/c;-><init>()V

    .line 2
    invoke-static {}, Lcom/alipay/sdk/sys/a;->e()Lcom/alipay/sdk/sys/a;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/sdk/packet/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/alipay/sdk/tid/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/a;

    move-result-object v1

    const-string v3, "tid"

    .line 7
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_key"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {p0, v1}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;Lcom/alipay/sdk/tid/a;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static clearTID(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->a()V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->b(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->b(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getTIDValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/sdk/tid/TidHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/Tid;->getTid()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getVirtualImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/alipay/sdk/data/b;->b()Lcom/alipay/sdk/data/b;

    invoke-static {}, Lcom/alipay/sdk/data/b;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVirtualImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/alipay/sdk/data/b;->b()Lcom/alipay/sdk/data/b;

    invoke-static {}, Lcom/alipay/sdk/data/b;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadLocalTid(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/a;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/alipay/sdk/tid/Tid;

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/a;->e()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/tid/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static declared-synchronized loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 4

    const-class v0, Lcom/alipay/sdk/tid/TidHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "mspl"

    const-string v2, "load_create_tid"

    .line 1
    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 9
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/alipay/sdk/tid/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/a;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;Lcom/alipay/sdk/tid/a;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "mspl"

    const-string v1, "load_tid null"

    .line 5
    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static resetTID(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "mspl"

    const-string v1, "reset_tid"

    .line 1
    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 7
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->clearTID(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    invoke-static {v0}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Must be called on worker thread"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
