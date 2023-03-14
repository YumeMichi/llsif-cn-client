.class Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$000(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 143
    monitor-exit v0

    return-object v2

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)V

    .line 146
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)V

    .line 148
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$402(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;I)I

    .line 150
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
