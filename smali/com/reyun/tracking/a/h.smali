.class public Lcom/reyun/tracking/a/h;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String; = "unknown"

.field static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mqBRboGZkQPcAkyk"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "unknown"

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_app_version"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "_campaignid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p3, "_ryosversion"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p3, "_rydevicetype"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string p3, "_ryandroid8version"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_carrier"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_pkgname"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/reyun/tracking/a/i;->b:Ljava/lang/String;

    const-string p3, "_lib_version"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p3, "_model"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->j(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "table"

    goto :goto_0

    :cond_0
    const-string p2, "phone"

    :goto_0
    const-string p3, "_istablet"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/reyun/tracking/a/i;->c:Ljava/lang/String;

    const-string p3, "_ryos"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_imei"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/reyun/tracking/a/i;->c:Ljava/lang/String;

    const-string p3, "_lib"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/reyun/tracking/a/a;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_tz"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p3, "_manufacturer"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p0}, Lcom/reyun/tracking/a/h;->d(Landroid/content/Context;)J

    move-result-wide v0

    add-long/2addr p2, v0

    const-string v0, "_create_timestamp"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_resolution"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_androidid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_network_type"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_deviceid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/reyun/tracking/a/a;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "dev_type"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getsCyid()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getsCyid()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_cyid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/reyun/tracking/a/a;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_ipv6"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_oaid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean p2, Lcom/reyun/tracking/a/h;->b:Z

    const-string p3, "_oaid_limited"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_imei2"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_meid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->l(Landroid/content/Context;)I

    move-result p2

    const-string p3, "_screen_brightness"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->m(Landroid/content/Context;)I

    move-result p2

    const-string p3, "_audio_volume"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_ucid"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/reyun/tracking/a/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "_ukid"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "who"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "what"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/reyun/tracking/a/h;->d(Landroid/content/Context;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/reyun/tracking/a/a;->a(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "when"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, p2, p4, p3}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "context"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 0

    sput-object p0, Lcom/reyun/tracking/a/h;->a:Ljava/lang/String;

    sput-boolean p1, Lcom/reyun/tracking/a/h;->b:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/reyun/tracking/a/h;->d(Landroid/content/Context;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "1tddpn2gj8wdu"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "unknown"

    :cond_0
    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getUploadMac()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "_mac"

    invoke-static {p1}, Lcom/reyun/tracking/a/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "tracking_device_id_cache"

    const-string v1, "device_id"

    invoke-static {p0, v0, v1}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id_type"

    invoke-static {p0, v0, v2}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "oaid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sput-object v1, Lcom/reyun/tracking/a/h;->a:Ljava/lang/String;

    return-object v1

    :cond_0
    sget-object p0, Lcom/reyun/tracking/a/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "tracking_interval"

    const-string v3, "interval"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/reyun/tracking/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "unknown"

    const-string v2, "mac"

    const-string v3, "xml_mac"

    if-eqz v0, :cond_1

    invoke-static {p0, v3, v2, v1}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    sget-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/reyun/tracking/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    invoke-static {p0, v3, v2, v0}, Lcom/reyun/tracking/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_1
    sget-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/reyun/tracking/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    const-string v4, "02:00:00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/reyun/tracking/a/a;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reyun/tracking/a/h;->c:Ljava/lang/String;

    goto :goto_0
.end method
