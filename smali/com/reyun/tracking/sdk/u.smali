.class Lcom/reyun/tracking/sdk/u;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reyun/tracking/sdk/u;->c:Ljava/lang/String;

    const-string v0, "homekey"

    iput-object v0, p0, Lcom/reyun/tracking/sdk/u;->a:Ljava/lang/String;

    const-string v0, "recentapps"

    iput-object v0, p0, Lcom/reyun/tracking/sdk/u;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/sdk/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/sdk/u;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/reyun/tracking/sdk/u;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/reyun/tracking/sdk/u;->c:Ljava/lang/String;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->isAppOnForeground()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "TrackingIO"

    if-eqz p2, :cond_0

    const-string p1, "=========== pressed home button ==========="

    invoke-static {v0, p1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->stopHeartBeat()V

    goto :goto_0

    :cond_0
    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "=========== long pressed home button ==========="

    invoke-static {v0, p1}, Lcom/reyun/tracking/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
