.class Lcom/tencent/open/d$d;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/d;

.field private b:Lcom/tencent/open/d$c;


# direct methods
.method public constructor <init>(Lcom/tencent/open/d;Lcom/tencent/open/d$c;Landroid/os/Looper;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/tencent/open/d$d;->a:Lcom/tencent/open/d;

    .line 393
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 394
    iput-object p2, p0, Lcom/tencent/open/d$d;->b:Lcom/tencent/open/d$c;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.PKDialog"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/d$d;->a:Lcom/tencent/open/d;

    invoke-static {v0}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/open/d$d;->a:Lcom/tencent/open/d;

    invoke-static {v0}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/tencent/open/d$d;->a:Lcom/tencent/open/d;

    invoke-static {v0}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/open/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/d$d;->a:Lcom/tencent/open/d;

    invoke-static {v0}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/open/d$d;->a:Lcom/tencent/open/d;

    invoke-static {v0}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/tencent/open/d$d;->a:Lcom/tencent/open/d;

    invoke-static {v0}, Lcom/tencent/open/d;->a(Lcom/tencent/open/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/open/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object p1, p0, Lcom/tencent/open/d$d;->b:Lcom/tencent/open/d$c;

    invoke-virtual {p1}, Lcom/tencent/open/d$c;->onCancel()V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/d$d;->b:Lcom/tencent/open/d$c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/open/d$c;->a(Lcom/tencent/open/d$c;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
