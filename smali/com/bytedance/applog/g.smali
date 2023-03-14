.class public Lcom/bytedance/applog/g;
.super Lcom/bytedance/applog/f;
.source ""


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v1, "app_log_last_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/applog/f;-><init>(Lcom/bytedance/applog/h;J)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v2, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 2
    invoke-virtual {v2}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2}, Lcom/bytedance/applog/y;->c()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    if-eqz v0, :cond_1f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "magic_tag"

    const-string v6, "ss_app_log"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "header"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v0, "_gen_time"

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 3
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 4
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const-string v0, "event_filter"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    :try_start_0
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v8

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    const/16 v10, 0x80

    invoke-virtual {v8, v10, v9}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v8}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    invoke-interface {v8}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/applog/f1;->a([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4

    const/16 v8, 0x8

    new-array v8, v8, [B

    invoke-virtual {v9, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v8}, Lcom/bytedance/applog/f1;->a([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v6

    aget-object v8, v0, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    aget-object v8, v0, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1

    aget-object v8, v0, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    aget-object v8, v0, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0x10

    if-ne v8, v9, :cond_1

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    aget-object v8, v0, v4

    const-string v9, "key"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    aget-object v0, v0, v6

    const-string v8, "iv"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 8
    iget-object v0, v0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 9
    invoke-virtual {v2}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v10}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, v9, v6}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/bytedance/applog/r0;->e:[Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/bytedance/applog/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-static {}, Lcom/bytedance/applog/r0;->a()Ljava/util/HashMap;

    move-result-object v9

    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/f1;->d(Ljava/lang/String;)[B

    move-result-object v10

    const-string v0, "key"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "iv"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_8

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v12

    invoke-interface {v12, v8, v10, v9}, Lcom/bytedance/applog/network/INetworkClient;->postStream(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v12, :cond_4

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_5

    :cond_4
    :try_start_2
    const-string v13, "AES/CBC/PKCS7PADDING"

    .line 11
    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    new-array v4, v15, [B

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "AES"

    .line 13
    invoke-direct {v14, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    new-array v6, v4, [B

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 15
    :cond_6
    invoke-direct {v0, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {v13, v3, v14, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v13, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_7

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcom/bytedance/applog/f1;->b([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    move-object v7, v0

    goto :goto_5

    :cond_7
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    if-nez v11, :cond_9

    :try_start_4
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v0

    invoke-interface {v0, v8, v10, v9}, Lcom/bytedance/applog/network/INetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    if-eqz v7, :cond_a

    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-static {v3}, Lcom/bytedance/applog/r0;->a(Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v7, v3

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v7

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_b

    const-string v0, ""

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ss_app_log"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_c

    const-string v0, "config"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    .line 17
    :goto_b
    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 18
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 19
    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v3

    .line 20
    iget-object v4, v0, Lcom/bytedance/applog/x;->h:Lorg/json/JSONObject;

    .line 21
    invoke-static {v7, v4}, Lcom/bytedance/applog/y1;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4, v7}, Lcom/bytedance/applog/h1;->onRemoteConfigGet(ZLorg/json/JSONObject;)V

    if-eqz v7, :cond_1f

    const/4 v3, -0x1

    const-string v4, "forbid_report_phone_detail_info"

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_e

    if-lez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_c

    :cond_d
    const/4 v3, 0x0

    :goto_c
    invoke-static {v3}, Lcom/bytedance/applog/AppLog;->setForbidReportPhoneDetailInfo(Z)V

    .line 22
    :cond_e
    sget-boolean v3, Lcom/bytedance/applog/x1;->b:Z

    if-eqz v3, :cond_f

    const-string v3, "setConfig, "

    invoke-static {v3}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    iput-object v7, v0, Lcom/bytedance/applog/x;->h:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "session_interval"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v9, v10

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x3e8

    const-wide/32 v16, 0x93a80

    cmp-long v15, v9, v11

    if-lez v15, :cond_10

    cmp-long v11, v9, v16

    if-gtz v11, :cond_10

    mul-long v9, v9, v13

    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    :cond_10
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_d
    const-string v8, "batch_event_interval"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v9, v10

    const-wide/16 v11, 0x0

    cmp-long v15, v9, v11

    if-lez v15, :cond_11

    cmp-long v11, v9, v16

    if-gtz v11, :cond_11

    mul-long v9, v9, v13

    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    :cond_11
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_e
    const-string v8, "send_launch_timely"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_12

    int-to-long v11, v10

    cmp-long v9, v11, v16

    if-gtz v9, :cond_12

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    :cond_12
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_f
    const-string v8, "abtest_fetch_interval"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v9, v10

    const-wide/16 v11, 0x14

    cmp-long v15, v9, v11

    if-lez v15, :cond_13

    cmp-long v11, v9, v16

    if-gtz v11, :cond_13

    mul-long v9, v9, v13

    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    :cond_13
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    :goto_10
    iget-object v8, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v8}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    move-result v8

    const-string v9, "bav_log_collect"

    .line 24
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_14
    const/4 v10, 0x1

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    :goto_11
    iput v8, v0, Lcom/bytedance/applog/x;->l:I

    const-string v8, "bav_ab_config"

    const/4 v9, 0x0

    .line 26
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_12

    :cond_15
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_12
    const-string v8, "real_time_events"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_16

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_13

    :cond_16
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_13
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/bytedance/applog/x;->k:Ljava/util/HashSet;

    const-string v8, "bav_monitor_rate"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_17

    const/16 v11, 0x64

    if-gt v10, v11, :cond_17

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    :cond_17
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_14
    const-string v8, "http_monitor_port"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_18

    const-string v9, "http_monitor_port"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_18
    const-string v8, "app_log_last_config_time"

    invoke-interface {v3, v8, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/4 v5, -0x1

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_1a

    if-lez v5, :cond_19

    const/4 v5, 0x1

    goto :goto_15

    :cond_19
    const/4 v5, 0x0

    :goto_15
    const-string v6, "orbid_report_phone_detail_info"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    const-wide/16 v5, 0x5460

    const-string v8, "fetch_interval"

    invoke-virtual {v7, v8, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    mul-long v5, v5, v13

    const-wide/32 v8, 0x1b7740

    cmp-long v10, v5, v8

    if-ltz v10, :cond_1b

    const-wide/32 v8, 0xa4cb800

    cmp-long v10, v5, v8

    if-lez v10, :cond_1c

    :cond_1b
    const-wide/32 v5, 0x1499700

    :cond_1c
    const-string v8, "fetch_interval"

    invoke-interface {v3, v8, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    .line 28
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    iput-boolean v0, v2, Lcom/bytedance/applog/y;->j:Z

    invoke-virtual {v2}, Lcom/bytedance/applog/y;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "sim_serial_number"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 30
    :cond_1d
    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 31
    iget-object v2, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/bytedance/applog/h;->i:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 33
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 34
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 36
    iget-object v2, v0, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 37
    invoke-static {v2, v7}, Lcom/bytedance/applog/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/bytedance/applog/o;

    move-result-object v2

    .line 38
    iput-object v2, v0, Lcom/bytedance/applog/h;->y:Lcom/bytedance/applog/o;

    :cond_1e
    const/4 v2, 0x1

    return v2

    :cond_1f
    const/4 v2, 0x0

    return v2
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "configer"

    return-object v0
.end method

.method public e()[J
    .locals 1

    sget-object v0, Lcom/bytedance/applog/k;->g:[J

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v1, "fetch_interval"

    const-wide/32 v2, 0x1499700

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
