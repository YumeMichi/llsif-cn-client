.class public Lcom/bytedance/applog/s0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/bytedance/applog/IExtraParams;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ab_version"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "device_brand"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v6, "language"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v8, "os_api"

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const-string v10, "resolution"

    const/4 v11, 0x4

    aput-object v10, v1, v11

    const-string v12, "google_aid"

    const/4 v13, 0x5

    aput-object v12, v1, v13

    const-string v14, "carrier"

    const/4 v15, 0x6

    aput-object v14, v1, v15

    const/16 v16, 0x7

    const-string v17, "install_id"

    aput-object v17, v1, v16

    const/16 v16, 0x8

    const-string v17, "app_name"

    aput-object v17, v1, v16

    const/16 v16, 0x9

    const-string v17, "app_version"

    aput-object v17, v1, v16

    const/16 v16, 0xa

    const-string v17, "device_model"

    aput-object v17, v1, v16

    const/16 v16, 0xb

    const-string v17, "density_dpi"

    aput-object v17, v1, v16

    const/16 v16, 0xc

    const-string v17, "mcc_mnc"

    aput-object v17, v1, v16

    const/16 v16, 0xd

    const-string v17, "sim_region"

    aput-object v17, v1, v16

    const/16 v16, 0xe

    const-string v17, "device_id"

    aput-object v17, v1, v16

    const/16 v16, 0xf

    const-string v17, "openudid"

    aput-object v17, v1, v16

    const/16 v16, 0x10

    const-string v17, "clientudid"

    aput-object v17, v1, v16

    const/16 v16, 0x11

    const-string v17, "aid"

    aput-object v17, v1, v16

    const/16 v16, 0x12

    const-string v17, "bd_did"

    aput-object v17, v1, v16

    const/16 v16, 0x13

    const-string v17, "sdk_version_code"

    aput-object v17, v1, v16

    sput-object v1, Lcom/bytedance/applog/s0;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    const/4 v1, 0x7

    const-string v2, "iid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "app_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "version_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "device_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dpi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mcc_mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sim_region"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "openudid"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "clientudid"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bd_did"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sdk_version_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/s0;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    move-object p0, p2

    :cond_2
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/bytedance/applog/s0;->b:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p0, p1, p3, v1}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/util/Map;)V

    const/16 p0, 0x3f

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "UTF-8"

    .line 1
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/bytedance/applog/y1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-static {p3, p0}, Lcom/bytedance/applog/y1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, ""

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "&"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/bytedance/applog/s0;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    const-string v3, "os_api"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/bytedance/applog/s0;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "density_dpi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/bytedance/applog/s0;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "sdk_version_code"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/bytedance/applog/s0;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/bytedance/applog/s0;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v2, Lcom/bytedance/applog/s0;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/bytedance/applog/s0;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "mc"

    .line 3
    invoke-static {p1, v1, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "mac_address"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "udid"

    invoke-static {p1, v1, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "uuid"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "build_serial"

    invoke-static {p1, v1, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "aliyun_uuid"

    invoke-static {p1, v1, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_7
    :try_start_0
    sget-object v1, Lcom/bytedance/applog/s0;->a:Lcom/bytedance/applog/IExtraParams;

    if-nez v1, :cond_8

    move-object v1, v4

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/bytedance/applog/s0;->a:Lcom/bytedance/applog/IExtraParams;

    invoke-interface {v1}, Lcom/bytedance/applog/IExtraParams;->getExtraParams()Ljava/util/HashMap;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "U SHALL NOT PASS!"

    .line 5
    invoke-static {v2, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    if-eqz p2, :cond_b

    const-string p2, "ssmix"

    const-string v1, "a"

    .line 6
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {p0}, Lcom/bytedance/applog/a2;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "ac"

    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string p0, ""

    const-string p2, "tweaked_channel"

    invoke-static {p2, p0}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "channel"

    if-eqz v1, :cond_d

    invoke-static {v2, p0}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string p0, "os_version"

    invoke-static {p1, p0, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_f

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_f
    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p2, "_rticket"

    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "device_platform"

    const-string p2, "android"

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, "ab_version"

    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "version_code"

    invoke-static {v0, p2}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p0, :cond_11

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "manifest_version_code"

    invoke-static {v0, p2}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p0, :cond_12

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "update_version_code"

    invoke-static {v0, p2}, Lcom/bytedance/applog/AppLog;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p0, :cond_13

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string p0, "cdid"

    invoke-static {p1, p0, v4}, Lcom/bytedance/applog/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public static a(Lcom/bytedance/applog/h;Lorg/json/JSONObject;Z)[Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getRealUris()[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    move-result-object p2

    :goto_0
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    aput-object v4, v1, v3

    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v3

    const-string v6, "?tt_data=a"

    invoke-static {v4, v5, v6}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 7
    :cond_1
    iget-object v4, p0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v4, p1, v5, v6}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v4, v1, v3

    sget-object v5, Lcom/bytedance/applog/r0;->d:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/bytedance/applog/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method
