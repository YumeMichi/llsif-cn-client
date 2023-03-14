.class public Lcom/bytedance/applog/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final f:Landroid/os/Handler;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lcom/bytedance/applog/profile/UserProfileCallback;

.field public e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/applog/q0;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/q0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/applog/q0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/applog/q0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/applog/q0;->d:Lcom/bytedance/applog/profile/UserProfileCallback;

    iput-object p5, p0, Lcom/bytedance/applog/q0;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/q0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/a2;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lcom/bytedance/applog/q0;->f:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/applog/o0;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/applog/o0;-><init>(Lcom/bytedance/applog/q0;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "X-APIKEY"

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/applog/q0;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/applog/q0;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/applog/q0;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/bytedance/applog/network/INetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;)Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/bytedance/applog/q0;->f:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/applog/p0;

    invoke-direct {v1, p0}, Lcom/bytedance/applog/p0;-><init>(Lcom/bytedance/applog/q0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    .line 5
    sget-object v1, Lcom/bytedance/applog/q0;->f:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/applog/o0;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/applog/o0;-><init>(Lcom/bytedance/applog/q0;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
