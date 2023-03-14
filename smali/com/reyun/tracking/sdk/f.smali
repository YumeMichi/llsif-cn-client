.class final Lcom/reyun/tracking/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/a;->a()V

    sget-object v0, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    invoke-static {v0}, Lcom/reyun/tracking/utils/s;->a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/s;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reyun/tracking/utils/s;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1000()Lcom/reyun/tracking/sdk/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1000()Lcom/reyun/tracking/sdk/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->access$1002(Lcom/reyun/tracking/sdk/u;)Lcom/reyun/tracking/sdk/u;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1100()Lcom/reyun/tracking/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1100()Lcom/reyun/tracking/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/t;->interrupt()V

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1100()Lcom/reyun/tracking/sdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/t;->a()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/reyun/tracking/sdk/Tracking;->access$802(Z)Z

    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->access$1102(Lcom/reyun/tracking/sdk/t;)Lcom/reyun/tracking/sdk/t;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1200()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$1200()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->access$1202(Ljava/util/Timer;)Ljava/util/Timer;

    :cond_2
    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->access$1002(Lcom/reyun/tracking/sdk/u;)Lcom/reyun/tracking/sdk/u;

    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->access$002(Landroid/content/Context;)Landroid/content/Context;

    invoke-static {v1}, Lcom/reyun/tracking/sdk/Tracking;->access$1302(Landroid/app/Application;)Landroid/app/Application;

    return-void
.end method
