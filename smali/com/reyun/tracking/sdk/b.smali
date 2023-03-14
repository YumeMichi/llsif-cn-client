.class Lcom/reyun/tracking/sdk/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/reyun/tracking/sdk/a;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/b;->a:Lcom/reyun/tracking/sdk/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/reyun/tracking/sdk/b;->a:Lcom/reyun/tracking/sdk/a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/reyun/tracking/sdk/a;->a(Lcom/reyun/tracking/sdk/a;Landroid/os/Handler;)Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
