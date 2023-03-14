.class public Lcom/bytedance/applog/n0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[I

.field public static final d:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "region"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "os"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "package"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "app_version"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "sdk_version"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "os_version"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "device_model"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "resolution"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "language"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "timezone"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "access"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "display_name"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "channel"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, "carrier"

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const-string v5, "app_language"

    aput-object v5, v0, v4

    const/16 v4, 0x10

    const-string v5, "app_region"

    aput-object v5, v0, v4

    const/16 v4, 0x11

    const-string v5, "tz_name"

    aput-object v5, v0, v4

    const/16 v4, 0x12

    const-string v5, "tz_offset"

    aput-object v5, v0, v4

    const/16 v4, 0x13

    const-string v5, "install_id"

    aput-object v5, v0, v4

    const/16 v4, 0x14

    const-string v5, "openudid"

    aput-object v5, v0, v4

    const/16 v4, 0x15

    const-string v5, "mcc_mnc"

    aput-object v5, v0, v4

    const/16 v4, 0x16

    const-string v5, "rom"

    aput-object v5, v0, v4

    const/16 v4, 0x17

    const-string v5, "manifest_version_code"

    aput-object v5, v0, v4

    const/16 v4, 0x18

    const-string v5, "device_manufacturer"

    aput-object v5, v0, v4

    const/16 v4, 0x19

    const-string v5, "clientudid"

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    const-string v5, "sig_hash"

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    const-string v5, "display_density"

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    const-string v5, "os_api"

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    const-string v5, "update_version_code"

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    const-string v5, "density_dpi"

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    const-string v5, "version_code"

    aput-object v5, v0, v4

    const/16 v4, 0x20

    const-string v5, "sim_serial_number"

    aput-object v5, v0, v4

    const/16 v4, 0x21

    const-string v5, "release_build"

    aput-object v5, v0, v4

    const/16 v4, 0x22

    const-string v5, "udid"

    aput-object v5, v0, v4

    const/16 v4, 0x23

    const-string v5, "cpu_abi"

    aput-object v5, v0, v4

    const/16 v4, 0x24

    const-string v5, "google_aid"

    aput-object v5, v0, v4

    sput-object v0, Lcom/bytedance/applog/n0;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "setOnce"

    aput-object v4, v0, v1

    const-string v1, "synchronize"

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/applog/n0;->b:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/applog/n0;->c:[I

    new-array v0, v3, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bytedance/applog/n0;->d:[J

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static a(Lcom/bytedance/applog/h;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V
    .locals 20

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "ssid"

    const-string v6, "user_id"

    const-string v7, "device_id"

    const-string v0, "tz_offset"

    const-string v8, "sdk_version"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v14, Lcom/bytedance/applog/n0;->d:[J

    aget-wide v15, v14, v1

    sub-long/2addr v12, v15

    const-wide/32 v14, 0xea60

    cmp-long v16, v12, v14

    if-lez v16, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v13, Lcom/bytedance/applog/n0;->c:[I

    aget v13, v13, v1

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    if-eq v13, v14, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exec "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v12, :cond_4

    if-eqz v3, :cond_2

    const/4 v0, 0x4

    invoke-interface {v3, v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v13, 0x1

    :cond_4
    if-eqz v13, :cond_8

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v16, v12, v10

    sget-object v10, Lcom/bytedance/applog/n0;->b:[Ljava/lang/String;

    aget-object v10, v10, v1

    aput-object v10, v12, v11

    const-string v10, "/service/api/v3/userprofile/%s/%s"

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "header"

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getHeader()Lorg/json/JSONObject;

    move-result-object v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    sget-object v14, Lcom/bytedance/applog/n0;->a:[Ljava/lang/String;

    invoke-direct {v13, v12, v14}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :goto_2
    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "profile"

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v0, "user"

    .line 4
    :try_start_3
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getHeader()Lorg/json/JSONObject;

    move-result-object v8

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    .line 6
    new-instance v0, Lcom/bytedance/applog/n0$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/applog/n0$a;-><init>(ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V

    new-instance v1, Lcom/bytedance/applog/q0;

    move-object v14, v1

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v19}, Lcom/bytedance/applog/q0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/content/Context;)V

    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_6

    const-string v0, "U SHALL NOT PASS!"

    .line 7
    invoke-static {v0, v9}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_6
    invoke-virtual {v1}, Lcom/bytedance/applog/q0;->run()V

    :goto_4
    return-void

    :cond_7
    if-eqz v3, :cond_9

    const/4 v0, 0x3

    invoke-interface {v3, v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onFail(I)V

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface/range {p3 .. p3}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    :cond_9
    :goto_5
    return-void
.end method
