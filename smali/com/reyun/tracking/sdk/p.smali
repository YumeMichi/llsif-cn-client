.class final Lcom/reyun/tracking/sdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/reyun/tracking/utils/p;


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/p;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    const-string p1, ""

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_0
    check-cast p2, Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p1

    :goto_0
    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    :goto_1
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/reyun/tracking/sdk/p;->a:Ljava/util/Map;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int p2, v0

    iput p2, p1, Landroid/os/Message;->arg1:I

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/reyun/tracking/sdk/p;->a:Ljava/util/Map;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$700()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
