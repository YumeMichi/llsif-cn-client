.class public Lcom/bytedance/applog/i0;
.super Lcom/bytedance/applog/t;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/applog/x;

.field public final g:Lcom/bytedance/applog/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/x;Lcom/bytedance/applog/y;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/t;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/applog/i0;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/applog/i0;->f:Lcom/bytedance/applog/x;

    iput-object p3, p0, Lcom/bytedance/applog/i0;->g:Lcom/bytedance/applog/y;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/i0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/f1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "build_serial"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/applog/i0;->f:Lcom/bytedance/applog/x;

    .line 1
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAliyunUdid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aliyun_uuid"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/i0;->f:Lcom/bytedance/applog/x;

    .line 3
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isMacEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/bytedance/applog/i0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/f1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/applog/i0;->f:Lcom/bytedance/applog/x;

    .line 5
    iget-object v2, v2, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v3, "mac_address"

    .line 6
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "mc"

    if-nez v5, :cond_1

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v3, v0}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/applog/i0;->g:Lcom/bytedance/applog/y;

    .line 7
    iget-object v0, v0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 8
    check-cast v0, Lcom/bytedance/applog/l1;

    invoke-virtual {v0}, Lcom/bytedance/applog/l1;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "udid"

    invoke-static {p1, v2, v0}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/i0;->g:Lcom/bytedance/applog/y;

    .line 9
    iget-object v0, v0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 10
    check-cast v0, Lcom/bytedance/applog/l1;

    invoke-virtual {v0}, Lcom/bytedance/applog/l1;->f()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/f1;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "udid_list"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/applog/i0;->g:Lcom/bytedance/applog/y;

    .line 11
    iget-object v0, v0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 12
    check-cast v0, Lcom/bytedance/applog/l1;

    invoke-virtual {v0}, Lcom/bytedance/applog/l1;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "serial_number"

    invoke-static {p1, v2, v0}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/i0;->g:Lcom/bytedance/applog/y;

    invoke-virtual {v0}, Lcom/bytedance/applog/y;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/applog/i0;->g:Lcom/bytedance/applog/y;

    .line 13
    iget-object v0, v0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 14
    check-cast v0, Lcom/bytedance/applog/l1;

    invoke-virtual {v0}, Lcom/bytedance/applog/l1;->d()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    const-string v5, "sim_serial_number"

    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object p1, p0, Lcom/bytedance/applog/i0;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/applog/a0;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    iget-object p1, p0, Lcom/bytedance/applog/i0;->g:Lcom/bytedance/applog/y;

    .line 15
    iget-object p1, p1, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    .line 16
    check-cast p1, Lcom/bytedance/applog/l1;

    invoke-virtual {p1}, Lcom/bytedance/applog/l1;->g()Ljava/lang/String;

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
