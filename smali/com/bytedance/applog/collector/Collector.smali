.class public Lcom/bytedance/applog/collector/Collector;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "K_DATA"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    if-lez p2, :cond_1

    .line 1
    sget-object p2, Lcom/bytedance/applog/h;->A:Lcom/bytedance/applog/h;

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/applog/s;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p2, Lcom/bytedance/applog/h;->p:Landroid/os/Handler;

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string p2, "U SHALL NOT PASS!"

    .line 2
    invoke-static {p2, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
