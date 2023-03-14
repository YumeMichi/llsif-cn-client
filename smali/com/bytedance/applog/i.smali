.class public Lcom/bytedance/applog/i;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static b:Lcom/bytedance/applog/a2$a;

.field public static c:J

.field public static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final a:Lcom/bytedance/applog/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/bytedance/applog/a2$a;->b:Lcom/bytedance/applog/a2$a;

    sput-object v0, Lcom/bytedance/applog/i;->b:Lcom/bytedance/applog/a2$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/applog/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/applog/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/i;->a:Lcom/bytedance/applog/h;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    const-string v0, "U SHALL NOT PASS!"

    sget-wide v1, Lcom/bytedance/applog/i;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/applog/i;->a:Lcom/bytedance/applog/h;

    .line 1
    iget-object v1, v1, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 2
    invoke-static {v1}, Lcom/bytedance/applog/a2;->b(Landroid/content/Context;)Lcom/bytedance/applog/a2$a;

    move-result-object v1

    sput-object v1, Lcom/bytedance/applog/i;->b:Lcom/bytedance/applog/a2$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/applog/i;->c:J

    sget-object v1, Lcom/bytedance/applog/i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/applog/i;->a:Lcom/bytedance/applog/h;

    .line 5
    iget-object v2, v2, Lcom/bytedance/applog/h;->c:Landroid/app/Application;

    .line 6
    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_1
    sget-object v0, Lcom/bytedance/applog/i;->b:Lcom/bytedance/applog/a2$a;

    .line 9
    iget v0, v0, Lcom/bytedance/applog/a2$a;->a:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    sput-wide p1, Lcom/bytedance/applog/i;->c:J

    :cond_0
    return-void
.end method
