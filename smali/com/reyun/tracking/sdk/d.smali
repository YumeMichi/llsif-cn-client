.class final Lcom/reyun/tracking/sdk/d;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tracking_interval"

    const-string v4, "interval"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/reyun/tracking/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_default_"

    const-string v3, "tracking_install"

    invoke-static {v0, v3, v1, v2}, Lcom/reyun/tracking/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TrackingIO"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "installed"

    invoke-static {v0, v3, v2, v4}, Lcom/reyun/tracking/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "============send install event========="

    invoke-static {v1, v0}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "install"

    const-string v4, "unknown"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/reyun/tracking/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/reyun/tracking/a/a;->a(Ljava/util/Map;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_4

    const/4 v6, 0x3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Ljava/util/Map;

    const-string v2, "install"

    const-string v3, "install"

    const-string v5, "receive/tkio/install"

    invoke-static/range {v2 .. v7}, Lcom/reyun/tracking/sdk/Tracking;->access$300(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string v0, "setStartupInternal"

    invoke-static {v1, v0}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->access$402(Z)Z

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/reyun/tracking/sdk/Tracking;->setStartupInternal(Ljava/util/Map;)V

    :cond_4
    :goto_1
    return-void
.end method
