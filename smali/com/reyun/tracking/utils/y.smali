.class public Lcom/reyun/tracking/utils/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/reyun/tracking/utils/p;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;JLjava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/reyun/tracking/utils/y;->c:J

    iput-object p2, p0, Lcom/reyun/tracking/utils/y;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/reyun/tracking/utils/y;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/reyun/tracking/utils/y;->c:J

    iput-object p5, p0, Lcom/reyun/tracking/utils/y;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/reyun/tracking/utils/y;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/reyun/tracking/utils/y;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appid"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "create_timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/reyun/tracking/utils/z;

    invoke-direct {v1, p0}, Lcom/reyun/tracking/utils/z;-><init>(Lcom/reyun/tracking/utils/y;)V

    sget-boolean v2, Lcom/reyun/tracking/a/i;->d:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1a7f

    const-string v3, "slog.trackingio.com"

    invoke-static {v3, v2}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;I)Lcom/reyun/tracking/utils/w;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/reyun/tracking/utils/ab;

    const-string v4, "dpquery"

    invoke-direct {v3, v1, v4}, Lcom/reyun/tracking/utils/ab;-><init>(Lcom/reyun/tracking/utils/p;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0, v3}, Lcom/reyun/tracking/utils/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://link.trackingio.com/dpquery"

    const-string v3, "application/json"

    invoke-static {v2, v3, v0, v1}, Lcom/reyun/tracking/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/p;)Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/reyun/tracking/utils/q;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reyun/tracking/utils/q;->a(Ljava/lang/Boolean;)V

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/reyun/tracking/utils/q;->a(Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reyun/tracking/utils/q;->b(Ljava/lang/Integer;)V

    :goto_1
    sget-object v1, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v1}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Lcom/reyun/tracking/utils/aa;

    invoke-direct {v0, p0}, Lcom/reyun/tracking/utils/aa;-><init>(Lcom/reyun/tracking/utils/y;)V

    sget-object v1, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v1}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/reyun/tracking/sdk/a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lcom/reyun/tracking/utils/y;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/reyun/tracking/a/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "========Request SUCCESS======== event["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/reyun/tracking/utils/y;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tracking"

    invoke-static {p2, p1}, Lcom/reyun/tracking/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/reyun/tracking/utils/y;->b:Ljava/lang/String;

    const-string p2, "install"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/reyun/tracking/sdk/Tracking;->setIsInstallSent(Z)V

    iget-object p1, p0, Lcom/reyun/tracking/utils/y;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/reyun/tracking/sdk/Tracking;->setStartupInternal(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/reyun/tracking/utils/y;->b()V

    invoke-direct {p0}, Lcom/reyun/tracking/utils/y;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/reyun/tracking/utils/y;->b:Ljava/lang/String;

    const-string p2, "batch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    iget-wide p1, p0, Lcom/reyun/tracking/utils/y;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/reyun/tracking/utils/y;->a:Landroid/content/Context;

    sget-object p2, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {p1, p2}, Lcom/reyun/tracking/utils/h;->a(Landroid/content/Context;Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/h;

    move-result-object p1

    iget-wide v0, p0, Lcom/reyun/tracking/utils/y;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reyun/tracking/utils/h;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/reyun/tracking/utils/y;->a:Landroid/content/Context;

    sget-object p2, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {p1, p2}, Lcom/reyun/tracking/utils/h;->a(Landroid/content/Context;Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/h;

    move-result-object p1

    iget-wide v0, p0, Lcom/reyun/tracking/utils/y;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/reyun/tracking/utils/h;->b(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/reyun/tracking/utils/y;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/reyun/tracking/a/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "********Request FAILED******** event["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/reyun/tracking/utils/y;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tracking"

    invoke-static {p2, p1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
