.class Lcom/geetest/sdk/ah$b;
.super Ljava/lang/Object;
.source "GeeLoggerThread.java"

# interfaces
.implements Lcom/geetest/sdk/ao$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/ah;->a(Lcom/geetest/sdk/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/ah;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/ah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/ah$b;->a:Lcom/geetest/sdk/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/ah$b;->a:Lcom/geetest/sdk/ah;

    invoke-static {v0}, Lcom/geetest/sdk/ah;->a(Lcom/geetest/sdk/ah;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geetest/sdk/ah$b;->a:Lcom/geetest/sdk/ah;

    invoke-static {v1, p1}, Lcom/geetest/sdk/ah;->a(Lcom/geetest/sdk/ah;I)I

    const/16 v1, 0x2712

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/geetest/sdk/ah$b;->a:Lcom/geetest/sdk/ah;

    invoke-static {p1}, Lcom/geetest/sdk/ah;->c(Lcom/geetest/sdk/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    iget-object v1, p0, Lcom/geetest/sdk/ah$b;->a:Lcom/geetest/sdk/ah;

    invoke-static {v1}, Lcom/geetest/sdk/ah;->b(Lcom/geetest/sdk/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/ah$b;->a:Lcom/geetest/sdk/ah;

    invoke-static {p1}, Lcom/geetest/sdk/ah;->b(Lcom/geetest/sdk/ah;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 6
    iget-object p1, p0, Lcom/geetest/sdk/ah$b;->a:Lcom/geetest/sdk/ah;

    invoke-virtual {p1}, Lcom/geetest/sdk/ah;->a()V

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
