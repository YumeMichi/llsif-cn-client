.class final Lcom/reyun/tracking/sdk/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/reyun/tracking/utils/v;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "TrackingIO"

    const-string v1, "=======onScreenUnlock======"

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->startHeartBeat(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "TrackingIO"

    const-string v1, "=======onScreenOn======"

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "TrackingIO"

    const-string v1, "=======onScreenOff======"

    invoke-static {v0, v1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->stopHeartBeat()V

    :cond_0
    return-void
.end method
