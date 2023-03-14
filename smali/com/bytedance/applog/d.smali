.class public Lcom/bytedance/applog/d;
.super Lcom/bytedance/applog/f;
.source ""


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/applog/f;-><init>(Lcom/bytedance/applog/h;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 9

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v1, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/h;->h:Lcom/bytedance/applog/y;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->c()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "header"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "magic_tag"

    const-string v7, "ss_app_log"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "_gen_time"

    invoke-virtual {v5, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 4
    iget-object v2, v2, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/applog/y;->b()Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    invoke-virtual {v7}, Lcom/bytedance/applog/h;->c()Lcom/bytedance/applog/UriConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v2, v3, v6, v7}, Lcom/bytedance/applog/s0;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bytedance/applog/r0;->e:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bytedance/applog/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v6

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/applog/f1;->d(Ljava/lang/String;)[B

    move-result-object v5

    const-string v8, "application/json; charset=utf-8"

    invoke-interface {v6, v2, v5, v8}, Lcom/bytedance/applog/network/INetworkClient;->post(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v5}, Lcom/bytedance/applog/r0;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v5, v3

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_0
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_1

    const-string v2, "message"

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "success"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_2

    const-string v2, "data"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_4

    :cond_2
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/bytedance/applog/x;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/applog/y1;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    xor-int/2addr v1, v7

    sget-boolean v4, Lcom/bytedance/applog/x1;->b:Z

    const-string v5, "getAbConfig "

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v3, v0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {v3, v2}, Lcom/bytedance/applog/x;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/applog/y;->b(Lorg/json/JSONObject;)V

    .line 9
    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/applog/h1;->onRemoteAbConfigGet(ZLorg/json/JSONObject;)V

    return v7

    :cond_4
    return v4
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "abconfiger"

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
    .locals 5

    iget-object v0, p0, Lcom/bytedance/applog/f;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/h;->d:Lcom/bytedance/applog/x;

    .line 2
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v1, "abtest_fetch_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method
