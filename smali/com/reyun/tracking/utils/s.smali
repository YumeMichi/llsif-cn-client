.class public Lcom/reyun/tracking/utils/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private b:Lcom/reyun/tracking/utils/u;

.field private c:Lcom/reyun/tracking/utils/v;

.field private d:Landroid/content/IntentFilter;

.field private e:Lcom/reyun/tracking/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/reyun/tracking/utils/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/reyun/tracking/a/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/utils/s;->d:Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/reyun/tracking/utils/s;->e:Lcom/reyun/tracking/a/j;

    iget-object p1, p0, Lcom/reyun/tracking/utils/s;->d:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/reyun/tracking/utils/s;->d:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/reyun/tracking/utils/s;->d:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/reyun/tracking/a/j;)Lcom/reyun/tracking/utils/s;
    .locals 3

    sget-object v0, Lcom/reyun/tracking/utils/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/reyun/tracking/utils/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/reyun/tracking/utils/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/reyun/tracking/utils/s;

    invoke-direct {v2, p0}, Lcom/reyun/tracking/utils/s;-><init>(Lcom/reyun/tracking/a/j;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/reyun/tracking/utils/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/reyun/tracking/utils/s;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/reyun/tracking/utils/s;)Lcom/reyun/tracking/utils/v;
    .locals 0

    iget-object p0, p0, Lcom/reyun/tracking/utils/s;->c:Lcom/reyun/tracking/utils/v;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/s;->b:Lcom/reyun/tracking/utils/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reyun/tracking/utils/s;->b:Lcom/reyun/tracking/utils/u;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/reyun/tracking/utils/s;->b:Lcom/reyun/tracking/utils/u;

    sget-object p1, Lcom/reyun/tracking/utils/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/reyun/tracking/utils/s;->e:Lcom/reyun/tracking/a/j;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/reyun/tracking/utils/v;)V
    .locals 1

    iput-object p2, p0, Lcom/reyun/tracking/utils/s;->c:Lcom/reyun/tracking/utils/v;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/reyun/tracking/utils/s;->b:Lcom/reyun/tracking/utils/u;

    if-nez p2, :cond_0

    new-instance p2, Lcom/reyun/tracking/utils/u;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/reyun/tracking/utils/u;-><init>(Lcom/reyun/tracking/utils/s;Lcom/reyun/tracking/utils/t;)V

    iput-object p2, p0, Lcom/reyun/tracking/utils/s;->b:Lcom/reyun/tracking/utils/u;

    iget-object p2, p0, Lcom/reyun/tracking/utils/s;->b:Lcom/reyun/tracking/utils/u;

    iget-object v0, p0, Lcom/reyun/tracking/utils/s;->d:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
