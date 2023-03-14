.class Lcom/reyun/tracking/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/reyun/tracking/a/d;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/a/e;->a:Lcom/reyun/tracking/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/reyun/tracking/a/e;->a:Lcom/reyun/tracking/a/d;

    invoke-static {v1}, Lcom/reyun/tracking/a/d;->b(Lcom/reyun/tracking/a/d;)Lcom/reyun/tracking/a/g;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/reyun/tracking/a/e;->a:Lcom/reyun/tracking/a/d;

    invoke-static {v1}, Lcom/reyun/tracking/a/d;->b(Lcom/reyun/tracking/a/d;)Lcom/reyun/tracking/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/reyun/tracking/a/g;->c()Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/reyun/tracking/a/e;->a:Lcom/reyun/tracking/a/d;

    invoke-static {v4}, Lcom/reyun/tracking/a/d;->c(Lcom/reyun/tracking/a/d;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gyroStartTime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gyroEndTime"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gyroData"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gyroDataEvent"

    invoke-static {v0, v2}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
