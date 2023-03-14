.class final Lcom/reyun/tracking/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/reyun/tracking/sdk/a;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/reyun/tracking/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/reyun/tracking/a/b;->b:Lcom/reyun/tracking/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/reyun/tracking/a/c;

    invoke-direct {p1, p0}, Lcom/reyun/tracking/a/c;-><init>(Lcom/reyun/tracking/a/b;)V

    iput-object p1, p0, Lcom/reyun/tracking/a/b;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/a/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/reyun/tracking/a/b;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "scale"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {}, Lcom/reyun/tracking/a/a;->k()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(F)F

    :try_start_1
    invoke-static {}, Lcom/reyun/tracking/a/a;->l()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/a/a;->k()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/reyun/tracking/a/a;->a(F)F

    :try_start_2
    invoke-static {}, Lcom/reyun/tracking/a/a;->l()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/a/a;->k()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/reyun/tracking/a/a;->m()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    invoke-static {}, Lcom/reyun/tracking/a/a;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->b(J)J

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0}, Lcom/reyun/tracking/a/a;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    :catch_2
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/reyun/tracking/a/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/reyun/tracking/a/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/reyun/tracking/a/b;->b:Lcom/reyun/tracking/sdk/a;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, p0, v1, v2}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
